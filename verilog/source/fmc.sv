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
