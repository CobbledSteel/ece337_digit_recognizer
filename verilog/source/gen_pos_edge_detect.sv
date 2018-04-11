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
endmodule 