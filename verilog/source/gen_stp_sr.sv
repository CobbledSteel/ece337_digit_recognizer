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
