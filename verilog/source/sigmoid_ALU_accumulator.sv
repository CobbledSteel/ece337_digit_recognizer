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
