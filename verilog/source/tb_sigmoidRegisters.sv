// $Id: $
// File name:   tb_sigmoidRegisters.sv
// Created:     4/11/2018
// Author:      Dustin Andree
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: starter top level test bench for sigmoid registers

`timescale 1ns / 10ps

module tb_sigmoidRegisters();

	// Define parameters
	parameter CLK_PERIOD				=5;
	parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
	
	localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
	
	//  DUT inputs
	reg tb_clk;
	reg tb_write_en;
	reg [0:3] tb_data_in;
	reg [0:4] tb_address;
	
	
	// DUT outputs
	wire [0:3] data_out;
	wire [0:9][0:3] digit_weights;
	
	// Test bench debug signals
	integer i;	
	// Overall test case number for reference
	integer tb_test_case;

	// Test case expected output values for the test case
	reg [0:9][0:3] tb_expected_weights;
	reg [0:3] tb_expected_data_out;

		
	// DUT portmap
	sigmoidRegisters DUT
	(
		.clk(tb_clk),
		.write_en(tb_write_en),
		.data_in(tb_data_in),
		.address(tb_address),

		.data_out(data_out),
		.digit_weights(digit_weights)
	);
	
	task check_outputs;
		input [0:9][0:3] expected_weights;
		input [0:3] expected_data_out;
		input int subtask;
	begin
	
		assert((expected_weights == digit_weights) && (expected_data_out == data_out))
			$info("PASSED Test case %0d.%0d: Test data correctly received", tb_test_case, subtask);
		else
			$error("FAILED Test case %0d.%0d: Test data was not correctly received", tb_test_case,subtask);
		
	end
	endtask

	task fillZero;
	begin
		tb_address = '0;
		tb_data_in = '0;
		tb_write_en = 1;
		@(negedge tb_clk)
		for(tb_address = 0;tb_address<=17 ;tb_address = tb_address + 1)
			@(negedge tb_clk);
		tb_write_en = 0;
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
		tb_address	= '0; // Initially inactive
		tb_data_in	= '0; // Initially idle
		tb_write_en	= 0; // Initially read only		


		// Get away from Time = 0
		#0.1; 
		
		// Test case 0: Basic fill to 0
		tb_test_case = 0;
		
		// Power-on Reset Test case: Simply populate the expected outputs
		
		// Define expected ouputs for this test case
		tb_expected_data_out = '1;
		tb_expected_weights = '0;

		@(negedge tb_clk);	
		fillZero;
		check_outputs(tb_expected_weights,tb_expected_data_out, 0);

	
		// Test case 1: fill and check all addresses
		tb_test_case++;
		@(negedge tb_clk);
		tb_address = 0;
		tb_write_en = 1;
		for(tb_address = 0;tb_address<=17;tb_address++)
		begin
			tb_data_in = tb_address;
			@(negedge tb_clk);
		end
		tb_write_en = 0;

		@(negedge tb_clk)
		tb_expected_weights[0]=8;
		tb_expected_weights[1]=9;
		tb_expected_weights[2]=10;
		tb_expected_weights[3]=11;
		tb_expected_weights[4]=12;
		tb_expected_weights[5]=13;
		tb_expected_weights[6]=14;
		tb_expected_weights[7]=15;
		tb_expected_weights[8]=16;
		tb_expected_weights[9]=17;

		for(tb_address = 0; tb_address<=7; tb_address++)
		begin
			tb_expected_data_out = tb_address;
			@(negedge tb_clk);
			check_outputs(tb_expected_weights,tb_expected_data_out,tb_address);
			@(negedge tb_clk);			
		end	
		
		//testCase 2: try to write to invalid address, change data in without writing
		tb_test_case++;
		tb_address = '1;
		tb_data_in = 4'b1110;
		tb_write_en = 1;
		tb_expected_data_out = '1;

		@(negedge tb_clk);
		check_outputs(tb_expected_weights,tb_expected_data_out,0);
		tb_write_en = 0;

		tb_address = 4;
		tb_expected_data_out = 4;
		tb_data_in = 13;
		@(negedge tb_clk);
		check_outputs(tb_expected_weights,tb_expected_data_out,1);

		//testCase 3: write max value
		tb_test_case++;
		tb_address = 4;
		tb_data_in = '1;
		tb_write_en = 1;
		@(negedge tb_clk);
		tb_expected_data_out = '1;
		tb_write_en = 0;
		check_outputs(tb_expected_weights,tb_expected_data_out,0);

		tb_address = 16;
		tb_data_in = '1;
		tb_write_en = 1;
		tb_expected_data_out = '1;
		tb_expected_weights[8] = '1;
		@(negedge tb_clk);
		check_outputs(tb_expected_weights,tb_expected_data_out,1);
		tb_write_en = 0;	
	end

endmodule
