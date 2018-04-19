`timescale 1ns / 10ps

module tb_sigmoid_ALU_sigmoid_calculator ();

reg [13:0] tb_accum;
reg [3:0] tb_bias;
wire [3:0] tb_sigma;

sigmoid_ALU_sigmoid_calculator DUT (.accum(tb_accum), .bias(tb_bias), .sigma(tb_sigma));

initial
begin

tb_bias = 0;
tb_accum = 0;

for(tb_accum = -10; $signed(tb_accum) < 10; tb_accum = $signed(tb_accum) + 1)
begin
	#(5);
end

tb_accum = 0;
for(tb_bias = -8; $signed(tb_bias) <= 7; tb_bias = $signed(tb_bias) + 1)
begin
	#(5);
end


end

endmodule
