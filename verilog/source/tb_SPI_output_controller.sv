`timescale 1ns / 10ps

module tb_SPI_output_controller();

parameter CLK_PERIOD = 5;
parameter SCK_PERIOD = 83;

reg tb_clk;
reg tb_n_rst;

reg tb_SS;
reg tb_MISO;
reg tb_SCK;
reg tb_test_SCK;

reg tb_SCK_enable;

reg [7:0] tb_SPI_in;
reg  tb_shift_SPI;
reg  tb_cost_ready;
reg  tb_data_ready;
reg  [9:0] tb_expected_label;

reg [7:0] tb_cost_output;
reg [3:0] tb_detected_digit;

reg tb_network_done;

reg [7:0] data;


integer i;
integer k;
integer temp_data;

SPI_output_controller DUT 
(
	.clk(tb_clk),
	.n_rst(tb_n_rst),
	.shift_SPI(tb_shift_SPI),
	.SPI_in(tb_SPI_in),
	.MISO(tb_MISO),
	.SCK(tb_SCK),
	.SS(tb_SS),
	.network_done(tb_network_done),
	.data_ready(tb_data_ready),
	.cost_ready(tb_cost_ready),
	.cost_output(tb_cost_output),
	.detected_digit(tb_detected_digit)
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

task test(integer cost, integer digit);
begin
	tb_SCK_enable = 0;
	tb_cost_ready = 0;
	tb_data_ready = 1;
	tb_SPI_in = 1;
	@(negedge tb_clk)
	tb_shift_SPI = 1;
	@(negedge tb_clk)
	tb_shift_SPI = 0;
	#(200);
	tb_SCK_enable = 1;
	tb_cost_ready = 1;
	tb_cost_output = cost;
	for(i=0;i<8;i++)
	begin
		@(posedge tb_SCK);
		tb_SPI_in = 255;
		data = data >> 1;
		data[7] = tb_MISO;
		@(negedge tb_clk)
		tb_shift_SPI = 1;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
	end
	tb_SCK_enable = 0;
	if(data != tb_cost_output) $error("Cost not properlty sent!");
	tb_SS = 1;
	tb_data_ready = 0;

 	#400;
	tb_SS = 0;
	tb_SCK_enable = 0;
	tb_cost_ready = 0;
	tb_data_ready = 1;
	tb_SPI_in = 1;
	@(negedge tb_clk)
	tb_shift_SPI = 1;
	@(negedge tb_clk)
	tb_shift_SPI = 0;
	#(200);
	tb_SCK_enable = 1;
	tb_cost_output = cost;
	for(i=0;i<8;i++)
	begin
		@(posedge tb_SCK);
		tb_SPI_in = 255;
		data = data >> 1;
		data[7] = tb_MISO;
		@(negedge tb_clk)
		tb_shift_SPI = 1;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
	end
	tb_SCK_enable = 0;
	if(data != 255) $error("Cost not properlty sent!");
	tb_SS = 1;
	tb_data_ready = 0;

 	#400;
	tb_SS = 0;
	tb_SCK_enable = 0;
	tb_cost_ready = 0;
	tb_data_ready = 1;
	tb_detected_digit = digit;
	tb_network_done = 1;
	tb_SPI_in = 0;
	@(negedge tb_clk)
	tb_shift_SPI = 1;
	@(negedge tb_clk)
	tb_network_done = 0;
	tb_shift_SPI = 0;
	#(200);
	tb_SCK_enable = 1;
	for(i=0;i<8;i++)
	begin
		@(posedge tb_SCK);
		tb_SPI_in = 255;
		data = data >> 1;
		data[7] = tb_MISO;
		@(negedge tb_clk)
		tb_shift_SPI = 1;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
	end
	tb_SCK_enable = 0;
	if(data != tb_detected_digit) $error("Cost not properlty sent!");
	tb_data_ready = 0;
	
 	#400;
	tb_SS = 0;
	tb_SCK_enable = 0;
	tb_cost_ready = 0;
	tb_data_ready = 0;
	tb_detected_digit = digit;
	tb_SPI_in = 0;
	@(negedge tb_clk)
	tb_shift_SPI = 1;
	@(negedge tb_clk)
	tb_network_done = 0;
	tb_shift_SPI = 0;
	#(200);
	tb_SCK_enable = 1;
	for(i=0;i<8;i++)
	begin
		@(posedge tb_SCK);
		tb_SPI_in = 255;
		data = data >> 1;
		data[7] = tb_MISO;
		@(negedge tb_clk)
		tb_shift_SPI = 1;
		@(negedge tb_clk);
		tb_shift_SPI = 0;
	end
	tb_SCK_enable = 0;
	if(data != 255) $error("Cost not properlty sent!");
	tb_data_ready = 0;
end
endtask

initial 
begin
tb_SS = 1;
tb_SCK_enable = 0;
tb_data_ready = 0;
tb_data_ready = 1;
tb_network_done = 0;
tb_SPI_in = 0;
tb_shift_SPI = 0;
tb_n_rst = 1;
tb_detected_digit = 0;
data = 0;
#5
tb_n_rst = 0;
#5
tb_n_rst = 1;
#20;
tb_SS = 0;
test(133,7);


end

endmodule
