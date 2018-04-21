module pixelData
(
	input wire clk,
	input wire shift_SPI,
	input wire shift_network,
	input wire write_en,
	input wire [7:0] spi_in,
	output wire [7:0] pixel_data_1,
	output wire [7:0] pixel_data_2
);
	wire [575:0] pixelData;
	wire chooseShift;
	reg [7:0] chooseIn;

	pixelData_PTPSR firstReg(.clk(clk), .shift_en(chooseShift), .parallel_in(chooseIn),.parallel_out(pixelData[7:0]));

	genvar i;
	generate
	for (i = 1; i<=71 ;i = i + 1) begin
		pixelData_PTPSR dataReg(.clk(clk), .shift_en(chooseShift), .parallel_in(pixelData[(i-1)*8:((i-1)*8)+7]), .parallel_out(pixelData[i*8:(i*8)+7]));
	end
	endgenerate

	assign chooseShift = shift_SPI | shift_network;
	assign pixel_data_1 = pixelData[567:560];
	assign pixel_data_2 = pixelData[575:568];
	
	always_comb
	begin
		if(write_en == 1)
			chooseIn = spi_in;
		else
			chooseIn = pixelData[575:568];
	end

endmodule
