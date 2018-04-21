// $Id: $
// File name:   spi_input.sv
// Created:     4/20/2018
// Author:      Chan Weng Yan
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: SPI input controller file

module spi_input (
	input wire clk,
	input wire n_rst,
	input wire MOSI, SCK, SS,
	input wire data_ready,
	output reg shift_SPI,
	output reg [7:0] SPI_in,
	output reg write_en,
	output reg calculate_cost,
	output reg [9:0] expected_label
);
	reg is_idle, delay;
	reg async_in, sync_out, sig, sig_edge;
	reg pixel_rollover, flag;
	reg [7:0] parallel_out;
	reg [9:0] temp_label;
	
	typedef enum logic [2:0] {idle, load_pix, done_pix, load_exp, done_exp} state_type;
	state_type state;
	state_type next_state;
		
	flex_counter #(7) spi_input_7bit_counter(
		.clk(clk), .n_rst(n_rst), 
		.clear(is_idle), 
		.count_enable(sig_edge), 
		.rollover_val(7'd71), 
		.count_out(),
		.rollover_flag(pixel_rollover) 
	); 
	
	flex_counter #(4) spi_input_4bit_counter(
		.clk(clk), .n_rst(n_rst), 
		.clear(), 
		.count_enable(sig_edge), 
		.rollover_val(4'd7), 
		.count_out(),
		.rollover_flag(flag) 
	); 
	
	gen_stp_sr #(.NUM_BITS(8), .SHIFT_MSB(0)) spi_input_stpsr(
		.clk(clk), .n_rst(n_rst), 
		.shift_enable(sig_edge),
		.serial_in(sync_out),
		.parallel_out(parallel_out)
	);
	
	gen_sync 	     spi_input_sync	(.clk(clk), .n_rst(n_rst), .async_in(async_in), .sync_out(sync_out));
	gen_pos_edge_detect  spi_input_pos_edge	(.clk(clk), .n_rst(n_rst), .sig(sig), .sig_edge(sig_edge));

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0) begin
			state <= idle;
			SPI_in <= '0;
			delay <= '0;
			shift_SPI <= '0;
			exptected_label <= '0;
		end
		else begin
			state <= next_state;
			
			if (flag == 1'b1) // SPI_in mux
			SPI_in <= parallel_out;
			else 
			SPI_in <= SPI_in;
			
			delay <= flag; // shift strobe delay
			shift_SPI <= delay;

			expected_label <= temp_label; // 10-bit demux
		end
	end
	
	always_comb
	begin : nextStateLogic
		next_state = state;
		case(state)
			idle : begin
				if (data_ready & (SPI_in == 2'b00))
				next_state = load_pix;
				else if (data_ready & (SPI_in == 2'b01))
				next_state = load_exp;
				end
			load_pix : begin
				if (pixel_rollover == 1'b1)
				next_state = done_pix;
				end
			done_pix : begin
				next_state = idle;
				end
			load_exp : begin
				if (shift_SPI == 1'b1)
				next_state = done_exp;
				end
			done_exp : begin
				next_state = idle;
				end
		endcase
	end

	always_comb
	begin : 
		// output logic
		is_idle = (state == idle);
		calculate_cost = (state == done_exp);
		write_en = (state == load_pix);

		// input gates
		async_in = (MOSI & ~SS);
		sig = (SCK & ~SS);
	
		// 10-bit parallel demux
		temp_label = 10'b0;
		temp_label[SPI_in] = 1;
	end 
endmodule 