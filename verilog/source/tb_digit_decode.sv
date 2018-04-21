// $Id: $
// File name:   tb_digit_decode.sv
// Created:     4/4/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Test bench for the digit decode block

`timescale 1ns / 100ps

module tb_digit_decode
();

  // Define parameters
  // basic test bench parameters
  localparam	CLK_PERIOD	= 5;
	
  // Shared Test Variables
  reg tb_clk;

  // Clock generation block
  always
  begin
    tb_clk = 1'b0;
    #(CLK_PERIOD/2.0);
    tb_clk = 1'b1;
    #(CLK_PERIOD/2.0);
  end

  //DUT PORTMAP SIGNALS
  reg [3:0] i;
  reg [3:0] max_index;
  reg tb_n_rst;
  reg tb_network_done;
  reg [0:9][3:0] tb_digit_weights;
  wire [3:0] tb_detected_digit;


  // Declare test bench signals
  integer tb_test_case;


  //DUT PORTMAP
  digit_decode DUT (.clk(tb_clk), .n_rst(tb_n_rst), .network_done(tb_network_done), .digit_weights(tb_digit_weights), .detected_digit(tb_detected_digit));

  //ACTUAL TESTING

  initial
  begin

    //TEST CASE 1 --------- ASSERT n_rst
      tb_test_case = 1;
      tb_n_rst = 1'b0;
      @(posedge tb_clk);
      tb_n_rst = 1'b1;
      @(posedge tb_clk);
      
      assert (tb_detected_digit == 4'b0000) begin
        $info("TEST CASE %d PASSED", tb_test_case);
      end else begin
	$error("TEST CASE %d FAILED", tb_test_case);
      end


      @(posedge tb_clk);


    //TEST CASE 2 --------- ASSERT network_done
      tb_test_case = 2;
      tb_n_rst = 1'b0;
      @(posedge tb_clk);
      tb_n_rst = 1'b1;
      @(posedge tb_clk);
      
      tb_network_done = 1'b1;
      @(posedge tb_clk);

      assert (tb_detected_digit == 4'b0000) begin
        $info("TEST CASE %d PASSED", tb_test_case);
      end else begin
	$error("TEST CASE %d FAILED", tb_test_case);
      end

      tb_network_done = 1'b0;
      @(posedge tb_clk);
      @(posedge tb_clk);

    //TEST CASE 3 --------- Zero Vector
      tb_test_case = 3;
      tb_n_rst = 1'b0;
      @(posedge tb_clk);
      tb_n_rst = 1'b1;
      @(posedge tb_clk);
      
      tb_digit_weights = {4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000};

      wait_vector();

      assert (tb_detected_digit == 4'b0000) begin
        $info("TEST CASE %d PASSED", tb_test_case);
      end else begin
	$error("TEST CASE %d FAILED", tb_test_case);
      end


      @(posedge tb_clk);

    //TEST CASE 3 --------- One Max
      tb_test_case = 3;
      tb_n_rst = 1'b0;
      @(posedge tb_clk);
      tb_n_rst = 1'b1;
      @(posedge tb_clk);
      
      tb_digit_weights = {4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b1000, 4'b0000, 4'b0000, 4'b0000, 4'b0000};

      wait_vector();

      assert (tb_detected_digit == 4'b0101) begin
        $info("TEST CASE %d PASSED", tb_test_case);
      end else begin
	$error("TEST CASE %d FAILED", tb_test_case);
      end


      @(posedge tb_clk);

    //TEST CASES --------- Randomized Values for Digit Weights
	
	for (tb_test_case = 4; tb_test_case < 101; tb_test_case++) begin
		tb_n_rst = 1'b0;
		@(posedge tb_clk);
		tb_n_rst = 1'b1;
		@(posedge tb_clk);

		randomize_vector();
		det_max_index();
		wait_vector();

		assert (tb_detected_digit == max_index) begin
			$info("TEST CASE %d PASSED", tb_test_case);
		end else begin
			$error("TEST CASE %d FAILED", tb_test_case);
		end
	end

      @(posedge tb_clk);

  end

  task wait_vector ();
	tb_network_done = 1'b1;
	@(posedge tb_clk);
	tb_network_done = 1'b0;
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);
	@(posedge tb_clk);	
	@(posedge tb_clk);
  endtask

  task randomize_vector();
	for (i = 0; i < 10; i++) begin
		tb_digit_weights[i] = $urandom%9;
	end
  endtask

  task det_max_index();
        reg [3:0] max_val;
        max_val = 4'b0000;
        max_index = 4'b0000;
	for (i = 0; i < 10; i++) begin
		if (tb_digit_weights[i] > max_val) begin
			max_index = i;
			max_val = tb_digit_weights[i];
		end
	end
  endtask

endmodule