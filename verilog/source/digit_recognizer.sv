// $Id: $
// File name:   digit_recognizer.sv
// Created:     4/19/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Top level file digit recognizer

module digit_recognizer (

);
	// Network controller
	// SPI input
	// SPI output
	// pixel data register
	// sigmoid register

	// fmc
	fmc my_fmc(
		.clk(), 
		.n_rst(), 
		.ready(), 
		.address(), 
		.data(), 
		.data_out(), //output
		.address_in(),
		.ce(), .oe(), .we() );

	// sigmoid ALU
	// Cost calculator
	// Detected digit
	
endmodule 