module pixelData
(
	input wire clk,
	input wire shift_SPI,
	input wire shift_network,
	input wire write_en,
	input wire [0:7] spi_in,
	output wire [0:7] pixel_data_1,
	output wire [0:7] pixel_data_2
);
	wire [0:575] pixelData;
	wire chooseShift;
	reg [0:7] chooseIn;

	pixelData_PTPSR firstReg(.clk(clk), .shift_en(chooseShift), .parallel_in(chooseIn),.parallel_out(pixelData[0:7]));

	genvar i;
	generate
	for (i = 1; i<=71 ;i = i + 1) begin
		pixelData_PTPSR dataReg(.clk(clk), .shift_en(chooseShift), .parallel_in(pixelData[(i-1)*8:((i-1)*8)+7]), .parallel_out(pixelData[i*8:(i*8)+7]));
	end
	endgenerate

	assign chooseShift = shift_SPI | shift_network;
	assign pixel_data_1 = pixelData[560:567];
	assign pixel_data_2 = pixelData[568:575];
	
	always_comb
	begin
		if(write_en == 1)
			chooseIn = spi_in;
		else
			chooseIn = pixelData[568:575];
	end

endmodule
