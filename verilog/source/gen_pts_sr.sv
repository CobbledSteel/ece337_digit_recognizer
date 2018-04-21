// $Id: $
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
