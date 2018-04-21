module pixelData_PTPSR
(
	input wire shift_en,
	input wire clk,
	input wire [7:0] parallel_in,
	output wire [7:0] parallel_out
);

	reg [7:0] currentData;
	reg [7:0] next_val;

	assign parallel_out = currentData;

	always_comb
	begin
		if(shift_en == 1)
			next_val = parallel_in;
		else
			next_val = currentData;
	end

	always_ff @ (posedge clk)
	begin : shiftreg
	
		currentData <= next_val;
	end
endmodule
