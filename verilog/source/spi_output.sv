// $Id: $
// File name:   spi_output.sv
// Created:     4/20/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: SPI output controller file

module spi_output (
	input wire clk,
	input wire n_rst,
	input wire shift_SPI, 
	input wire [7:0] SPI_in,
	input wire SCK, SS,
	input wire network_done,
	input wire data_ready,
	input wire cost_ready,
	input wire [7:0] cost_output,
	input wire [3:0] detected_digit,
	output reg MISO
);
	reg send_digit, send_cost; // output logic
	reg load_en; serial_data; // ptssr
	reg [7:0] parallel_data;
	
	gen_pts_sr #(.NUM_BITS(4), .SHIFT_MSB(0)) spi_output_ptssr (
		.clk(clk), 
		.n_rst(n_rst), 
		.shift_enable(SCK),
		.load_enable(load_en),
		.parallel_in(parallel_data),
		.serial_out(serial_data)
	); 

	typedef enum logic [2:0] {idle, wait_cost, cost_sent, load_dig, dig_sent} state_type;
	state_type state;
	state_type next_state;

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0) begin
			state <= idle;
		end
		else begin
			state <= next_state;
		end
	end
	
	always_comb
	begin : nextStateLogic
		next_state = state;
		case(state)
			idle : begin
				if (network_done == 1'b1)
				next_state = load_dig;
				else if (SPI_in == 2'b01)
				next_state = wait_cost;
				end
			wait_cost : begin
				if (cost_ready == 1'b1)
				next_state = cost_sent;
				end
			cost_sent : begin
				if (shift_SPI == 1'b1)
				next_state = idle;
				end
			load_dig : begin
				next_state = dig_sent;
				end
			dig_sent : begin
				if (shift_SPI == 1'b1)
				next_state = idle;
				end
		endcase
	end

	always_comb
	begin : 
		//output logic
		send_digit = (state == idle) | (state == load_dig);
		send_cost = (state == wait_cost) | (state == cost_sent);
		
		// combinational logic for ptssr
		load_en = send_digit | send_cost;
		if (send_digit & data_ready)
			parallel_data = detected_digit;
		else if (send_cost & data_ready)
			parallel_data = cost_output;
		else 
			parallel_data = '1;
	
		// tri-state buffer
		if (SS == 1'b0)
			MISO = serial_data;
		else 
			MISO = z;
	end		
endmodule 