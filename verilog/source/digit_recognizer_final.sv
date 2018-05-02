// $Id: $
// File name:   digit_recognizer.sv
// Created:     4/19/2018
// Author:      Group
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Top level file digit recognizer

module digit_recognizer_final (
	input wire clk,
	input wire n_rst,
	input wire SCK, SS, MOSI,
	input wire [15:0] data,
	output reg MISO,
	output reg ce, oe, we,
	output reg [15:0] address
);

	wire [3:0] weight1, weight2, weight3, weight4;	// sigmoid alu
	wire [3:0] input1, input2, input3, input4;	// sigmoid alu
	wire accumulate, clear;				// sigmoid alu
	wire [3:0] bias, alu_output; 			// sigmoid alu

	wire [7:0] pixel_data1, pixel_data2;		// pixel data regs
	wire shift_network;				// pixel data regs

	wire flash_ready;				// fmc
	wire [15:0] flash_address, flash_data;		// fmc
	wire sigmoid_write_en;				// sigmoid regs
	wire [4:0] sigmoid_address;			// sigmoid regs
	wire [3:0] sigmoidData_in, sigmoidData_out; 	// sigmoid regs
	
	wire data_ready, write_en;			// spi input
	wire [7:0] SPI_in;				// spi input
	wire shift_SPI, calculate_cost;			// spi input
	wire sig_edge;
	wire [0:9] expected_label;			// spi input
	
	wire calculation_complete;			// cost calculator
	wire [7:0] cost_output;				// cost calculator	

	wire network_done;				// digit decode; spi output
	wire network_calc;
	wire digit_done;
	wire [0:9][3:0] digit_weights;			// digit decode; sigmoid regs; cost calculator
	wire [3:0] detected_digit;			// digit decode
	
	networkController	top_network_controller (
		.clk(clk), .n_rst(n_rst), 
		.write_en(write_en),
		.data_ready(data_ready),  

		.pixel_data1(pixel_data1), .pixel_data2(pixel_data2),	// pixel data regs
		.shift_network(shift_network),

      		.flash_ready(flash_ready),		// fmc
        	.flash_address(flash_address),
		.flashData_out(flash_data),

       		.network_done(network_done),		// detected digit
		.digit_done(digit_done),
       		.network_calc(network_calc),		// detected digit
        	.sigmoidData_in(sigmoidData_in),	// sigmoid registers
		.sigmoidData_out(sigmoidData_out),
        	.sigmoid_address(sigmoid_address),
        	.sigmoid_write_en(sigmoid_write_en),
		
		.ALUOutput(alu_output),			// sigmoid alu
        	.weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(weight4),
		.input1(input1), .input2(input2), .input3(input3), .input4(input4),
		.bias(bias),
		.accumulate(accumulate),
		.clear(clear)
	);
	
	SPI_input_controller 	top_spi_input (		
		.clk(clk), .n_rst(n_rst), 
		.MOSI(MOSI), .SCK(SCK), .SS(SS),
		.data_ready(data_ready),
		.shift_SPI(shift_SPI),	// output
		.SPI_in(SPI_in),
		.write_en(write_en),
		.calculate_cost(calculate_cost),
		.expected_label(expected_label),
		.sig_edge(sig_edge)
	);
	
	SPI_output_controller 	top_spi_output (
		.clk(clk), .n_rst(n_rst), 
		.shift_SPI(shift_SPI), 
		.SPI_in(SPI_in),
		.SCK(SCK), .SS(SS),
		.network_done(digit_done),
		.data_ready(data_ready),
		.cost_ready(calculation_complete),
		.cost_output(cost_output),
		.detected_digit(detected_digit),
		.sig_edge(sig_edge),
		.MISO(MISO)	// output
	);
	
	pixelData 	top_pixel_data (
		.clk(clk),
		.shift_SPI(shift_SPI),
		.shift_network(shift_network),
		.network_calc(network_calc),
		.write_en(write_en),
		.spi_in(SPI_in),
		.pixel_data_1(pixel_data1), .pixel_data_2(pixel_data2)
	);
	
	sigmoidRegisters	top_sigmoid_registers (
		.clk(clk),
		.write_en(sigmoid_write_en),
		.data_in(sigmoidData_in),
		.address(sigmoid_address),
		.data_out(sigmoidData_out),
		.digit_weights(digit_weights)
	);
	
	fmc 	top_fmc(
		.clk(clk), .n_rst(n_rst), 
		.ready(flash_ready), 
		.address(flash_address), 
		.data(data), 
		.data_out(flash_data), //output
		.address_in(address),
		.ce(ce), .oe(oe), .we(we) 
	);

	sigmoid_ALU 	top_sigmoid_ALU (
		.clk(clk), 
		.weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(weight4),
		.input1(input1), .input2(input2), .input3(input3), .input4(input4),
		.bias(bias),
		.accumulate(accumulate),
		.clear(clear),
		.out(alu_output), // output
		.accum_out() // dummy
	);
	
	cost_calculator	top_cost_calculator (
		.clk(clk), .n_rst(n_rst), 
		.cost_en(calculate_cost),
		.expected_label(expected_label),
		.digit_weights(digit_weights),
		.calculation_complete(calculation_complete), // output
		.cost_output(cost_output)
	);
	
	digit_decode	top_digit_decode (
		.clk(clk), .n_rst(n_rst), 
		.network_done(network_done),
		.digit_weights(digit_weights),
		.detected_digit(detected_digit)// output
	);
