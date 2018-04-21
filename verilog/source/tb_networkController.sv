// $Id: $
// File name:   tb_networkController.sv
// Created:     2/5/2013
// Author:      foo
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: starter top level test bench provided for Lab 5

`timescale 1ns / 10ps

module tb_networkController();

	// Define parameters
	parameter CLK_PERIOD				=5;
	parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
	
	localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
	
	//  DUT inputs
	reg tb_clk;
	reg tb_n_rst;
	reg tb_write_en;
	reg [7:0] tb_pixeldata1;
	reg [7:0] tb_pixeldata2;
	reg [15:0] tb_flashData_out;
	reg [3:0] tb_sigmoidData_out;
	reg [3:0] tb_ALUOutput;
	
	// DUT outputs
	wire data_ready;
	wire shift_network;
	wire flash_ready;
	wire [15:0] flash_address;
	wire network_done;
	wire [3:0] sigmoidData_in;
	wire [4:0] sigmoid_address;
	wire sigmoid_write_en;
	wire [3:0] weight1;
	wire [3:0] weight2;
	wire [3:0] weight3;
	wire [3:0] weight4;
	wire [3:0] bias;
	wire [3:0] input1;
	wire [3:0] input2;
	wire [3:0] input3;
	wire [3:0] input4;
	wire clear;
	wire accumulate;
	
	// Test bench debug signals
	integer i;	
	// Overall test case number for reference
	integer tb_test_case;

	// Test case expected output values for the test case
	reg [0:15] tb_expected_pixeldata;

		
	// DUT portmap
	networkController DUT
	(
		.clk(tb_clk),
		.n_rst(tb_n_rst),
		.write_en(tb_write_en),
		.pixel_data1(tb_pixeldata1),
		.pixel_data2(tb_pixeldata2),
		.flashData_out(tb_flashData_out),
		.sigmoidData_out(tb_sigmoidData_out),
		.ALUOutput(tb_ALUOutput),
		
		.data_ready(data_ready),
		.shift_network(shift_network),
		.flash_ready(flash_ready),
		.flash_address(flash_address),
		.network_done(network_done),
		.sigmoidData_in(sigmoidData_in),
		.sigmoid_address(sigmoid_address),
		.sigmoid_write_en(sigmoid_write_en),
		.weight1(weight1),
		.weight2(weight2),
		.weight3(weight3),
		.weight4(weight4),
		.bias(bias),
		.input1(input1),
		.input2(input2),
		.input3(input3),
		.input4(input4),
		.clear(clear),
		.accumulate(accumulate)
	);
	
	task check_outputs;
		input [0:15] expected_pixeldata;
		input int subtask;
	begin
	
		assert((expected_pixeldata[0:7] == tb_pixeldata1) & (expected_pixeldata[8:15] == tb_pixeldata2))
			$info("PASSED Test case %0d.%0d: Test data correctly received", tb_test_case, subtask);
		else
			$error("FAILED Test case %0d.%0d: Test data was not correctly received", tb_test_case,subtask);
		
	end
	endtask

	always
	begin : CLK_GEN
		tb_clk = 1'b0;
		#(CLK_PERIOD / 2);
		tb_clk = 1'b1;
		#(CLK_PERIOD / 2);
	end

	// Actual test bench process
	initial
	begin : TEST_PROC
		// Initilize all inputs to inactive/idle values


		// Get away from Time = 0
		#0.1; 
		
		// Test case 0: Basic fill to 0
		tb_test_case = 0;
		
		// Power-on Reset Test case: Simply populate the expected outputs
		
		// Define expected ouputs for this test case
	

		// Test case 1: shift in 2 values, shift to end
	end

endmodule
