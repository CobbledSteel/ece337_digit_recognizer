// $Id: $
// File name:   tb_digit_recognizer.sv
// Created:     4/21/2018
// Author:      Group
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Top level testbench for digit recognizer

`timescale 1ns / 10ps

module tb_digit_recognizer_final ();

parameter CLK_PERIOD = 5;
parameter SPI_PERIOD = 83;

reg tb_clk, tb_n_rst;
reg tb_SCK, tb_SS, tb_MOSI;
wire tb_MISO;
wire [15:0] tb_data;
wire tb_ce, tb_oe, tb_we;
wire [15:0] tb_address;

reg tb_SCK_enable;
reg tb_test_SCK;
integer i,j,k,m,n;

integer img_fptr;
integer expected_val;
reg [0:3][3:0] temp;

digit_recognizer_final DUT 
(
	.clk(tb_clk), 
	.n_rst(tb_n_rst), 
	.SCK(tb_SCK), 
	.SS(tb_SS), 
	.MOSI(tb_MOSI), 
	.MISO(tb_MISO), 
	.data(tb_data), 
	.address(tb_address),
	.ce(tb_ce), 
	.oe(tb_oe), 
	.we(tb_we)
);

external_fm FLASH 
(
	.oe(tb_oe),
	.ce(tb_ce),
	.we(tb_we),
	.address(tb_address),
	.data(tb_data)
);

task send_byte(integer data);
begin
	@(negedge tb_test_SCK);
	tb_SS = 0;
	tb_SCK_enable = 1;
	for(i=0; i < 8; i++)
	begin
		tb_MOSI = data[0];
		data = data >> 1;
		@(negedge tb_test_SCK);
	end
	tb_SCK_enable = 0;
	tb_SS = 1;
end
endtask

task send_image();
begin
	$fscanf(img_fptr, "Expected digit: %d", expected_val);
	for(j = 0; j < 36; j++)
	begin
		$fscanf(img_fptr, "%d %d %d %d", temp[0], temp[1], temp[2], temp[3]);
		//send_byte({temp[1],temp[0]});
		//send_byte({temp[3],temp[2]});
		
		send_byte({4'd2,4'd1});
		send_byte({4'd4,4'd3});
	end
end
endtask


always 
begin
	tb_clk = 0;
	#(CLK_PERIOD/2.0);
	tb_clk = 1;
	#(CLK_PERIOD/2.0);
end

always 
begin
	tb_SCK = 0;
	tb_test_SCK = 0;
	#(SPI_PERIOD/2.0);
	tb_SCK = tb_SCK_enable;
	tb_test_SCK = 1;
	#(SPI_PERIOD/2.0);
end

initial
begin
	tb_n_rst = 0;
	tb_MOSI = 1;
	tb_SCK = 0;
	tb_SS = 1;
	tb_SCK_enable = 0;
	img_fptr = $fopen("docs/images.txt", "r");
	#5;
	tb_n_rst = 1;
	send_byte(0);
	send_image();
	send_byte(255);
	#30000;
	send_byte(255);
end

endmodule

