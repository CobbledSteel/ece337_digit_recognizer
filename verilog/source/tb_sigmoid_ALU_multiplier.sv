// $Id: $
// File name:   tb_sigmoid_ALU_multiplier.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: test bench for sigmoid ALU multiplier

`timescale 1ns / 10ps

module tb_sigmoid_ALU_multiplier ();

	localparam CLK_PERIOD = 5;

	reg     [3:0] tb_signval;
	reg     [3:0] tb_unsignval;
	wire    [7:0] tb_mult_out;

	integer i;
	integer j;

	sigmoid_ALU_multiplier DUT (.signval(tb_signval), .unsignval(tb_unsignval), .out(tb_mult_out));	


	initial
	begin
		tb_signval = 0;
		tb_unsignval = 0;
		#(CLK_PERIOD);

		for (i = -8; i < 8; i++)
		begin
			for(j=0; j < 16; j++)
			begin
				tb_signval = i;
				tb_unsignval = j;	
				#(CLK_PERIOD-0.1);
				if ($signed(tb_mult_out) != i*j) $error("%d * %d != %d", i, j, $signed(tb_mult_out));
				#(0.1);
				
			end
		end

	end

endmodule
