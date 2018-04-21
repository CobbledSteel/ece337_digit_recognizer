module sigmoidRegisters
(
	input wire clk,
	input wire write_en,
	input wire [0:3] data_in,
	input wire [0:4] address,
	output wire [0:3] data_out,
	output wire [0:9][0:3] digit_weights 
);
	reg [0:3] nextData;
	reg [0:3] chooseData;
	wire [0:7][0:3] outputs;

	assign data_out = chooseData;

	genvar i;
	generate
	for (i = 0; i<=7 ;i = i + 1) begin
		sigmoidRegisters_addressableReg #(.ADDRESS(i)) neuronReg(.clk(clk), .write_en(write_en), .data_in(data_in), .data_out(outputs[i]), .address_in(address));
	end
	endgenerate

	generate
	for(i = 0; i<=9; i = i + 1) begin
		sigmoidRegisters_addressableReg #(.ADDRESS(i + 8)) weightReg(.clk(clk), .write_en(write_en), .data_in(data_in), .data_out(digit_weights[i]), .address_in(address));
	end
	endgenerate

	always_comb
	begin
		if(0 == address)
			chooseData = outputs[0];
		else if(address == 1)
			chooseData = outputs[1];
		else if(address == 2)
			chooseData = outputs[2];
		else if(address == 3)
			chooseData = outputs[3];
		else if(address == 4)
			chooseData = outputs[4];
		else if(address == 5)
			chooseData = outputs[5];
		else if(address == 6)
			chooseData = outputs[6];
		else if(address == 7)
			chooseData = outputs[7];
		else 
			chooseData = '1;
	end

endmodule
