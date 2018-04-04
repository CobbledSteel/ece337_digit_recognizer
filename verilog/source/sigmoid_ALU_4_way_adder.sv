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
