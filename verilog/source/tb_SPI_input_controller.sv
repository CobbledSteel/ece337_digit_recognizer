// $Id: $
// File name:   sigmoid_ALU.sv
// Created:     4/11/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0 Final module revision 
// Description: Test bench for the SPI input controller

`timescale 1ns / 10ps

module tb_SPI_input_controller();

parameter CLK_PERIOD = 5;
parameter SCK_PERIOD = 83;

reg tb_clk;
reg tb_n_rst;

reg tb_SS;
reg tb_MOSI;
reg tb_SCK;
reg tb_test_SCK;

reg tb_SCK_enable;

reg [7:0] tb_SPI_in;
reg  tb_shift_SPI;
reg  tb_calculate_cost;
reg  tb_write_en;
reg  [9:0] tb_expected_label;

reg tb_data_ready;

integer i;
integer k;
integer temp_data;

SPI_input_controller DUT 
(
	.clk(tb_clk),
	.n_rst(tb_n_rst),
	.MOSI(tb_MOSI),
	.SCK(tb_SCK),
	.SS(tb_SS),
	.data_ready(tb_data_ready),
	.shift_SPI(tb_shift_SPI),
	.SPI_in(tb_SPI_in),
	.write_en(tb_write_en),
	.calculate_cost(tb_calculate_cost),
	.expected_label(tb_expected_label)
);

always
begin
	tb_clk = 0;
	#(CLK_PERIOD/2);
	tb_clk = 1;
	#(CLK_PERIOD/2);
end

always
begin
	tb_SCK = 0;
	tb_test_SCK = 0;
	#(SCK_PERIOD/2);
	tb_SCK = tb_SCK_enable;
	tb_test_SCK = 1;
	#(SCK_PERIOD/2);
end

task send_byte(integer data);
begin
	temp_data = data;
	@(negedge tb_test_SCK)
	tb_SCK_enable = 1;
	for(i=0; i<8; i++)
	begin
		tb_MOSI = data[0];
		data = data / 2;
		@(negedge tb_test_SCK)
		data = data;
	end
	@(negedge tb_clk)
	@(negedge tb_clk)
	if(tb_SPI_in != temp_data) $error("SPI data not clocked in correctly");
	tb_SCK_enable = 0;
end
endtask

initial 
begin
tb_SS = 1;
tb_MOSI = 1;
tb_SCK_enable = 0;
tb_data_ready = 0;
tb_data_ready = 1;
tb_SPI_in = 0;
tb_n_rst = 1;
#5
tb_n_rst = 0;
#5
tb_n_rst = 1;
#20;
tb_SS = 0;

send_byte(0);
for(k=0; k<72; k++)
begin
	send_byte(k);
end
send_byte(9);
send_byte(10);
send_byte(11);
send_byte(1);
send_byte(7);
tb_data_ready = 0;
send_byte(1);
send_byte(7);
send_byte(0);

end

endmodule
