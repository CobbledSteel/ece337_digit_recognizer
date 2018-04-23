// Verilog for ECE337 Lab 1
// The Following code is used to compare 2 16-bit quantites, a and b. The code 
// determines whether or not:
// a is greater than b, gt = 1, lt = 0, eq = 0
// a is less than b, gt = 0, lt = 1, eq = 0
// a is equal to b, gt = 0, lt = 0, eq = 1

// Use a tab size of 2 spaces for best viewing results


module comparator
(
	input wire [3:0] a,
	input wire [3:0] b,
	output reg gt = 1'b0,
	output reg lt = 1'b0,
	output reg eq = 1'b0
);

	reg gte = 1'b0;
	reg lte = 1'b0;

	always @ (a, b) begin: COM
		if (a > b) begin
			gte = 1'b1;
			lte = 1'b0;
		end else if (b > a) begin
			lte = 1'b1;
			gte = 1'b0;
		end else begin
			gte = 1'b1;
			lte = 1'b1;
		end
		
		if (!(lte == 1'b1)) begin
			gt = 1'b1;
			lt = 1'b0;
			eq = 1'b0;
		end else if (!(gte == 1'b1)) begin
			gt = 1'b0;
			lt = 1'b1;
			eq = 1'b0;
		end else begin
			gt = 1'b0;
			lt = 1'b0;
			eq = 1'b1;
		end
	end
endmodule