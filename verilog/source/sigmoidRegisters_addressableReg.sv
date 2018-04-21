module sigmoidRegisters_addressableReg #(parameter ADDRESS=0)

(
	input wire write_en,
	input wire clk,
	input wire [3:0] data_in,
	input wire [4:0] address_in,
	output wire [3:0] data_out
);
	
	reg [3:0] currentData;
	reg [3:0] next_val;

	assign data_out = currentData;

	always_comb
	begin
		if(write_en == 1 && address_in == ADDRESS)
			next_val = data_in;
		else
			next_val = currentData;
	end

	always_ff @ (posedge clk)
	begin : register	
		currentData <= next_val;
	end

endmodule
