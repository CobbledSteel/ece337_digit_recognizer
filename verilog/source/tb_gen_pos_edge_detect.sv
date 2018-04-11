// $Id: $
// File name:   tb_edge_detect.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Testbench for positive edge detector

`timescale 1ns / 10ps
module tb_gen_pos_edge_detect();

	// Define local parameters used by the test bench
	localparam	CLK_PERIOD = 5;

	// Declare DUT portmap signals
	reg tb_clk;
	reg tb_n_rst;
	reg tb_sig;
	wire tb_edge;

	// Declare test bench signals
	integer tb_test_case;
	reg tb_expected_edge;

	// Clock generation block
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	// DUT Portmap
	gen_pos_edge_detect DUT(.clk(tb_clk), .n_rst(tb_n_rst), .sig(tb_sig), .sig_edge(tb_edge));

	initial
	begin
		// testcase #1 (rising edge)
		tb_test_case = 1;
		tb_sig = 0;
		tb_n_rst = 1;
		tb_n_rst = 0;
		tb_expected_edge = 0;
		#3;
		tb_n_rst = 1;
		#(CLK_PERIOD * 2);
		
		
		
		@(negedge tb_clk);
		tb_sig = 1;
		
		@(posedge tb_clk);
		@(posedge tb_clk);
		tb_expected_edge = 1;
		#2;
		if (tb_edge == tb_expected_edge) begin
			$info("Correct edge for testcase # %d", tb_test_case);
		end
		else begin
			$error("Incorrect edge for testcase # %d", tb_test_case);
		end

		@(posedge tb_clk);
		tb_expected_edge = 0;
		#2;
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct clockcycle for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect clockcycle for testcase #%d", tb_test_case);
		end

		
		// testcase #2 (sig held high)
		tb_test_case = 2;
		tb_sig = 1;
		tb_expected_edge = 0;
		@(posedge tb_clk);
		@(posedge tb_clk);
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct edge for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect edge for testcase #%d", tb_test_case);
		end
		
		// testcase #3 (sig held high)
		tb_test_case = 3;
		tb_sig = 1;
		tb_expected_edge = 0;
		@(posedge tb_clk);
		@(posedge tb_clk);
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct edge for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect edge for testcase #%d", tb_test_case);
		end

		// testcase #4 (falling edge)
		@(negedge tb_clk);
		tb_test_case = 4;
		tb_sig = 0;
		
		@(posedge tb_clk);
		tb_expected_edge = 0;
		#2;
		
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct edge for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect edge for testcase #%d", tb_test_case);
		end
		
		@(posedge tb_clk);
		tb_expected_edge = 0;
		#2;
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct clockcycle for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect clockcycle for testcase #%d", tb_test_case);
		end


		// testcase #5 (n_rst 1 -> 0)
		@(posedge tb_clk);
		tb_test_case = 5;
		tb_sig = 1;
		tb_n_rst = 0;
		
		#(CLK_PERIOD);
		@(negedge tb_clk);
		tb_n_rst = 1;

		@(posedge tb_clk);
		@(posedge tb_clk);
		tb_expected_edge = 1;
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct edge for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect edge for testcase #%d", tb_test_case);
		end
		
		@(posedge tb_clk);
		tb_expected_edge = 0;
		#2;
		if (tb_edge == tb_expected_edge) 
		begin
			$info("Correct clockcycle for testcase #%d", tb_test_case);
		end
		else begin
			$error("Incorrect clockcycle for testcase #%d", tb_test_case);
		end

		
	end
endmodule		