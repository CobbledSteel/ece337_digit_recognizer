module networkController
(
	input wire clk,
	input wire n_rst,
	input wire write_en,
	input [3:0] sigmoidData_out,
	input [3:0] ALUOutput,
	input [7:0] pixel_data1, pixel_data2,
	input [15:0] flashData_out,
	
	output reg data_ready,		// spi i/o
	output reg shift_network,	// pixel data regs
	output reg network_done,	// digit detect; spi output
	output reg network_calc,
	output reg digit_done,
	output wire flash_ready,	// flash mem
	output reg [15:0] flash_address,

	output reg [3:0] sigmoidData_in, // sigmoid registers
	output reg [4:0] sigmoid_address,
	output reg sigmoid_write_en,
	
	output reg [3:0] weight1, weight2, weight3, weight4,	// sigmoid alu
	output reg [3:0] input1, input2, input3, input4,
	output reg [3:0] bias,
	output reg clear, accumulate
	
);

	reg [5:0] input_rollover_in;
	reg [3:0] neuron_rollover_in;
	reg input_en;
	reg weight_en;
	reg addr_en;
	reg bias_en;
	
	reg sig_write;
	reg ready;

	wire [3:0] flash_counter;
	wire [8:0] flash_address_low;
	assign flash_address = {7'b0,flash_address_low};


	wire neuron_rollover;
	wire input_rollover;
	reg [3:0] nxt_weight1, nxt_weight2, nxt_weight3, nxt_weight4;
	reg [3:0] nxt_bias;
	reg [3:0] nxt_input1, nxt_input2, nxt_input3, nxt_input4;

	reg [3:0] neuronCountOut;
	reg [5:0] inputCountOut;
	reg flashClear;
	reg inputClear;
	reg neuronClear;
	reg inc_input;
	reg inc_neuron;
	reg inc_detect;

	reg shift_nxt;
	reg [4:0] sigmoid_address_nxt;
	reg network_done_nxt;
	reg network_calc_nxt;
	reg digit_done_nxt;
	reg sigmoid_write_en_nxt;
	reg clear_nxt;
	reg accumulate_nxt;
	reg addr_en_nxt;

	wire [7:0] detect_count;

	assign sigmoidData_in = ALUOutput;
	assign sigmoid_write_en_nxt = sig_write;
	assign flash_ready = ready;
	typedef enum bit [4:0] {IDLE, PIXEL_WAIT, LAYER1, LAYER2, ALERT_FINISH, WAIT_DIGIT,
				REQ_BIAS, WAIT_BIAS, REQ_WEIGHT, GET_BIAS, WAIT_WEIGHT, CHECK_DONE, LOAD_DATA, 
				WAIT1, WAIT2,WAIT3, ACCU, SHIFT1, SHIFT2, INC_INPUT, 
				CHECK_INPUT, INC_NEURON, LAYER_DONE, LOAD_NEURON1, 
				LOAD_NEURON2, LOAD_NEURON3, LOAD_NEURON4} stateType;
	stateType topState, nxt_topState;
	stateType layer1State, nxt_layer1State;
	stateType layer2State, nxt_layer2State;
	

	flex_counter #(.NUM_CNT_BITS(6)) inputCounter(
		.clk(clk), .n_rst(n_rst), 
		.clear(inputClear), 
		.count_enable(inc_input), 
		.rollover_val(input_rollover_in), 
		.count_out(inputCountOut), 
		.rollover_flag(input_rollover));

	flex_counter #(.NUM_CNT_BITS(4)) flashCounter(
		.clk(clk), .n_rst(n_rst), 
		.clear(flashClear), 
		.count_enable(1'b1), 
		.rollover_val(4'b1011), 
		.count_out(flash_counter), 
		.rollover_flag());

	flex_counter #(.NUM_CNT_BITS(9)) flashAddressCounter(
		.clk(clk), .n_rst(n_rst), 
		.clear(topState == IDLE), 
		.count_enable(addr_en), 
		.rollover_val('1), 
		.count_out(flash_address_low), 
		.rollover_flag());

	flex_counter #(.NUM_CNT_BITS(4)) neuronCounter(
		.clk(clk), .n_rst(n_rst), 
		.clear(neuronClear), 
		.count_enable(inc_neuron), 
		.rollover_val(neuron_rollover_in), 
		.count_out(neuronCountOut), 
		.rollover_flag(neuron_rollover));

	flex_counter #(.NUM_CNT_BITS(8)) detectCounter(
		.clk(clk), .n_rst(n_rst), 
		.clear(), 
		.count_enable(inc_detect), 
		.rollover_val(8'd255), 
		.count_out(detect_count), 
		.rollover_flag(digit_done_nxt));

	always_ff @(posedge clk, negedge n_rst)
	begin : output_registers
		if (n_rst == 0) begin
			shift_network = 0;	
			sigmoid_address = 0;
			network_done = 0;
			network_calc = 0;
			digit_done = 0;
			sigmoid_write_en = 0;
			clear = 0;
			accumulate = 0;
			addr_en = 0;
		end
		else begin
			shift_network = shift_nxt;
			sigmoid_address = sigmoid_address_nxt;
			network_done = network_done_nxt;
			network_calc = network_calc_nxt;
			digit_done = digit_done_nxt;
			sigmoid_write_en = sigmoid_write_en_nxt;
			clear = clear_nxt;
			accumulate = accumulate_nxt;
			addr_en = addr_en_nxt;
		end
	end


	always_ff@(posedge clk, negedge n_rst)
	begin: weightRegisters
		if(n_rst == 0)	begin
			weight1 <= '0;
			weight2 <= '0;
			weight3 <= '0;
			weight4 <= '0;
		end
		else begin
			weight1 <= nxt_weight1;
			weight2 <= nxt_weight2;
			weight3 <= nxt_weight3;
			weight4 <= nxt_weight4;
		end
	end

	always_comb
	begin: nxt_weight_logic
		nxt_weight1 = weight1;
		nxt_weight2 = weight2;
		nxt_weight3 = weight3;
		nxt_weight4 = weight4;
	
		if(weight_en == 1) begin
			nxt_weight4 = flashData_out[3:0];
			nxt_weight3 = flashData_out[7:4];
			nxt_weight2 = flashData_out[11:8];
			nxt_weight1 = flashData_out[15:12];
		end
	end

	always_ff@(posedge clk, negedge n_rst)
	begin: inputRegisters
		if(n_rst == 0) begin
			input1 <= '0;
			input2 <= '0;
			input3 <= '0;
			input4 <= '0;
		end
		else begin
		input1 <= nxt_input1;
		input2 <= nxt_input2;
		input3 <= nxt_input3;
		input4 <= nxt_input4;
		end
	end

	always_comb
	begin: nxt_input_logic
		nxt_input1 = input1;
		nxt_input2 = input2;
		nxt_input3 = input3;
		nxt_input4 = input4;
	
		if(input_en == 1) begin
			if(topState == LAYER1) begin
				nxt_input3 = pixel_data1[3:0];
				nxt_input4 = pixel_data1[7:4];
				nxt_input1 = pixel_data2[3:0];
				nxt_input2 = pixel_data2[7:4];
			end
			else begin
				if(layer2State == LOAD_NEURON1)
					nxt_input1 = sigmoidData_out;
				else if(layer2State == LOAD_NEURON2)
					nxt_input2 = sigmoidData_out;
				else if(layer2State == LOAD_NEURON3)
					nxt_input3 = sigmoidData_out;
				else if(layer2State == LOAD_NEURON4)
					nxt_input4 = sigmoidData_out;
				end
			end
		
	end

	always_ff@(posedge clk, negedge n_rst)
	begin: biasregister
		if(n_rst == 0) 	bias <= '0;
		else 		bias <= nxt_bias;
	end

	always_comb
	begin: nxt_bias_logic
		nxt_bias = bias;
		if(bias_en == 1)
			nxt_bias = flashData_out[3:0];
	end

	always_ff@(posedge clk, negedge n_rst)
	begin: stateregister
		if(n_rst == 0) begin
			topState <= IDLE;
			layer1State <= IDLE;
			layer2State <= IDLE;
		end
		else begin
			topState <= nxt_topState;
			layer1State <= nxt_layer1State;
			layer2State <= nxt_layer2State;
		end
	end

	always_comb
	begin: next_topState_logic

		nxt_topState = topState;
		case(topState)
			IDLE: begin
				if(write_en == 1) 
				nxt_topState = PIXEL_WAIT;
				end
			PIXEL_WAIT: begin
				if(write_en == 0)
				nxt_topState = LAYER1;
				end
			LAYER1: begin
				if(layer1State == LAYER_DONE)
				nxt_topState = LAYER2;
				end
			LAYER2: begin
				if (layer2State == LAYER_DONE)
				nxt_topState = ALERT_FINISH;
				end
			ALERT_FINISH: nxt_topState = WAIT_DIGIT;
			WAIT_DIGIT: begin
				if (digit_done) nxt_topState = IDLE;
				end
		endcase
	end

	always_comb
	begin: next_layer1State_logic

		nxt_layer1State = layer1State;
		case(layer1State)
			IDLE: begin
				if(topState == LAYER1)
				nxt_layer1State = REQ_BIAS;
				end
			REQ_BIAS: begin
				nxt_layer1State = WAIT_BIAS;
				end
			WAIT_BIAS: begin
				if(flash_counter == 11)
				nxt_layer1State = REQ_WEIGHT;
				end
			REQ_WEIGHT: begin
				nxt_layer1State = GET_BIAS;
				end
			GET_BIAS: begin
				nxt_layer1State = WAIT_WEIGHT;
				end
			WAIT_WEIGHT: begin
				if(flash_counter == 11)
				nxt_layer1State = CHECK_DONE;
				end
			CHECK_DONE: begin
				if(neuron_rollover == 0)
				nxt_layer1State = LOAD_DATA;
				else
				nxt_layer1State = LAYER_DONE;
				end

			LOAD_DATA: nxt_layer1State = WAIT1;
			WAIT1: nxt_layer1State = WAIT2;
			WAIT2: nxt_layer1State = WAIT3;
			WAIT3: nxt_layer1State = ACCU;
			ACCU: nxt_layer1State = SHIFT1;
			SHIFT1: nxt_layer1State = SHIFT2;
			SHIFT2: nxt_layer1State = INC_INPUT;
			INC_INPUT: nxt_layer1State = CHECK_INPUT;

			CHECK_INPUT: begin
				if(input_rollover == 1 && flash_counter == 10)
				nxt_layer1State = INC_NEURON;
				else if(flash_counter == 11)
				nxt_layer1State = CHECK_DONE;
				end
			INC_NEURON: nxt_layer1State = REQ_WEIGHT;
			LAYER_DONE: nxt_layer1State = IDLE;
		endcase
	end

	always_comb
	begin: next_layer2State_logic

		nxt_layer2State = layer2State;
		case(layer2State)
			IDLE: begin
				if(topState == LAYER2)
				nxt_layer2State = LOAD_NEURON1;
				end
			REQ_BIAS: begin
				nxt_layer2State = WAIT_BIAS;
				end
			WAIT_BIAS: begin
				if(flash_counter == 11)
				nxt_layer2State = REQ_WEIGHT;
				end
			REQ_WEIGHT: begin
				nxt_layer2State = GET_BIAS;
				end
			GET_BIAS: begin
				nxt_layer2State = WAIT_WEIGHT;
				end
			WAIT_WEIGHT: begin
				if(flash_counter == 11)
				nxt_layer2State = CHECK_DONE;
				end
			CHECK_DONE: begin
				if(neuron_rollover == 0)
				nxt_layer2State = LOAD_NEURON1;
				else
				nxt_layer2State = LAYER_DONE;
				end

			LOAD_NEURON1: nxt_layer2State = LOAD_NEURON2;
			LOAD_NEURON2: nxt_layer2State = LOAD_NEURON3;
			LOAD_NEURON3: nxt_layer2State = LOAD_NEURON4;
			LOAD_NEURON4: nxt_layer2State = WAIT1;
			WAIT1: nxt_layer2State = WAIT2;
			WAIT2: nxt_layer2State = WAIT3;
			WAIT3: nxt_layer2State = ACCU;
			ACCU: nxt_layer2State = INC_INPUT;
			INC_INPUT: nxt_layer2State = CHECK_INPUT;

			CHECK_INPUT: begin
				if(input_rollover == 1 && flash_counter == 10)
				nxt_layer2State = INC_NEURON;
				else if(flash_counter == 11)
				nxt_layer2State = CHECK_DONE;
				end
			INC_NEURON: nxt_layer2State = REQ_WEIGHT; 
			LAYER_DONE: nxt_layer2State = IDLE;
		endcase
	end


	always_comb
	begin: TOP_OUT_LOGIC
		input_rollover_in = 0; neuron_rollover_in = 0; network_done_nxt = 0; network_calc_nxt = 0; data_ready = 0; inc_detect = 0;
		
		inc_detect = topState == WAIT_DIGIT;
		case(topState)
			IDLE: 		begin 	input_rollover_in = 0;  neuron_rollover_in = 0;  network_done_nxt = 0; network_calc_nxt = 0; data_ready = 1; 	end	
			PIXEL_WAIT:	begin	input_rollover_in = 0;  neuron_rollover_in = 0;  network_done_nxt = 0; network_calc_nxt = 0; data_ready = 0;	end
			LAYER1: 	begin	input_rollover_in = 36; neuron_rollover_in = 8;  network_done_nxt = 0; network_calc_nxt = 1; data_ready = 0; 	end
			LAYER2: 	begin	input_rollover_in = 2;	neuron_rollover_in = 10; network_done_nxt = 0; network_calc_nxt = 1; data_ready = 0;	end	
			ALERT_FINISH:	begin	input_rollover_in = 0; 	neuron_rollover_in = 0;  network_done_nxt = 1; network_calc_nxt = 0; data_ready = 0;	end			
			WAIT_DIGIT:	begin	input_rollover_in = 0; 	neuron_rollover_in = 0;  network_done_nxt = 0; network_calc_nxt = 0; data_ready = 0;	end			
		endcase
	end

	always_comb
	begin: LAYER_OUT_LOGIC
		input_en = 0; weight_en = 0; bias_en = 0;shift_nxt = 0;sig_write = 0;ready = 0;accumulate_nxt = 0;clear_nxt = 0;sigmoid_address_nxt = 0;flashClear = 1;	
		inc_input = 0;	inc_neuron = 0; addr_en_nxt = 0; neuronClear = 0; inputClear = 0;

	if(topState == LAYER1) 	begin
		input_en = 0;weight_en = 0;bias_en = 0;	shift_nxt = 0;sig_write = 0;ready = 0;accumulate_nxt = 0;clear_nxt = 0;sigmoid_address_nxt = 0;
		inc_input   = layer1State == INC_INPUT || layer1State == INC_NEURON;
		inc_neuron  = layer1State == INC_NEURON;
		bias_en     = layer1State == GET_BIAS;
		weight_en   = layer1State == LOAD_DATA;
		addr_en_nxt     = (layer1State == REQ_BIAS) || (layer1State == REQ_WEIGHT) || (layer1State == CHECK_DONE);
		clear_nxt       = layer1State == REQ_WEIGHT;
		accumulate_nxt  = layer1State == ACCU;
		sig_write   = layer1State == CHECK_INPUT;
		inputClear  = layer1State == LAYER_DONE;
		neuronClear = layer1State == LAYER_DONE;
		case(layer1State)
			REQ_BIAS:    begin input_en = 0; shift_nxt = 0; ready = 1; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			WAIT_BIAS:   begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			REQ_WEIGHT:  begin input_en = 0; shift_nxt = 0; ready = 1; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			GET_BIAS:    begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			WAIT_WEIGHT: begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			CHECK_DONE:  begin input_en = 0; shift_nxt = 0; ready = 1; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			LOAD_DATA:   begin input_en = 1; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			WAIT1:	     begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			WAIT2:	     begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end	
			WAIT3:	     begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end	
			ACCU:	     begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			SHIFT1:	     begin input_en = 0; shift_nxt = 1; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			SHIFT2:	     begin input_en = 0; shift_nxt = 1; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			INC_INPUT:   begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			CHECK_INPUT: begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			INC_NEURON:  begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
			LAYER_DONE:  begin input_en = 0; shift_nxt = 0; ready = 0; sigmoid_address_nxt = neuronCountOut; flashClear = 0; end
		endcase
		end

	if(topState == LAYER2) begin
		input_en = 0; weight_en = 0; bias_en = 0; sig_write = 0;ready = 0;accumulate_nxt = 0;clear_nxt = 0;sigmoid_address_nxt = 0; flashClear = 0; addr_en_nxt = 0; neuronClear = 0; inputClear = 0;
		inc_input   = layer2State == INC_INPUT || layer2State == INC_NEURON;
		inc_neuron  = layer2State == INC_NEURON;
		bias_en     = layer2State == GET_BIAS;
		weight_en   = layer2State == LOAD_NEURON1;
		addr_en_nxt     = (layer2State == REQ_BIAS) || (layer2State == REQ_WEIGHT) || (layer2State == CHECK_DONE);
		clear_nxt       = layer2State == REQ_WEIGHT;
		accumulate_nxt  = layer2State == ACCU;
		sig_write   = layer2State == CHECK_INPUT;
		inputClear  = layer2State == LAYER_DONE;
		neuronClear = layer2State == LAYER_DONE;
		case(layer2State)
			REQ_BIAS:   	begin 	input_en = 0; ready = 1; 	end
			WAIT_BIAS:   	begin 	input_en = 0; ready = 0; 	end
			REQ_WEIGHT: 	begin 	input_en = 0; ready = 1; 	end
			GET_BIAS:	begin 	input_en = 0; ready = 0;	end
			WAIT_WEIGHT: 	begin	input_en = 0; ready = 0;	end
			CHECK_DONE:  	begin 	input_en = 0; ready = 1;  sigmoid_address_nxt = 0 + (inputCountOut) * 4;        end
			LOAD_NEURON1:	begin 	input_en = 1; ready = 0;  sigmoid_address_nxt = 1 + (inputCountOut) * 4;	end
			LOAD_NEURON2:	begin 	input_en = 1; ready = 0;  sigmoid_address_nxt = 2 + (inputCountOut) * 4;	end
			LOAD_NEURON3:	begin	input_en = 1; ready = 0;  sigmoid_address_nxt = 3 + (inputCountOut) * 4;	end
			LOAD_NEURON4:	begin	input_en = 1; ready = 0;  	end
			WAIT1:		begin	input_en = 0; ready = 0; 	end
			WAIT2:		begin	input_en = 0; ready = 0; 	end
			WAIT3:		begin	input_en = 0; ready = 0; 	end
			ACCU:		begin	input_en = 0; ready = 0; 	end
			INC_INPUT:	begin	input_en = 0; ready = 0; 	end
			CHECK_INPUT:	begin	input_en = 0; ready = 0; sigmoid_address_nxt = 8 + neuronCountOut;      end
			INC_NEURON:	begin	input_en = 0; ready = 0; sigmoid_address_nxt = 8 + neuronCountOut;	end
			LAYER_DONE:	begin	input_en = 0; ready = 0; 	end
		endcase
		end
	end	

endmodule