endmodule 
// $Id: $
// File name:   abs_subtractor_4bit.sv
// Created:     4/20/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Takes the magnitude of the difference of two input signals

module abs_subtractor_4bit
(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] mag_diff
);

reg gt;
reg lt;
reg eq;
reg [3:0] mag;

comparator MAG_COMPARATOR (.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

always_comb begin: CHOOSE_MAX
	if (gt | eq) begin
		mag = $unsigned(a) - $unsigned(b);
	end else begin
		mag = $unsigned(b) - $unsigned(a);
	end
end

assign mag_diff = mag;

endmodule// $Id: $
// File name:   adder_1bit.sv
// Created:     1/23/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: 1-bit Full Adder.

module adder_1bit
(
  input wire a,
  input wire b,
  input wire carry_in,
  output wire sum,
  output wire carry_out
);

  assign sum = carry_in ^ (a ^ b);
  assign carry_out = ((~carry_in) & b & a) | (carry_in & (b | a));

endmodule// 337 TA Provided Lab 2 8-bit adder wrapper file template
// This code serves as a template for the 8-bit adder design wrapper file 
// STUDENT: Replace this message and the above header section with an
// appropriate header based on your other code files

module adder_8bit
(
	input wire [7:0] a,
	input wire [7:0] b,
	input wire carry_in,
	output wire [7:0] sum,
	output wire overflow
);

adder_nbit #(8) AN (.a(a), .b(b), .carry_in(carry_in), .sum(sum), .overflow(overflow));

	// STUDENT: Fill in the correct port map with parameter override syntax for using your n-bit ripple carry adder design to be an 8-bit ripple carry adder design
endmodule
// $Id: $
// File name:   adder_nbit.sv
// Created:     1/23/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: N bit Ripple Carry Adder

module adder_nbit
#(
  parameter BIT_WIDTH = 4
)
(
  input wire [(BIT_WIDTH - 1):0] a,
  input wire [(BIT_WIDTH - 1):0] b,
  input wire carry_in,
  output wire [(BIT_WIDTH - 1):0] sum,
  output wire overflow
);

  wire [BIT_WIDTH:0] carrys;
  genvar i;

  assign carrys[0] = carry_in;
  generate
    for(i = 0; i <= BIT_WIDTH - 1; i = i + 1)
    begin
      adder_1bit IX (.a(a[i]), .b(b[i]), .carry_in(carrys[i]), .sum(sum[i]), .carry_out(carrys[i + 1]));
    end
  endgenerate
  assign overflow = carrys[BIT_WIDTH];
endmodule// $Id: $
// File name:   cost_calculator.sv
// Created:     4/11/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Cost Calculator Module for Handwritten Digit Recognizer

