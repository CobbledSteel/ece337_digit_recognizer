// $Id: $
// File name:   tb_sigmoid_ALU_multiplier.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: test bench for sigmoid ALU multiplier

`timescale 1ns / 10ps

module tb_sigmoid_ALU_4_way_adder ();

	localparam CLK_PERIOD = 5;

	reg     [63:0] tb_test_vals;
	wire    [7:0]  tb_in1;
	wire    [7:0]  tb_in2;
	wire    [7:0]  tb_in3;
	wire    [7:0]  tb_in4;
	wire    [9:0]  tb_sum_out;

	assign tb_in1 = tb_test_vals[7:0];
	assign tb_in2 = tb_test_vals[15:8];
	assign tb_in3 = tb_test_vals[23:16];
	assign tb_in4 = tb_test_vals[31:24];

	sigmoid_ALU_4_way_adder DUT (.in1(tb_in1), .in2(tb_in2), .in3(tb_in3), .in4(tb_in4), .out(tb_sum_out));


	initial
	begin
		tb_test_vals = 0;
		#(CLK_PERIOD);

		for (tb_test_vals = 0; tb_test_vals < 2**32; tb_test_vals = tb_test_vals + 19743)
		begin
			#(CLK_PERIOD-0.1);
			if($signed(tb_in1) + $signed(tb_in2) + $signed(tb_in3) + $signed(tb_in4) != $signed(tb_sum_out)) $error("Bad sum");
			#(0.1);
		end

	end

endmodule
