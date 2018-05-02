// $Id: $
// File name:   digit_recognizer.sv
// Created:     4/19/2018
// Author:      Group
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Top level file digit recognizer
//              Takes input from SPI, and also a SST39LF200A flash
//              memory chip. Input is either an opcode, pixel values 
//              for a 12x12 grayscale image of a digit, or an expected
//              digit in binary. The flash memory stores data sequentially
//              for each neuron, starting from the hidden layer, and followed by
//              the output layer. Each neuron takes in its bias first, followed
//              by every weight. Order for the image is always sent left to right,
//              top to bottom. The output is delivered 30us after the last 
//              image byte is sent over SPI, or 300ns for the last byte is
//              sent for the cost.

module digit_recognizer_final (
	input wire clk,
	input wire n_rst,
	input wire SCK, SS, MOSI,
	input wire [15:0] data,
	output reg MISO,
	output reg ce, oe, we,
	output reg [15:0] address
);

	wire [3:0] weight1, weight2, weight3, weight4;	// sigmoid alu
	wire [3:0] input1, input2, input3, input4;	// sigmoid alu
	wire accumulate, clear;				// sigmoid alu
	wire [3:0] bias, alu_output; 			// sigmoid alu

	wire [7:0] pixel_data1, pixel_data2;		// pixel data regs
	wire shift_network;				// pixel data regs

	wire flash_ready;				// fmc
	wire [15:0] flash_address, flash_data;		// fmc
	wire sigmoid_write_en;				// sigmoid regs
	wire [4:0] sigmoid_address;			// sigmoid regs
	wire [3:0] sigmoidData_in, sigmoidData_out; 	// sigmoid regs
	
	wire data_ready, write_en;			// spi input
	wire [7:0] SPI_in;				// spi input
	wire shift_SPI, calculate_cost;			// spi input
	wire sig_edge;
	wire [0:9] expected_label;			// spi input
	
	wire calculation_complete;			// cost calculator
	wire [7:0] cost_output;				// cost calculator	

	wire network_done;				// digit decode; spi output
	wire network_calc;
	wire digit_done;
	wire [0:9][3:0] digit_weights;			// digit decode; sigmoid regs; cost calculator
	wire [3:0] detected_digit;			// digit decode
	
	// Network controller
	networkController	top_network_controller (
		.clk(clk), .n_rst(n_rst), 
		.write_en(write_en),
		.data_ready(data_ready),  

		.pixel_data1(pixel_data1), .pixel_data2(pixel_data2),	// pixel data regs
		.shift_network(shift_network),

      		.flash_ready(flash_ready),		// fmc
        	.flash_address(flash_address),
		.flashData_out(flash_data),

       		.network_done(network_done),		// detected digit
		.digit_done(digit_done),
       		.network_calc(network_calc),		// detected digit
        	.sigmoidData_in(sigmoidData_in),	// sigmoid registers
		.sigmoidData_out(sigmoidData_out),
        	.sigmoid_address(sigmoid_address),
        	.sigmoid_write_en(sigmoid_write_en),
		
		.ALUOutput(alu_output),			// sigmoid alu
        	.weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(weight4),
		.input1(input1), .input2(input2), .input3(input3), .input4(input4),
		.bias(bias),
		.accumulate(accumulate),
		.clear(clear)
	);
	
	// SPI Input Controller
	SPI_input_controller 	top_spi_input (		
		.clk(clk), .n_rst(n_rst), 
		.MOSI(MOSI), .SCK(SCK), .SS(SS),
		.data_ready(data_ready),
		.shift_SPI(shift_SPI),	// output
		.SPI_in(SPI_in),
		.write_en(write_en),
		.calculate_cost(calculate_cost),
		.expected_label(expected_label),
		.sig_edge(sig_edge)
	);
	
	// SPI Output Controller
	SPI_output_controller 	top_spi_output (
		.clk(clk), .n_rst(n_rst), 
		.shift_SPI(shift_SPI), 
		.SPI_in(SPI_in),
		.SCK(SCK), .SS(SS),
		.network_done(digit_done),
		.data_ready(data_ready),
		.cost_ready(calculation_complete),
		.cost_output(cost_output),
		.detected_digit(detected_digit),
		.sig_edge(sig_edge),
		.MISO(MISO)	// output
	);
       
        // Pixel Data Registers	
	pixelData 	top_pixel_data (
		.clk(clk),
		.shift_SPI(shift_SPI),
		.shift_network(shift_network),
		.network_calc(network_calc),
		.write_en(write_en),
		.spi_in(SPI_in),
		.pixel_data_1(pixel_data1), .pixel_data_2(pixel_data2)
	);
	
	// Sigmoid Registers
	sigmoidRegisters	top_sigmoid_registers (
		.clk(clk),
		.write_en(sigmoid_write_en),
		.data_in(sigmoidData_in),
		.address(sigmoid_address),
		.data_out(sigmoidData_out),
		.digit_weights(digit_weights)
	);
	
	// Flash Memory Controller
	fmc 	top_fmc(
		.clk(clk), .n_rst(n_rst), 
		.ready(flash_ready), 
		.address(flash_address), 
		.data(data), 
		.data_out(flash_data), //output
		.address_in(address),
		.ce(ce), .oe(oe), .we(we) 
	);

	// Sigmoid ALU
	sigmoid_ALU 	top_sigmoid_ALU (
		.clk(clk), 
		.weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(weight4),
		.input1(input1), .input2(input2), .input3(input3), .input4(input4),
		.bias(bias),
		.accumulate(accumulate),
		.clear(clear),
		.out(alu_output), // output
		.accum_out() // dummy
	);

	// Cost Calculator
	cost_calculator	top_cost_calculator (
		.clk(clk), .n_rst(n_rst), 
		.cost_en(calculate_cost),
		.expected_label(expected_label),
		.digit_weights(digit_weights),
		.calculation_complete(calculation_complete), // output
		.cost_output(cost_output)
	);

	// Digit Decoder	
	digit_decode	top_digit_decode (
		.clk(clk), .n_rst(n_rst), 
		.network_done(network_done),
		.digit_weights(digit_weights),
		.detected_digit(detected_digit)// output
	);
endmodule 
