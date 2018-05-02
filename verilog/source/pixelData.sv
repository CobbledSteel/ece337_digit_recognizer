// $Id: $
// File name:   pixelData.sv
// Created:     4/4/2018
// Author:      Dustin Andree
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Pixel data registers for storing a 12x12 image
//              Images are loaded into the pixel data registers from the SPI input
//              controller in the order that they are sent in via SPI.  Each 8 bit 
//              register in the system contains two 4 bit pixel values

module pixelData
(
	input wire clk,
	input wire shift_SPI,
	input wire shift_network,
	input wire network_calc,
	input wire write_en,
	input wire [7:0] spi_in,
	output reg [7:0] pixel_data_1,
	output reg [7:0] pixel_data_2
);
	wire [575:0] pixelData;
	wire chooseShift;
	reg chooseShift_reg;
	reg [7:0] chooseIn;

	// first 8 bit register
	pixelData_PTPSR firstReg(.clk(clk), .shift_en(chooseShift_reg), .parallel_in(chooseIn),.parallel_out(pixelData[7:0]));

	// generated registers
	genvar i;
	generate
	for (i = 1; i<=71 ;i = i + 1) begin
		pixelData_PTPSR dataReg(.clk(clk), .shift_en(chooseShift_reg), .parallel_in(pixelData[((i-1)*8)+7:((i-1)*8)]), .parallel_out(pixelData[(i*8)+7:(i*8)]));
	end
	endgenerate

	// decide if SPI input controller shifts the registers or the network controller
	assign chooseShift = (shift_SPI && ~network_calc) | (shift_network & network_calc);

	always_ff @ (posedge clk)
	begin
		pixel_data_1 = pixelData[567:560];
		pixel_data_2 = pixelData[575:568];
	end

	always_ff @ (posedge clk)
	begin
		chooseShift_reg <= chooseShift;
	end
	
	always_comb
	begin
		if(write_en == 1)
			chooseIn = spi_in;
		else
			chooseIn = pixelData[575:568];
	end

endmodule
