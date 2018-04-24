// $Id: $
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

