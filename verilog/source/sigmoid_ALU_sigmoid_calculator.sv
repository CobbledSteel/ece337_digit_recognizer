// $Id: $
// File name:   sigmoid_ALU_sigmoid_calculator.sv
// Created:     4/10/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: calculates a 4 bit sigmoid ALU output from a 13 bit input.

module sigmoid_ALU_sigmoid_calculator
(
	input  wire [13:0] accum,
	input  wire [3:0]  bias,
	output wire [3:0]  sigma
);

reg [13:0] sum;
reg [4:0] shifted_bias;
reg [3:0] sigma_reg;
assign sigma = sigma_reg;

always_comb
begin
	shifted_bias = {bias,1'b0};
	sum = $signed(shifted_bias) + $signed(accum);
	if ($signed(sum) < -5)
		sigma_reg = 4'b0000;
	else if($signed(sum) == -5 || $signed(sum) == -4 || $signed(sum) == -3)
		sigma_reg = 4'b0001;
	else if($signed(sum) == -2)
		sigma_reg = 4'b0010;
	else if($signed(sum) == -1)
		sigma_reg = 4'b0011;
	else if($signed(sum) == 0)
		sigma_reg = 4'b0100;
	else if($signed(sum) == 1)
		sigma_reg = 4'b0101;
	else if($signed(sum) == 2)
		sigma_reg = 4'b0110;
	else if($signed(sum) == 5 || $signed(sum) == 4 || $signed(sum) == 3)
		sigma_reg = 4'b0111;
	else 
		sigma_reg = 4'b1000;
end

endmodule
