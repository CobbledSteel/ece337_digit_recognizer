module networkController
(
	input wire clk,
	input wire n_rst,
	input wire write_en,
	input [7:0] pixel_data1,
	input [7:0] pixel_data2,
	input [15:0] flashData_out,
	input [3:0] sigmoidData_out,
	input [3:0] ALUOutput,
	output reg data_ready,
	output wire shift_network,
	output wire flash_ready,
	output [15:0] flash_address,
	output reg network_done,
	output [3:0] sigmoidData_in,
	output [4:0] sigmoid_address,
	output wire sigmoid_write_en,
	output reg [3:0] weight1,
	output reg [3:0] weight2,
	output reg [3:0] weight3,
	output reg [3:0] weight4,
	output reg [3:0] bias,
	output reg [3:0] input1,
	output reg [3:0] input2,
	output reg [3:0] input3,
	output reg [3:0] input4,
	output reg clear,
	output reg accumulate
);
reg [5:0] input_rollover_in;
reg [3:0] neuron_rollover_in;
reg input_en;
reg weight_en;
reg bias_en;
reg shift;
assign shift_network = shift;
reg sig_write;
assign sigmoidData_in = ALUOutput;
assign sigmoid_write_en = sig_write;
reg ready;
assign flash_ready = ready;
wire [3:0] flash_counter;
wire neuron_rollover;
wire input_rollover;
reg [3:0] nxt_weight1;
reg [3:0] nxt_weight2;
reg [3:0] nxt_weight3;
reg [3:0] nxt_weight4;
reg [3:0] nxt_bias;
reg [3:0] nxt_input1;
reg [3:0] nxt_input2;
reg [3:0] nxt_input3;
reg [3:0] nxt_input4;

typedef enum bit [4:0] {IDLE, PIXEL_WAIT, LAYER1, LAYER2, ALERT_FINISH, LOAD_BIAS, LOAD_WEIGHT, CHECK_DONE, LOAD_DATA, WAIT1, ACCU, SHIFT1, SHIFT2, INC_INPUT, CHECK_INPUT, INC_NEURON, LAYER_DONE, LOAD_NEURON1, LOAD_NEURON2, LOAD_NEURON3, LOAD_NEURON4} stateType;
stateType topState;
stateType nxt_topState;
stateType layer1State;
stateType nxt_layer1State;
stateType layer2State;
stateType nxt_layer2State;

flex_counter #(.NUM_CNT_BITS(6)) inputCounter(.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(inc_input), .rollover_val(input_rollover_in), .count_out(), .rollover_flag(input_rollover));

flex_counter #(.NUM_CNT_BITS(4)) flashCounter(.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(1'b1), .rollover_val(12), .count_out(flash_counter), .rollover_flag());

flex_counter #(.NUM_CNT_BITS(8)) flashAddressCounter(.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(bias_en || weight_en), .rollover_val(256), .count_out(), .rollover_flag());

flex_counter #(.NUM_CNT_BITS(4)) neuronCounter(.clk(clk), .n_rst(n_rst), .clear(1'b0), .count_enable(inc_neuron), .rollover_val(neuron_rollover_in), .count_out(sigmoid_Address), .rollover_flag(neuron_rollover));

always_ff@(posedge clk, negedge n_rst)
begin: weightRegisters
	if(n_rst == 0)
	begin
		weight1 <= '0;
		weight2 <= '0;
		weight3 <= '0;
		weight4 <= '0;
	end
	else
	begin
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
	
	if(weight_en == 1)
		begin
		nxt_weight1 = flashData_out[3:0];
		nxt_weight2 = flashData_out[7:4];
		nxt_weight3 = flashData_out[11:8];
		nxt_weight4 = flashData_out[15:12];
		end
end

always_ff@(posedge clk, negedge n_rst)
begin: inputRegisters
	if(n_rst == 0)
	begin
		input1 <= '0;
		input2 <= '0;
		input3 <= '0;
		input4 <= '0;
	end
	else
	begin
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
	
	if(input_en == 1)
		begin
		if(topState == LAYER1)
			begin
			nxt_input1 = pixel_data1[3:0];
			nxt_input2 = pixel_data1[7:4];
			nxt_input3 = pixel_data2[3:0];
			nxt_input4 = pixel_data2[7:4];
			end
		else
			begin
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
	if(n_rst == 0)
		bias <= '0;
	else
		bias <= nxt_bias;
end

always_comb
begin: nxt_bias_logic
	nxt_bias = bias;
	if(bias_en == 1)
		nxt_bias = flashData_out[3:0];
end

always_ff@(posedge clk, negedge n_rst)
begin: stateregister
	if(n_rst == 0)
	begin
		topState <= IDLE;
		layer1State <= IDLE;
		layer2State <= IDLE;
	end
	else
	begin
		topState <= nxt_topState;
		layer1State <= nxt_layer1State;
		layer2State <= nxt_layer2State;
	end
end

always_comb
begin: next_topState_logic

	nxt_topState = topState;
	case(topState)
		IDLE:
			begin
			if(write_en == 1)
				nxt_topState = PIXEL_WAIT;
			end
		PIXEL_WAIT:
			begin
			if(write_en == 0)
				nxt_topState = LAYER1;
			end
		LAYER1:
			begin
			if(layer1State == LAYER_DONE)
				nxt_topState = LAYER2;
			end
		LAYER2:
			begin
			if (layer2State == LAYER_DONE)
				nxt_topState = ALERT_FINISH;
			end
		ALERT_FINISH: nxt_topState = IDLE;

		endcase

end

