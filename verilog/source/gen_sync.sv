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
endmodule 