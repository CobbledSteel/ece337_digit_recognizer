// $Id: $
// File name:   tb_pixelData.sv
// Created:     2/5/2013
// Author:      foo
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: starter top level test bench provided for Lab 5

`timescale 1ns / 10ps

module tb_pixelData();

	// Define parameters
	parameter CLK_PERIOD				=5;
	parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
	
	localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
	
	//  DUT inputs
	reg tb_clk;
	reg tb_shift_SPI;
	reg tb_shift_network;
	reg tb_write_en;
	reg [0:7] tb_spi_in;
	
	// DUT outputs
	wire [0:7] pixel_data_1;
	wire [0:7] pixel_data_2;
	
	// Test bench debug signals
	integer i;	
	// Overall test case number for reference
	integer tb_test_case;

	// Test case expected output values for the test case
	reg [0:15] tb_expected_pixeldata;

		
	// DUT portmap
	pixelData DUT
	(
		.clk(tb_clk),
		.shift_SPI(tb_shift_SPI),
		.shift_network(tb_shift_network),
		.write_en(tb_write_en),
		.spi_in(tb_spi_in),

		.pixel_data_1(pixel_data_1),
		.pixel_data_2(pixel_data_2)
	);
	
	task check_outputs;
		input [0:15] expected_pixeldata;
		input int subtask;
	begin
	
		assert((expected_pixeldata[0:7] == pixel_data_1) & (expected_pixeldata[8:15] == pixel_data_2))
			$info("PASSED Test case %0d.%0d: Test data correctly received", tb_test_case, subtask);
		else
			$error("FAILED Test case %0d.%0d: Test data was not correctly received", tb_test_case,subtask);
		
	end
	endtask
	
	task shiftFull;
	begin
		tb_shift_network = 1;
		for(i=0;i<=69; i=i+1)
			@(negedge tb_clk);
		tb_shift_network = 0;
	end
	endtask

	task fillZero;
	begin
		tb_spi_in = '0;
		tb_write_en = 1;
		shiftFull;
		shiftFull;
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
		tb_shift_SPI			= 1'b0; // Initially inactive
		tb_shift_network	= 1'b0; // Initially idle
		tb_write_en	= 0;
		tb_spi_in 	= '0;		


		// Get away from Time = 0
		#0.1; 
		
		// Test case 0: Basic fill to 0
		tb_test_case = 0;
		
		// Power-on Reset Test case: Simply populate the expected outputs
		
		// Define expected ouputs for this test case
		tb_expected_pixeldata = '0;
	
		@(negedge tb_clk);	
		fillZero;
		tb_expected_pixeldata = '0;
		check_outputs(tb_expected_pixeldata, 1);

		// Test case 1: shift in 2 values, shift to end
		tb_test_case = 1;

		tb_write_en = 1;
		tb_spi_in = '1;
		tb_shift_SPI = 1;
		@(negedge tb_clk);
		tb_spi_in = 8'b10101010;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
		tb_write_en = 0;

		shiftFull;
		tb_expected_pixeldata = 16'b1010101011111111;
		check_outputs(tb_expected_pixeldata,1);

		// Test case 2: fill shift register with values, test both shift signals, test wraparound
		tb_test_case = 2;
		fillZero;
		@(negedge tb_clk);
		tb_write_en = 1;
		tb_shift_SPI = 1;
		//fill register with values 0-71
		for(i = 0;i<=71;i=i+1)
		begin
			tb_spi_in = i;
			@(negedge tb_clk);
		end
		tb_shift_SPI = 0;
		tb_write_en = 0;
		tb_expected_pixeldata = 16'b0000000100000000;
		check_outputs(tb_expected_pixeldata,1);
		
		//shift 2, check next 2 bytes
		tb_shift_network = 1;
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_expected_pixeldata = 16'b0000001100000010;
		check_outputs(tb_expected_pixeldata,2);

		//shift entire cycle, check its the same
		@(negedge tb_clk);
		@(negedge tb_clk);
		shiftFull;
		tb_shift_network = 0;
		check_outputs(tb_expected_pixeldata,3);
	
		//check that works with both shifts enabled at once
		@(negedge tb_clk);
		tb_shift_SPI = 1;
		tb_shift_network = 1;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
		tb_shift_network = 0;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_expected_pixeldata = 16'b0000010000000011;
		check_outputs(tb_expected_pixeldata,4);
	end

endmodule