always_comb
begin: next_layer1State_logic

	nxt_layer1State = layer1State;
	case(layer1State)
		IDLE:
			begin
			if(topState == LAYER1)
				nxt_layer1State = LOAD_BIAS;
			end
		LOAD_BIAS:
			begin
			if(flash_counter == 11)
				nxt_layer1State = LOAD_WEIGHT;
			end
		LOAD_WEIGHT:
			begin
			if(flash_counter == 11)
				nxt_layer1State = CHECK_DONE;
			end
		CHECK_DONE:
			begin
			if(neuron_rollover == 0)
				nxt_layer1State = LOAD_DATA;
			else
				nxt_layer1State = LAYER_DONE;
			end
		LOAD_DATA: nxt_layer1State = WAIT1;
		WAIT1: nxt_layer1State = ACCU;
		ACCU: nxt_layer1State = SHIFT1;
		SHIFT1: nxt_layer1State = SHIFT2;
		SHIFT2: nxt_layer1State = INC_INPUT;
		INC_INPUT: nxt_layer1State = CHECK_INPUT;
		CHECK_INPUT:
			begin
			if(input_rollover == 1)
				nxt_layer1State = INC_NEURON;
			else if(flash_counter == 10)
				nxt_layer1State = CHECK_DONE;
			end
		INC_NEURON: nxt_layer1State = LOAD_BIAS;
		LAYER_DONE: nxt_layer1State = IDLE;

		endcase

end

always_comb
begin: next_layer2State_logic

	nxt_layer2State = layer2State;
	case(layer2State)
		IDLE:
			begin
			if(topState == LAYER2)
				nxt_layer2State = LOAD_BIAS;
			end
		LOAD_BIAS:
			begin
			if(flash_counter == 11)
				nxt_layer2State = LOAD_WEIGHT;
			end
		LOAD_WEIGHT:
			begin
			if(flash_counter == 11)
				nxt_layer2State = CHECK_DONE;
			end
		CHECK_DONE:
			begin
			if(neuron_rollover == 0)
				nxt_layer2State = LOAD_NEURON1;
			else
				nxt_layer2State = LAYER_DONE;
			end
		LOAD_NEURON1: nxt_layer2State = LOAD_NEURON2;
		LOAD_NEURON2: nxt_layer2State = LOAD_NEURON3;
		LOAD_NEURON3: nxt_layer2State = LOAD_NEURON4;
		LOAD_NEURON4: nxt_layer2State = WAIT1;
		WAIT1: nxt_layer2State = ACCU;
		ACCU: nxt_layer2State = INC_INPUT;
		INC_INPUT: nxt_layer2State = CHECK_INPUT;
		CHECK_INPUT:
			begin
			if(input_rollover == 1)
				nxt_layer2State = INC_NEURON;
			else if(flash_counter == 10)
				nxt_layer2State = CHECK_DONE;
			end
		INC_NEURON: nxt_layer2State = LOAD_BIAS;
		LAYER_DONE: nxt_layer2State = IDLE;

		endcase

end


always_comb
begin: TOP_OUT_LOGIC
	input_rollover_in = 0;
	neuron_rollover_in = 0;
	network_done = 0;
	data_ready = 0;
	case(topState)
		IDLE:
			begin
			input_rollover_in = 0;
			neuron_rollover_in = 0;
			network_done = 0;
			data_ready = 1;
			end
		
		PIXEL_WAIT:
			begin
			input_rollover_in = 0;
			neuron_rollover_in = 0;
			network_done = 0;
			data_ready = 0;
			end
	
		LAYER1:
			begin
			input_rollover_in = 36;
			neuron_rollover_in = 8;
			network_done = 0;
			data_ready = 0;
			end
		LAYER2:
			begin
			input_rollover_in = 2;	
			neuron_rollover_in = 10;
			network_done = 0;
			data_ready = 0;
			end
	
		ALERT_FINISH:
			begin
			input_rollover_in = 0;
			neuron_rollover_in = 0;
			network_done = 1;
			data_ready = 0;
			end			
		endcase

end

always_comb
begin: LAYER_OUT_LOGIC

	if(topState == LAYER1)
		begin
		input_en = 0;
		weight_en = 0;
		bias_en = 0;
		shift = 0;
		sig_write = 0;
		ready = 0;
		accumulate = 0;
		clear = 0;
	case(layer1State)
		LOAD_BIAS:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 1;
			shift = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 1;
			end
		LOAD_WEIGHT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 1;
			shift = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		CHECK_DONE:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		LOAD_DATA:
			begin
			input_en = 1;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		WAIT1:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		ACCU:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 1;
			clear = 0;
			end
		SHIFT1:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 1;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		SHIFT2:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 1;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		INC_INPUT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		CHECK_INPUT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		INC_NEURON:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 1;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		LAYER_DONE:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		
		endcase
	end

	if(topState == LAYER2)
		begin
		input_en = 0;
		weight_en = 0;
		bias_en = 0;
		sig_write = 0;
		ready = 0;
		accumulate = 0;
		clear = 0;
	case(layer2State)
		LOAD_BIAS:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 1;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 1;
			end
		LOAD_WEIGHT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 1;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		CHECK_DONE:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		LOAD_NEURON1:
			begin
			input_en = 1;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		LOAD_NEURON2:
			begin
			input_en = 1;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		LOAD_NEURON3:
			begin
			input_en = 1;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		LOAD_NEURON4:
			begin
			input_en = 1;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 1;
			accumulate = 0;
			clear = 0;
			end
		WAIT1:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		ACCU:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 1;
			clear = 0;
			end
		SHIFT1:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			shift = 1;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		INC_INPUT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		CHECK_INPUT:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		INC_NEURON:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 1;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		LAYER_DONE:
			begin
			input_en = 0;
			weight_en = 0;
			bias_en = 0;
			sig_write = 0;
			ready = 0;
			accumulate = 0;
			clear = 0;
			end
		
		endcase
	end
end	

endmodule

