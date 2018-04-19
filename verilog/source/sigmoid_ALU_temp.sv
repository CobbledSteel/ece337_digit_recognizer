// $Id: $
// File name:   sigmoid_ALU.sv
// Created:     4/11/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: top level file for the Sigmoid ALU

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
	output wire [4:0] out,
	output wire [15:0] accum_out
);

wire [7:0] mult1;
wire [7:0] mult2;
wire [7:0] mult3;
wire [7:0] mult4;

wire [9:0] added_nxt;
reg  [9:0] added_reg;


sigmoid_ALU_multiplier M1 (.signval(weight1), .unsignval(input1), .out(mult1));
sigmoid_ALU_multiplier M2 (.signval(weight2), .unsignval(input2), .out(mult2));
sigmoid_ALU_multiplier M3 (.signval(weight3), .unsignval(input3), .out(mult3));
sigmoid_ALU_multiplier M4 (.signval(weight4), .unsignval(input4), .out(mult4));

sigmoid_ALU_4_way_adder ADDER (.in1(mult1), .in2(mult2), .in3(mult3), .in4(mult4), .out(added_nxt));

sigmoid_ALU_accumulator ACCUM (.clk(clk), .clear(clear), .accumulate(accumulate), .newval(added_reg), .out(accum_out));

sigmoid_ALU_sigmoid_calculator SIGM (.accum(accum_out[15:2]), .bias(bias), .sigma(out));

always_ff @ (posedge clk)
begin
	added_reg = added_nxt;
end



endmodule