module cost_calculator
(
	input wire clk,
	input wire n_rst,
	input wire cost_en,
	input wire [0:9] expected_label,
	input wire [0:9][3:0] digit_weights,
	output reg calculation_complete,
	output wire [7:0] cost_output,
	reg [3:0] next_sub_reg
);


  typedef enum bit [2:0] {IDLE, SUB, SQ, ADD, STO, L_INPUT, FIN} stateType;

  stateType state;
  stateType next_state;

  reg [3:0] sub_reg;
  reg [4:0] sq_reg;
  reg [7:0] add_reg;
  reg [7:0] sto_reg;
  reg [7:0] next_sq_reg;
  reg [7:0] next_add_reg;
  reg [7:0] next_sto_reg;
  reg [0:9] label_hold_reg;
  reg [0:9][3:0] sigmoid_hold_reg;
  reg [3:0] mux_label;
  reg [3:0] mux_confidence;
  reg add_overflow;
  reg adder_input_en;
  reg inc_index;
  reg fin_flag;

  wire [7:0] adder_input_a;
  wire [3:0] cur_input;

  abs_subtractor_4bit SUB_BLOCK (.a(mux_label), .b(mux_confidence), .mag_diff(next_sub_reg));

  mult_4bit           SQ_BLOCK  (.a(sub_reg), .b(sub_reg), .product(next_sq_reg));

  adder_8bit          ADD_BLOCK (.a(adder_input_a), .b(sto_reg), .carry_in(1'b0), .sum(next_add_reg), .overflow(add_overflow));

  flex_counter	 #(4) IND_BLOCK (.clk(clk), .n_rst(n_rst), .clear(cost_en), .count_enable(inc_index), .rollover_val(4'b1001), .count_out(cur_input), .rollover_flag(fin_flag));


  always_comb begin: LABEL_MUX
    mux_label = 4'b0000;
    case (cur_input)
      4'b0000:	mux_label = {label_hold_reg[0], 3'b000};
      4'b0001:	mux_label = {label_hold_reg[1], 3'b000};
      4'b0010:	mux_label = {label_hold_reg[2], 3'b000};
      4'b0011:	mux_label = {label_hold_reg[3], 3'b000};
      4'b0100:	mux_label = {label_hold_reg[4], 3'b000};
      4'b0101:	mux_label = {label_hold_reg[5], 3'b000};
      4'b0110:	mux_label = {label_hold_reg[6], 3'b000};
      4'b0111:	mux_label = {label_hold_reg[7], 3'b000};
      4'b1000:	mux_label = {label_hold_reg[8], 3'b000};
      4'b1001:	mux_label = {label_hold_reg[9], 3'b000};
    endcase
  end

  always_comb begin: CONFIDENCE_MUX
    mux_confidence = 4'b0000;
    case (cur_input)
      4'b0000:	mux_confidence = sigmoid_hold_reg[0];
      4'b0001:	mux_confidence = sigmoid_hold_reg[1];
      4'b0010:	mux_confidence = sigmoid_hold_reg[2];
      4'b0011:	mux_confidence = sigmoid_hold_reg[3];
      4'b0100:	mux_confidence = sigmoid_hold_reg[4];
      4'b0101:	mux_confidence = sigmoid_hold_reg[5];
      4'b0110:	mux_confidence = sigmoid_hold_reg[6];
      4'b0111:	mux_confidence = sigmoid_hold_reg[7];
      4'b1000:	mux_confidence = sigmoid_hold_reg[8];
      4'b1001:	mux_confidence = sigmoid_hold_reg[9];
    endcase
  end

  always_ff @ (posedge clk, negedge n_rst)
  begin : REG_LOGIC
      if (n_rst == 0) begin
        state <= IDLE;
	label_hold_reg <= '0;
	sigmoid_hold_reg <= '0;
	sub_reg <= '0;
	sq_reg <= '0;
	add_reg <= '0;
	sto_reg <= '0;
      end else if (cost_en == 1 && state == IDLE) begin
	label_hold_reg <= expected_label;
	sigmoid_hold_reg <= digit_weights;
	sub_reg <= '0;
	sq_reg <= '0;
	add_reg <= '0;
	sto_reg <= '0;
        state <= next_state;
      end else begin
        state <= next_state;
	sub_reg <= next_sub_reg;
	sq_reg <= next_sq_reg[6:2];
	add_reg <= next_add_reg;
	if (state == STO) begin
	  sto_reg <= next_sto_reg;
	end else begin
	  sto_reg <= sto_reg;
	end
      end
  end

  always_comb
  begin : NXT_LOGIC
    next_state = state;
    case (state)
      IDLE: begin
	if (cost_en == 1'b1) begin
	  next_state = SUB;
        end else begin
	  next_state = IDLE;
	end
      end

      SUB: begin
	next_state = SQ;
      end

      SQ: begin
	next_state = ADD;
      end

      ADD: begin
	next_state = STO;
      end

      STO: begin
	next_state = L_INPUT;
      end

      L_INPUT: begin
	if (cur_input == 4'b1001) begin
	  next_state = FIN;
	end else begin
	  next_state = SUB;
	end
      end

      FIN: begin
	next_state = IDLE;
      end
    endcase
  end

  always_comb
  begin : OUTPUT_LOGIC
    calculation_complete = 1'b0;
    adder_input_en = 1'b0;
    inc_index = 1'b0;   
    case (state)
      IDLE: begin
      end

      SUB: begin
      end

      SQ: begin
      end

      ADD: begin
	adder_input_en = 1'b1;
      end

      STO: begin
      end

      L_INPUT: begin
	inc_index = 1'b1;
      end

      FIN: begin
	calculation_complete = 1'b1;
      end
    endcase
  end

  assign cost_output = sto_reg;
  assign next_sto_reg = add_reg;
  assign adder_input_a = (adder_input_en) ? {3'b000, sq_reg} : 8'h00;

endmodule
// $Id: $
// File name:   digit_decode.sv
// Created:     4/3/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Comparator to determine the max confidence level output from the sigmoid registers and output the associated digit value

module digit_decode
(
  input wire clk,
  input wire n_rst,
  input wire network_done,
  input wire [0:9][3:0] digit_weights,
  output wire [3:0] detected_digit,
  reg [3:0] mux_out,
  reg [3:0] next_digit
);

  wire [3:0] count_out;
  wire gt, lt, eq;
  reg [3:0] mux_out_reg;
  reg rollover_plc;
  reg [3:0] digit_val = 4'b0000;
  reg [3:0] max_val = 4'b000;
  reg [3:0] in_val;
  reg [0:9][3:0] weight_hold;

  reg floppy;
  wire floppy_nxt;

  assign detected_digit = digit_val;

  always_ff @  (posedge clk, negedge n_rst) begin
    if (n_rst == 0) begin
      max_val <= 4'b0000;
      digit_val <= 4'b0000;
      weight_hold <= {'0, '0, '0, '0, '0, '0, '0, '0, '0, '0};
      mux_out_reg = 0;
    end else if (network_done == 1) begin
      max_val <= 4'b0000;
      digit_val <= 4'b0000;
      weight_hold <= digit_weights;
      mux_out_reg = 0;
    end else begin
      max_val <= in_val;
      mux_out_reg = mux_out;
      digit_val <= next_digit;
    end
  end

  always_ff @ (posedge clk, negedge n_rst)
  begin
    if(n_rst == 0) floppy = 0;
    else floppy = floppy_nxt;
  end
  assign floppy_nxt = !floppy && !network_done;

  

  flex_counter INDEX_COUNT (.clk(clk), .n_rst(n_rst), .clear(network_done), .count_enable(floppy), .rollover_val(4'b1001), .count_out(count_out), .rollover_flag(rollover_plc));

  always_comb begin: INPUT_MUX
    mux_out = 4'b0000;
    case (count_out)
      4'b0000:	mux_out = weight_hold[0];
      4'b0001:	mux_out = weight_hold[1];
      4'b0010:	mux_out = weight_hold[2];
      4'b0011:	mux_out = weight_hold[3];
      4'b0100:	mux_out = weight_hold[4];
      4'b0101:	mux_out = weight_hold[5];
      4'b0110:	mux_out = weight_hold[6];
      4'b0111:	mux_out = weight_hold[7];
      4'b1000:	mux_out = weight_hold[8];
      4'b1001:	mux_out = weight_hold[9];
    endcase
  end

  comparator COMPARATOR (.a(mux_out_reg), .b(max_val), .gt(gt), .lt(lt), .eq(eq));

  always_comb begin: COMPARATOR_LOGIC
    if (gt == 1 || eq == 1 && !floppy) begin
      in_val = mux_out_reg;
    end else begin
      in_val = max_val;
    end
  end

  always_comb begin: DET_MAX
    if (in_val != max_val) begin
      next_digit = count_out;
    end else begin
      next_digit = digit_val;
    end
  end
endmodule
    

  
// $Id: $
// File name:   flex_counter.sv
// Created:     1/31/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Flexible and Scalable Counter with Controlled Rollover

module flex_counter
#(
  parameter NUM_CNT_BITS = 4
)
(
  input wire clk,
  input wire n_rst,
  input wire clear,
  input wire count_enable,
  input wire [NUM_CNT_BITS-1:0] rollover_val,
  output reg [NUM_CNT_BITS-1:0] count_out,
  output reg rollover_flag
);

  int pre_rollover = 0;

  always_ff @ (posedge clk, negedge n_rst)
  begin
    if (n_rst == 0) begin
      count_out <= '0;
      rollover_flag <= 0;
    end else if (clear == 1) begin
      rollover_flag <= 0;
      count_out <= '0;
    end else if (count_enable == 1) begin
      if (rollover_flag == 1) begin
        count_out <= 0;
      end else begin
        count_out <= count_out + 1;
      end
      rollover_flag <= pre_rollover;
    end
  end

  always_comb begin
    if ((count_out == rollover_val - 1) && count_enable) begin
      pre_rollover = 1;
    end else begin
      pre_rollover = 0;
    end
  end
endmodule
  
// $Id: $
// File name:   fmc.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Flash Memory Controller source

module fmc (
	input wire clk,
  	input wire n_rst,
	input wire ready,
	input wire [15:0] address,
	input wire [15:0] data,
	output reg [15:0] data_out,
	output reg [15:0] address_in,
	output reg ce, oe, we
);
	
	reg clear_cnt, count_en, load_data;
	reg [3:0] count_out;

	flex_counter #(4) fmc_counter(
		.clk(clk), 
		.n_rst(n_rst), 
		.clear(clear_cnt), 
		.count_enable(count_en), 
		.rollover_val(4'd12), 
		.count_out(count_out),
		.rollover_flag() 
	); 

	typedef enum logic [1:0] {idle, chip_en, output_en, load} state_type;
	state_type state;
	state_type next_state;

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0) begin
			state <= idle;
			address_in <= 0;
			data_out <= 0;
		end
		else begin
			state <= next_state;
			if (ready == 1'b1)
				address_in <= address;
			if (load_data == 1'b1)
				data_out <= data;
		end
	end
	
	always_comb
	begin : nextStateLogic
		next_state = state;
		case(state)
			idle : begin
				if (ready == 1'b1)
				next_state = chip_en;
				end
			chip_en : begin
				if (count_out == 4'd5)
				next_state = output_en;
				end
			output_en : begin
				if (count_out == 4'd10)
				next_state = load;
				end
			load : begin
				if (ready == 1'b1)
				next_state = chip_en;
				else
				next_state = idle;
				end
		endcase
	end

	always_comb
	begin : outputLogic
		we = 1'b1;
		ce = (state == idle);
		oe = ce | (state == chip_en);
	
		count_en =  (state == chip_en) | (state == output_en);
		load_data = (state == load);
		clear_cnt = (state == idle) | (state == load);
	end		
endmodule 
// $Id: $
// File name:   pos_edge_detector.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Positive edge detector source file

module gen_pos_edge_detect
(
	input wire clk,
	input wire n_rst,
	input wire sig,
	output wire sig_edge
);
	reg prev_sig;
	wire sync_out;
	
	gen_sync sync_posedge(.clk(clk), .n_rst(n_rst), .async_in(sig), .sync_out(sync_out));
	assign sig_edge = sync_out & ~prev_sig;

	always_ff @ (posedge clk, negedge n_rst)
	begin : edgy
		if (n_rst == 1'b0) begin
			prev_sig <= 1'b1;
		end
		else begin
			prev_sig <= sync_out;
		end
	end
endmodule // $Id: $
// File name:   gen_pts_sr.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Parallel-to-serial shift register

module gen_pts_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1'b1
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire load_enable,
	input wire [NUM_BITS-1:0] parallel_in,
	output wire serial_out
);
	
	reg [NUM_BITS-1:0] temp;

assign serial_out = (temp[NUM_BITS-1] & SHIFT_MSB) || (temp[0] & ~SHIFT_MSB) ;

always_ff @ (posedge clk, negedge n_rst)
begin
	if (n_rst == 1'b0)
	begin
		temp <= '1;
	end
	else if (load_enable == 1'b1)
	begin
		temp <= parallel_in;
	end
	else if (shift_enable == 1'b1)
	begin
		if (SHIFT_MSB == 1'b0)
		begin						
			temp <= temp >> 1;
		end
		else
		begin
			temp <= temp << 1;
		end
	end
end
endmodule 
// $Id: $
// File name:   gen_stp_sr.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Serial-to-parallel shift register

module gen_stp_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1'b1
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire serial_in,
	output wire [NUM_BITS-1:0] parallel_out
);
	
	reg [NUM_BITS-1:0] temp;
	assign parallel_out = temp;

always_ff @ (posedge clk, negedge n_rst)
begin
	if (n_rst == 1'b0)
	begin
		temp <= '1;
	end
	else if (shift_enable == 1'b1)
	begin
		if (SHIFT_MSB == 1'b0)
		begin						
			temp <= temp >> 1;
			temp[NUM_BITS-1] <= serial_in;
		end
		else
		begin
			temp <= temp << 1;
			temp[0] <= serial_in;
		end
	end
end
endmodule 
// $Id: $
// File name:   gen_sync.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Reset to Logic Low Synchronizer

module gen_sync
(
	input reg clk,
	input reg n_rst,
	input reg async_in,
	output reg sync_out
);
	reg temp_out;

always_ff @ (posedge clk, negedge n_rst)
begin : flippy
	if(1'b0 == n_rst)
	begin
		temp_out <= 1'b0;
	end
	else
	begin
		temp_out <= async_in;
	end
end
always_ff @ (posedge clk, negedge n_rst)
begin : floppy
	if(1'b0 == n_rst)
	begin
		sync_out <= 1'b0;
	end
	else
	begin
		sync_out <= temp_out;
	end
end
endmodule // $Id: $
// File name:   mult_4bit.sv
// Created:     4/20/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Multiplier for 4 Bit Inputs

module mult_4bit
(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [7:0] product
);

assign product = $unsigned(a) * $unsigned(b);

endmodule

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
module pixelData_PTPSR
(
	input wire shift_en,
	input wire clk,
	input wire [7:0] parallel_in,
	output wire [7:0] parallel_out
);

	reg [7:0] currentData;
	reg [7:0] next_val;

	assign parallel_out = currentData;

	always_comb
	begin
		if(shift_en == 1)
			next_val = parallel_in;
		else
			next_val = currentData;
	end

	always_ff @ (posedge clk)
	begin : shiftreg
	
		currentData <= next_val;
	end
endmodule
module pixelData
(
	input wire clk,
	input wire shift_SPI,
	input wire shift_network,
	input wire network_calc,
	input wire write_en,
	input wire [7:0] spi_in,
	output reg [7:0] pixel_data_1,
	output reg [7:0] pixel_data_2
);
	wire [575:0] pixelData;
	wire chooseShift;
	reg chooseShift_reg;
	reg [7:0] chooseIn;

	pixelData_PTPSR firstReg(.clk(clk), .shift_en(chooseShift_reg), .parallel_in(chooseIn),.parallel_out(pixelData[7:0]));

	genvar i;
	generate
	for (i = 1; i<=71 ;i = i + 1) begin
		pixelData_PTPSR dataReg(.clk(clk), .shift_en(chooseShift_reg), .parallel_in(pixelData[((i-1)*8)+7:((i-1)*8)]), .parallel_out(pixelData[(i*8)+7:(i*8)]));
	end
	endgenerate

	assign chooseShift = (shift_SPI && ~network_calc) | (shift_network & network_calc);

	always_ff @ (posedge clk)
	begin
		pixel_data_1 = pixelData[567:560];
		pixel_data_2 = pixelData[575:568];
	end

	always_ff @ (posedge clk)
	begin
		chooseShift_reg <= chooseShift;
	end
	
	always_comb
	begin
		if(write_en == 1)
			chooseIn = spi_in;
		else
			chooseIn = pixelData[575:568];
	end

endmodule
// $Id: $
// File name:   sigmoid_ALU.sv
// Created:     4/11/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0 Final module revision 
// Description: Top level file for the Sigmoid ALU
//              Takes in an input of four
//              4 bit weights, and four
//              4 bit inputs, and accumulates
//              them. It outputs the accumulator
//              value passed through a sigmoid
//              lookup table, to be stored in
//              the sigmoid registers.

module sigmoid_ALU 
(
	input wire clk,
	input wire [3:0] weight1,
	input wire [3:0] weight2,
	input wire [3:0] weight3,
	input wire [3:0] weight4,
	input wire [3:0] input1,
	input wire [3:0] input2,
	input wire [3:0] input3,
	input wire [3:0] input4,
	input wire [3:0] bias,
	input wire accumulate,
	input wire clear,
	output reg [3:0] out,
	output wire [15:0] accum_out
);

// results of multiplication
wire [7:0] mult1;
wire [7:0] mult2;
wire [7:0] mult3;
wire [7:0] mult4;

// storing result of sum of four weight-input products
wire [9:0] added_nxt;
reg  [9:0] added_reg;

// weight inputs
reg [3:0] weight1_reg;
reg [3:0] weight2_reg;
reg [3:0] weight3_reg;
reg [3:0] weight4_reg;

// input inputs
reg [3:0] input1_reg;
reg [3:0] input2_reg;
reg [3:0] input3_reg;
reg [3:0] input4_reg;

// register for multiplication results
reg [7:0] mult1_reg;
reg [7:0] mult2_reg;
reg [7:0] mult3_reg;
reg [7:0] mult4_reg;

// bias input
reg [3:0] bias_reg;

// next state for output
wire [3:0] out_nxt;


// multipliers
sigmoid_ALU_multiplier M1 (.signval(weight1_reg), .unsignval(input1_reg), .out(mult1));
sigmoid_ALU_multiplier M2 (.signval(weight2_reg), .unsignval(input2_reg), .out(mult2));
sigmoid_ALU_multiplier M3 (.signval(weight3_reg), .unsignval(input3_reg), .out(mult3));
sigmoid_ALU_multiplier M4 (.signval(weight4_reg), .unsignval(input4_reg), .out(mult4));

// adder for multiplier ouputs
sigmoid_ALU_4_way_adder ADDER (.in1(mult1_reg), .in2(mult2_reg), .in3(mult3_reg), .in4(mult4_reg), .out(added_nxt));

// accumulator for sum of weighted inputs
sigmoid_ALU_accumulator ACCUM (.clk(clk), .clear(clear), .accumulate(accumulate), .newval(added_reg), .out(accum_out));

// sigmoid function lookup table
sigmoid_ALU_sigmoid_calculator SIGM (.accum(accum_out[15:2]), .bias(bias_reg), .sigma(out_nxt));

// all input registerred
always_ff @ (posedge clk)
begin
	added_reg = added_nxt;

	weight1_reg = weight1;
	weight2_reg = weight2;
	weight3_reg = weight3;
	weight4_reg = weight4;

	input1_reg = input1;
	input2_reg = input2;
	input3_reg = input3;
	input4_reg = input4;

	bias_reg = bias;
	out = out_nxt;

	mult1_reg = mult1;
	mult2_reg = mult2;
	mult3_reg = mult3;
	mult4_reg = mult4;
end




endmodule
// $Id: $
// File name:   sigmoid_ALU_4_way_adder.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: 4 way signed adder for the sigmoid ALU

module sigmoid_ALU_4_way_adder
(
	input wire [7:0] in1,
	input wire [7:0] in2,
	input wire [7:0] in3,
	input wire [7:0] in4,
	output wire [9:0] out
);

assign out = $signed(in1) + $signed(in2) + $signed(in3) + $signed(in4);

endmodule
// $Id: $
// File name:   sigmoid_ALU_accumulator.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: accumulator for the sigmoid ALU

module sigmoid_ALU_accumulator 
(
	input wire accumulate,
	input wire clear,
	input wire clk,
	input wire [9:0] newval,
	output reg [15:0] out
);

	reg [15:0] next_out;

	always_ff @ (posedge clk)
	begin
		out <= next_out;
	end

	always_comb
	begin
		if (clear)
			next_out = 0;
		else if (accumulate)
			next_out = $signed(newval) + $signed(out);
		else
			next_out = out;
	end

endmodule
// $Id: $
// File name:   sigmoid_ALU_multiplier
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Multiplies 4 bit signed and unsigned values (s3.0 and 1.3) to get an 8 bit value (s4.3).
// 


module sigmoid_ALU_multiplier 
(
	input wire [3:0] signval,
	input wire [3:0] unsignval,
	output wire [7:0] out
);


assign out = $signed({signval[3],signval}) * $signed({0, unsignval});

endmodule
			        
// $Id: $
// File name:   sigmoid_ALU_sigmoid_calculator.sv
// Created:     4/10/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: calculates a 4 bit sigmoid ALU output from a 13 bit input.

module sigmoid_ALU_sigmoid_calculator
(
	input  wire [13:0] accum,
	input  wire [3:0]  bias,
	output wire [3:0]  sigma
);

reg [13:0] sum;
reg [4:0] shifted_bias;
reg [3:0] sigma_reg;
assign sigma = sigma_reg;

always_comb
begin
	shifted_bias = {bias,1'b0};
	sum = $signed(shifted_bias) + $signed(accum);
	if ($signed(sum) < -5)
		sigma_reg = 4'b0000;
	else if($signed(sum) == -5 || $signed(sum) == -4 || $signed(sum) == -3)
		sigma_reg = 4'b0001;
	else if($signed(sum) == -2)
		sigma_reg = 4'b0010;
	else if($signed(sum) == -1)
		sigma_reg = 4'b0011;
	else if($signed(sum) == 0)
		sigma_reg = 4'b0100;
	else if($signed(sum) == 1)
		sigma_reg = 4'b0101;
	else if($signed(sum) == 2)
		sigma_reg = 4'b0110;
	else if($signed(sum) == 5 || $signed(sum) == 4 || $signed(sum) == 3)
		sigma_reg = 4'b0111;
	else 
		sigma_reg = 4'b1000;
end

endmodule
module sigmoidRegisters_addressableReg #(parameter ADDRESS=0)

(
	input wire write_en,
	input wire clk,
	input wire [3:0] data_in,
	input wire [4:0] address_in,
	output wire [3:0] data_out
);
	
	reg [3:0] currentData;
	reg [3:0] next_val;

	assign data_out = currentData;

	always_comb
	begin
		if(write_en == 1 && address_in == ADDRESS)
			next_val = data_in;
		else
			next_val = currentData;
	end

	always_ff @ (posedge clk)
	begin : register	
		currentData <= next_val;
	end

endmodule
module sigmoidRegisters
(
	input wire clk,
	input wire write_en,
	input wire [3:0] data_in,
	input wire [4:0] address,
	output wire [3:0] data_out,
	output wire [0:9][3:0] digit_weights 
);
	reg [3:0] nextData;
	reg [3:0] chooseData;
	wire [0:7][3:0] outputs;

	assign data_out = chooseData;

	genvar i;
	generate
	for (i = 0; i<=7 ;i = i + 1) begin
		sigmoidRegisters_addressableReg #(.ADDRESS(i)) neuronReg(.clk(clk), .write_en(write_en), .data_in(data_in), .data_out(outputs[i]), .address_in(address));
	end
	endgenerate

	generate
	for(i = 0; i<=9; i = i + 1) begin
		sigmoidRegisters_addressableReg #(.ADDRESS(i + 8)) weightReg(.clk(clk), .write_en(write_en), .data_in(data_in), .data_out(digit_weights[i]), .address_in(address));
	end
	endgenerate

	always_comb
	begin
		if(0 == address)
			chooseData = outputs[0];
		else if(address == 1)
			chooseData = outputs[1];
		else if(address == 2)
			chooseData = outputs[2];
		else if(address == 3)
			chooseData = outputs[3];
		else if(address == 4)
			chooseData = outputs[4];
		else if(address == 5)
			chooseData = outputs[5];
		else if(address == 6)
			chooseData = outputs[6];
		else if(address == 7)
			chooseData = outputs[7];
		else 
			chooseData = '1;
	end

endmodule
// $Id: $
// File name:   spi_input.sv
// Created:     4/20/2018
// Author:      Chan Weng Yan
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: SPI input controller 
//              used to control the SPI input
//              signals for the system, manages
//              the opcodes that are sent
//              and routes data to the correct 
//              destinations

module SPI_input_controller (
	input wire clk,
	input wire n_rst,
	input wire MOSI, SCK, SS,
	input wire data_ready,
	output reg shift_SPI,
	output reg [7:0] SPI_in,
	output reg write_en,
	output reg calculate_cost,
	output reg [9:0] expected_label,
	output reg sig_edge
);
	reg is_idle, delay1, delay2;
	reg async_in, sync_out, sig;
	reg pixel_rollover, flag_long, flag;
	reg [7:0] parallel_out;
	reg [0:9] temp_label;
	wire [6:0] pixel_count;
	reg nxt_calculate_cost;
	
	typedef enum logic [2:0] {idle, load_pix, done_pix, load_exp, done_exp, delay_exp} state_type;
	state_type state;
	state_type next_state;
		
	// counter for keeping track of sent pixels
	flex_counter #(7) spi_input_7bit_counter(
		.clk(clk), .n_rst(n_rst), 
		.clear(is_idle), 
		.count_enable(delay1), 
		.rollover_val(7'd72), 
		.count_out(pixel_count),
		.rollover_flag(pixel_rollover) 
	); 
	
	// counter for keeping track of when a byte was sent	
	flex_counter #(4) spi_input_4bit_counter(
		.clk(clk), .n_rst(n_rst), 
		.clear(), 
		.count_enable(sig_edge), 
		.rollover_val(4'd7), 
		.count_out(),
		.rollover_flag(flag_long) 
	); 
	
	// serial to parallel shift reigster for storing data sent via SPI
	gen_stp_sr #(.NUM_BITS(8), .SHIFT_MSB(0)) spi_input_stpsr(
		.clk(clk), .n_rst(n_rst), 
		.shift_enable(sig_edge),
		.serial_in(sync_out),
	.parallel_out(parallel_out)
	);
	
	// synchronizers and edge detectors for SPI inputs	
	gen_sync 	     spi_input_sync	(.clk(clk), .n_rst(n_rst), .async_in(async_in), .sync_out(sync_out));
	gen_pos_edge_detect  spi_input_pos_edge	(.clk(clk), .n_rst(n_rst), .sig(sig), .sig_edge(sig_edge));

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0) begin
			state <= idle;
			SPI_in <= '1;
			delay1 <= '0;
			delay2 <= '0;
			shift_SPI <= '0;
			expected_label <= '0;
		end
		else begin
			state <= next_state;
			
			if (delay1 == 1'b1) // SPI_in mux
			SPI_in <= parallel_out;
			else 
			SPI_in <= SPI_in;
			
			delay1 <= flag; // shift strobe delay
			delay2 <= delay1;
			shift_SPI <= delay2;

			expected_label <= temp_label; // 10-bit demux
		end
	end
	
	always_comb
	begin : nextStateLogic
		next_state = state;
		case(state)
			idle : begin
				if (data_ready & (SPI_in == 8'b00000000))
				next_state = load_pix;
				else if (data_ready & (SPI_in == 8'b00000001))
				next_state = load_exp;
				end
			load_pix : begin
				if (pixel_rollover == 1'b1 & shift_SPI)
				next_state = done_pix;
				end
			done_pix : begin
				next_state = idle;
				end
			load_exp : begin
				if (delay1 == 1'b1)
				next_state = done_exp;
				end
			done_exp : begin
				next_state = delay_exp;
				end
			delay_exp: begin
				if (delay1 == 1'b1) next_state = idle;
				end
		endcase
	end

	always_ff @ (negedge n_rst, posedge clk)
	begin
		if (n_rst == 0) calculate_cost = 0;
		else calculate_cost = nxt_calculate_cost;
	end

	always_comb
	begin 
		// flag correction
		flag = flag_long & sig_edge;

		// output logic
		is_idle = (state == idle);
		nxt_calculate_cost = (state == done_exp);
		write_en = (state == load_pix);

		// input gates
		async_in = (MOSI & ~SS);
		sig = (SCK & ~SS);
	
		// 10-bit parallel demux
		temp_label = 10'b0;
		temp_label[SPI_in] = 1;
	end 
endmodule 
// $Id: $
// File name:   spi_output.sv
// Created:     4/20/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: SPI output controller file

module SPI_output_controller (
	input wire clk,
	input wire n_rst,
	input wire shift_SPI, 
	input reg  sig_edge,
	input wire [7:0] SPI_in,
	input wire SCK, SS,
	input wire network_done,
	input wire data_ready,
	input wire cost_ready,
	input wire [7:0] cost_output,
	input wire [3:0] detected_digit,
	output reg MISO
);
	reg send_digit, send_cost; // output logic
	reg load_en, serial_data; // ptssr
	reg [7:0] parallel_data;

	wire flag_long;
	wire flag_short;
	wire shift_output;

	typedef enum logic [2:0] {idle, wait_cost, cost_sent, load_dig, dig_sent} state_type;
	state_type state;
	state_type next_state;


	assign flag_short = flag_long & shift_SPI;
	assign shift_output = shift_SPI & (state == cost_sent | state == dig_sent );

	
	flex_counter #(4) spi_input_4bit_counter(
		.clk(clk), .n_rst(n_rst), 
		.clear(flag_short), 
		.count_enable(shift_SPI), 
		.rollover_val(4'd8), 
		.count_out(),
		.rollover_flag(flag_long) 
	); 
	
	
	gen_pts_sr #(.NUM_BITS(8), .SHIFT_MSB(0)) spi_output_ptssr (
		.clk(clk), 
		.n_rst(n_rst), 
		.shift_enable(sig_edge),
		.load_enable(load_en),
		.parallel_in(parallel_data),
		.serial_out(serial_data)
	); 

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0) begin
			state <= idle;
		end
		else begin
			state <= next_state;
		end
	end
	
	always_comb
	begin : nextStateLogic
		next_state = state;
		case(state)
			idle : begin
				if (network_done == 1'b1)
				next_state = load_dig;
				else if (data_ready && SPI_in == 8'b00000001)
				next_state = wait_cost;
				end
			wait_cost : begin
				if (cost_ready == 1'b1)
				next_state = cost_sent;
				if (flag_short)
				next_state = idle;
				end
			cost_sent : begin
				if (flag_short == 1'b1)
				next_state = idle;
				end
			load_dig : begin
				next_state = dig_sent;
				end
			dig_sent : begin
				if (shift_SPI == 1'b1)
				next_state = idle;
				end
		endcase
	end
	

	always_comb
	begin 
		//output logic
		send_digit = (state == idle) | (state == load_dig);
		send_cost = (state == wait_cost) ;//| (state == cost_sent);
		
		// combinational logic for ptssr
		load_en = send_digit | send_cost;
		if (send_cost & data_ready)
			parallel_data = cost_output;
		else if (data_ready)
			parallel_data = {4'b0000,detected_digit};
		else 
			parallel_data = '1;
	
		// tri-state buffer
		if (SS == 1'b0)
			MISO = serial_data;
		else 
			MISO = 1'bz;
	end		
endmodule 
// Verilog for ECE337 Lab 1
// The Following code is used to compare 2 16-bit quantites, a and b. The code 
// determines whether or not:
// a is greater than b, gt = 1, lt = 0, eq = 0
// a is less than b, gt = 0, lt = 1, eq = 0
// a is equal to b, gt = 0, lt = 0, eq = 1

// Use a tab size of 2 spaces for best viewing results


module comparator
(
	input wire [3:0] a,
	input wire [3:0] b,
	output reg gt = 1'b0,
	output reg lt = 1'b0,
	output reg eq = 1'b0
);

	reg gte = 1'b0;
	reg lte = 1'b0;

	always @ (a, b) begin: COM
		if (a > b) begin
			gte = 1'b1;
			lte = 1'b0;
		end else if (b > a) begin
			lte = 1'b1;
			gte = 1'b0;
		end else begin
			gte = 1'b1;
			lte = 1'b1;
		end
		
		if (!(lte == 1'b1)) begin
			gt = 1'b1;
			lt = 1'b0;
			eq = 1'b0;
		end else if (!(gte == 1'b1)) begin
			gt = 1'b0;
			lt = 1'b1;
			eq = 1'b0;
		end else begin
			gt = 1'b0;
			lt = 1'b0;
			eq = 1'b1;
		end
	end
endmodule