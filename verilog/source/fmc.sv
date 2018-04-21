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
	
	reg clear_cnt, count_en, load_addr, load_data;
	reg [3:0] count_out;

	flex_counter #(4) fmc_counter(
		.clk(clk), 
		.n_rst(n_rst), 
		.clear(clear_cnt), 
		.count_enable(count_en), 
		.rollover_val(4'd15), 
		.count_out(count_out),
		.rollover_flag() 
	); 

	typedef enum logic [2:0] {idle, addr_ready, chip_en, output_en,
				  data_valid, load, wait1, clear} state_type;
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
			if (load_addr == 1'b1)
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
				next_state = addr_ready;
				end
			addr_ready : begin
				next_state = chip_en;
				end
			chip_en : begin
				if (count_out == 4'd5)
				next_state = output_en;
				end
			output_en : begin
				if (count_out == 4'd11)
				next_state = data_valid;
				end
			data_valid : begin
				next_state = load;
				end
			load : begin
				next_state = wait1;
				end
			wait1 : begin
				if (ready == 1'b1)
				next_state = clear;
				else if (count_out == 4'd15)
				next_state = idle;
				end
			clear : begin
				next_state = addr_ready;
				end	
		endcase
	end

	always_comb
	begin : outputLogic
		we = 1'b1;
		ce = (state == idle) | (state == addr_ready);
		oe = ce | (state == chip_en);
	
		count_en = ~(state == idle);
		load_addr = (state == addr_ready);
		load_data = (state == load);

		clear_cnt = ce | (state == clear);
	end		
endmodule 