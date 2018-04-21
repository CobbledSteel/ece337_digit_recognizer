// $Id: $
// File name:   digit_recognizer.sv
// Created:     4/19/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Top level file digit recognizer

module digit_recognizer (
	input wire clk,
	input wire n_rst,
	input wire SCK, SS, MOSI,
	input wire [15:0] data,
	output reg MISO,
	output reg ce, oe, we,
	output reg [15:0] address,
);
	// Network controller
	
	spi_input 	top_spi_input (		
		.clk(clk), .n_rst(n_rst), 
		.MOSI(MOSI), .SCK(SCK), .SS(SS),
		.data_ready,
		.shift_SPI,	// output
		.SPI_in,
		.write_en,
		.calculate_cost,
		.expected_label
	);
	
	spi_output 	top_spi_output (
		.clk(clk), .n_rst(n_rst), 
		.shift_SPI, 
		.SPI_in,
		.SCK, SS,
		.network_done,
		.data_ready,
		.cost_ready,
		.cost_output,
		.detected_digit,
		.MISO(MISO)	// output
	);
	// pixel data register
	// sigmoid register

	fmc 	top_fmc(
		.clk(clk), .n_rst(n_rst), 
		.ready(), 
		.address(), 
		.data(data), 
		.data_out(), //output
		.address_in(address),
		.ce(ce), .oe(oe), .we(we) );

	sigmoid_ALU 	top_sigmoid_ALU (
		.clk(clk), 
		.weight1, .weight2, .weight3, .weight4,
		.input1, .input2, .input3, .input4,
		.bias,
		.accumulate,
		.clear,
		.out,	// output
		.accum_out
	);
	// Cost calculator
	// Detected digit
	
endmodule 