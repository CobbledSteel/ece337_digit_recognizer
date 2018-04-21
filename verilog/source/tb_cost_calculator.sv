// $Id: $
// File name:   tb_cost_calculator.sv
// Created:     4/11/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Test Bench for Cost Calculator

`timescale 1ns / 100ps

module tb_cost_calculator
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
  int passed_tests = 0;
  reg [3:0] sub_term;
  reg [7:0] sq_term;
  reg [7:0] cost_val;
  reg [5:0] i;
  reg tb_n_rst;
  reg tb_cost_en;
  reg [0:9] tb_expected_label;
  reg [0:9][3:0] tb_digit_weights;
  wire tb_calculation_complete;
  wire [7:0] tb_cost_output;


  // Declare test bench signals
  integer tb_test_case;


  //DUT PORTMAP
  cost_calculator DUT (.clk(tb_clk), .n_rst(tb_n_rst), .cost_en(tb_cost_en), .expected_label(tb_expected_label), .digit_weights(tb_digit_weights), .calculation_complete(tb_calculation_complete), .cost_output(tb_cost_output));

  //ACTUAL TESTING

  initial
  begin

    //TEST CASE 1 --------- ASSERT n_rst
      tb_test_case = 1;
      tb_cost_en = 1'b0;
      tb_n_rst = 1'b0;
      @(posedge tb_clk);
      tb_n_rst = 1'b1;
      @(posedge tb_clk);
      
      assert (tb_cost_output == 8'h00) begin
        $info("TEST CASE %d PASSED", tb_test_case);
	passed_tests++;
      end else begin
	$error("TEST CASE %d FAILED", tb_test_case);
      end


      @(posedge tb_clk);

    //TEST CASE  --------- Randomize Confidence levels and input labels

      for (tb_test_case = 2; tb_test_case < 101; tb_test_case++) begin
        tb_n_rst = 1'b0;
        @(posedge tb_clk);
        tb_n_rst = 1'b1;
        @(posedge tb_clk);
        //State ---> IDLE
        randomize_label();
        randomize_confidence();
        det_cost();
        wait_vector();
        assert (tb_cost_output == cost_val) begin
          $info("TEST CASE %d PASSED", tb_test_case);
	  passed_tests++;
        end else begin
	  $error("TEST CASE %d FAILED", tb_test_case);
        end

        @(posedge tb_clk);
      end


	$info("TEST CASES PASSED: %d", passed_tests);
  end

  task wait_vector ();
	tb_cost_en = 1'b1;
	@(posedge tb_clk);
	tb_cost_en = 1'b0;
	@(posedge tb_clk);
	for (i = 0; i < 50; i++) begin
		@(posedge tb_clk);
	end
  endtask

  task randomize_label();
	tb_expected_label = '0;
	tb_expected_label[$urandom%10] = 1'b1;
  endtask

  task randomize_confidence();
	for (i = 0; i < 10; i++) begin
		tb_digit_weights[i] = $urandom%9;
	end
  endtask

  task det_cost();
        cost_val = 8'h00;
	for (i = 0; i < 10; i++) begin
		if ({tb_expected_label[i], 3'b000} >= tb_digit_weights[i]) begin
			sub_term = $unsigned({tb_expected_label[i], 3'b000}) - $unsigned(tb_digit_weights[i]);
		end else begin
			sub_term = $unsigned(tb_digit_weights[i]) - $unsigned({tb_expected_label[i], 3'b000});
		end
		sq_term = $unsigned(sub_term) * $unsigned(sub_term);
		cost_val = cost_val + (sq_term[6:3]);
	end
  endtask

endmodule