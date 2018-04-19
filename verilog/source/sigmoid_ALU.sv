// $Id: $
// File name:   sigmoid_ALU.sv
// Created:     4/11/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: top level file for the Sigmoid ALU

module sigmoid_ALU 
(
	input wire clk,
	input wire [3:0] weight1,
	input wire [3:0] weight2,
	input wire [3:0] weight3,
	input wire [3:0] weight4,
	input wire [3:0] input1,
	input wire [3:0] input2,
	input wire [3:0] input3,
	input wire [3:0] input4,
	input wire [3:0] bias,
	input wire accumulate,
	input wire clear,
	output wire [4:0] out,
	output wire [15:0] accum_out
);

wire [7:0] mult1;
wire [7:0] mult2;
wire [7:0] mult3;
wire [7:0] mult4;

wire [9:0] added_nxt;
reg  [9:0] added_reg;


sigmoid_ALU_multiplier M1 (.signval(weight1), .unsignval(input1), .out(mult1));
sigmoid_ALU_multiplier M2 (.signval(weight2), .unsignval(input2), .out(mult2));
sigmoid_ALU_multiplier M3 (.signval(weight3), .unsignval(input3), .out(mult3));
sigmoid_ALU_multiplier M4 (.signval(weight4), .unsignval(input4), .out(mult4));

sigmoid_ALU_4_way_adder ADDER (.in1(mult1), .in2(mult2), .in3(mult3), .in4(mult4), .out(added_nxt));

sigmoid_ALU_accumulator ACCUM (.clk(clk), .clear(clear), .accumulate(accumulate), .newval(added_reg), .out(accum_out));

sigmoid_ALU_sigmoid_calculator SIGM (.accum(accum_out[15:2]), .bias(bias), .sigma(out));

always_ff @ (posedge clk)
begin
	added_reg = added_nxt;
end



endmodule
// $Id: $
// File name:   sigmoid_ALU_4_way_adder.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: 4 way signed adder for the sigmoid ALU

module sigmoid_ALU_4_way_adder
(
	input wire [7:0] in1,
	input wire [7:0] in2,
	input wire [7:0] in3,
	input wire [7:0] in4,
	output wire [9:0] out
);

assign out = $signed(in1) + $signed(in2) + $signed(in3) + $signed(in4);

endmodule
// $Id: $
// File name:   sigmoid_ALU_accumulator.sv
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: accumulator for the sigmoid ALU

module sigmoid_ALU_accumulator 
(
	input wire accumulate,
	input wire clear,
	input wire clk,
	input wire [9:0] newval,
	output reg [15:0] out
);

	reg [15:0] next_out;

	always_ff @ (posedge clk)
	begin
		out <= next_out;
	end

	always_comb
	begin
		if (clear)
			next_out = 0;
		else if (accumulate)
			next_out = $signed(newval) + $signed(out);
		else
			next_out = out;
	end

endmodule
// $Id: $
// File name:   sigmoid_ALU_multiplier
// Created:     4/4/2018
// Author:      Vadim Nikiforov
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Multiplies 4 bit signed and unsigned values (s3.0 and 1.3) to get an 8 bit value (s4.3).
// 


module sigmoid_ALU_multiplier 
(
	input wire [3:0] signval,
	input wire [3:0] unsignval,
	output wire [7:0] out
);


assign out = $signed({signval[3],signval}) * $signed({0, unsignval});

endmodule
			        
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
