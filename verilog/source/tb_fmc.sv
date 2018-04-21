// $Id: $
// File name:   tb_fmc.sv
// Created:     4/11/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Testbench code for flash memory countroller

`timescale 1ns / 10ps

module tb_fmc();
	
	// Define local parameters used by the test bench
	localparam	CLK_PERIOD = 5;
		
	// Declare DUT portmap signals
	integer testcase = 0;
	reg tb_clk, tb_n_rst, tb_ready;		//inputs
	reg [15:0] tb_address, tb_data;		//inputs
	reg tb_ce, tb_oe, tb_we;		//outputs
	reg [15:0] tb_data_out, tb_address_in;	//outputs

	// Declare test bench signals
	integer tb_test_case;
	reg [15:0] addr_vec [0:5] = '{16'd0, 16'd3, 16'd5, 16'd1, 16'd2, 16'd4};
	reg [15:0] data_vec [0:5] = '{16'd0, 16'd1, 16'd11, 16'd111, 16'd1111, 16'd11111};

	// Clock generation block
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end
	
	// DUT Portmap
	fmc DUT(
		.clk(tb_clk), 
		.n_rst(tb_n_rst), 
		.ready(tb_ready),
		.address(tb_address),
		.data(tb_data),
		.data_out(tb_data_out), // outputs
		.address_in(tb_address_in),
		.ce(tb_ce), .oe(tb_oe), .we(tb_we)
	);

	task send_stuff (integer addr, integer start, integer readcycle);
	begin
		#(CLK_PERIOD * start);

		tb_address = addr_vec[addr];
		tb_ready = 1;
		#(CLK_PERIOD);
		tb_ready = 0;
		
		#(CLK_PERIOD * readcycle);
		case(tb_address_in)
			16'd0 : begin 
				tb_data = data_vec[0];
				end
			16'd1 : begin 
				tb_data = data_vec[1];
				end
			16'd2 : begin 
				tb_data = data_vec[2];
				end
			16'd3 : begin 
				tb_data = data_vec[3];
				end
			16'd4 : begin 
				tb_data = data_vec[4];
				tb_n_rst = 1'b0;
				#(CLK_PERIOD * 2);
				tb_n_rst = 1'b1;
				end
			16'd5 : begin 
				tb_data = data_vec[5];
				end
		endcase
	end
	endtask
	
	initial
	begin
		tb_n_rst = 1'b0;
		tb_ready = 1'b0;
		tb_address = 16'b0;
		tb_data = 16'b0;
		#(CLK_PERIOD);
		tb_n_rst = 1'b1;
	
		// testcase #1
		// maximum read cycle at 11*5ns = 55ns
		testcase = 1;
		send_stuff(testcase,1,11); 
		
		// testcase #2
		// read cycle at 9*45ns
		// starts early bypass idle
		testcase = 2;
		send_stuff(testcase,4,9);
		
		// testcase #3
		// read cycle at 10*5ns
		// read after idle
		testcase = 3;
		send_stuff(testcase,10,10);

		// testcase #4
		// address ready interuption
		// ready signal is ignored
		testcase = 4;
		send_stuff(testcase,1,10);	

		// testcase #5
		// reset
		testcase = 5;
		send_stuff(testcase,5,10);
	end
		
endmodule 
