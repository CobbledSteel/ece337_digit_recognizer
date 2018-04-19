
`timescale 1ns / 10ps

module tb_sigmoid_ALU ();

parameter IMAGE_WIDTH = 12;
parameter IMAGE_SIZE = IMAGE_WIDTH ** 2;
parameter NUMBER_OF_LINES = IMAGE_SIZE / 4;
parameter CLK_PERIOD = 5;

integer image_file;
integer i;
integer j;
integer k;
integer l;
integer max_index;
integer max;
integer total_detected;

integer total_sum;
integer sum_of_4;

integer current_w;
integer current_i;
integer current_prod;


integer hidden_weights;
integer output_weights;
integer hidden_biases;
integer output_biases;
integer logfile;
reg [7:0][3:0] hidden_outputs;
reg [9:0][3:0] outer_outputs;
reg [7:0][15:0] hidden_sums;
reg [9:0][15:0] outer_sums;
//  [8 neruons][36 rows][4 per row][4 bits]
reg [7:0][35:0][3:0][3:0] h_weights;
//  [10 neruons][2 rows][4 per row][4 bits]
reg [9:0][1:0][3:0][3:0] o_weights;
integer h_biases [7:0];
reg [9:0][3:0] o_biases;
reg [35:0][3:0][3:0] img_values;
integer expected_label;

integer img_values_int [35:0][3:0];
integer h_weights_int [7:0][35:0][3:0];


reg [3:0] tb_weight1;
reg [3:0] tb_weight2;
reg [3:0] tb_weight3;
reg [3:0] tb_weight4;

reg [3:0] tb_input1;
reg [3:0] tb_input2;
reg [3:0] tb_input3;
reg [3:0] tb_input4;

reg [3:0] tb_bias;

wire [15:0] tb_accum_out;

reg tb_accumulate;
reg tb_clear;

reg tb_clk;

wire [3:0] tb_out;

sigmoid_ALU DUT 
(
	.clk(tb_clk),
	.weight1(tb_weight1),
	.weight2(tb_weight2),
	.weight3(tb_weight3),
	.weight4(tb_weight4),
	.input1(tb_input1),
	.input2(tb_input2),
	.input3(tb_input3),
	.input4(tb_input4),
	.bias(tb_bias),
	.clear(tb_clear),
	.accumulate(tb_accumulate),
	.accum_out(tb_accum_out),
	.out(tb_out)
);

task load_image;
begin
	$fscanf(image_file, "Expected digit: %d", expected_label);
	for( i = 0; i < 36; i++)
	begin
		$fscanf(image_file, "%d %d %d %d", img_values_int[i][0], img_values_int[i][1], img_values_int[i][2], img_values_int[i][3]);
	end
end
endtask

task load_weights;
begin
	for( i = 0; i < 8; i++)
	begin
		for( j = 0; j < 36; j++)
		begin
			$fscanf(hidden_weights, "%d %d %d %d", h_weights_int[i][j][0], h_weights_int[i][j][1], h_weights_int[i][j][2], h_weights_int[i][j][3]);
		end
	end

	for( i = 0; i < 10; i++)
	begin
		for( j = 0; j < 2; j++)
		begin
			$fscanf(output_weights, "%d %d %d %d", o_weights[i][j][0], o_weights[i][j][1], o_weights[i][j][2], o_weights[i][j][3]);
		end
	end
end
endtask

task load_biases;
begin
	for( i = 0; i < 8; i++)
	begin
		$fscanf(hidden_biases, "%d", h_biases[i]);
	end
	for( i = 0; i < 10; i++)
	begin
		$fscanf(output_biases, "%d", o_biases[i]);
	end
end
endtask

task run_test;
begin
	load_image;
	//$display("loading image");
	//$display("starting hidden layer");
	for(i=0; i<8;i++)
	begin
		@(negedge tb_clk)
		tb_clear=1;
		@(negedge tb_clk)
		tb_clear=0;

		tb_bias = h_biases[i];
		total_sum = 0;
		for(j=0;j<36;j++)
		begin
			sum_of_4 = 0;
			@(negedge tb_clk);
			tb_weight1 = h_weights_int[i][j][0];
			tb_weight2 = h_weights_int[i][j][1];
			tb_weight3 = h_weights_int[i][j][2];
			tb_weight4 = h_weights_int[i][j][3];
			tb_input1 = img_values_int[j][0];
			tb_input2 = img_values_int[j][1];
			tb_input3 = img_values_int[j][2];
			tb_input4 = img_values_int[j][3];
			@(negedge tb_clk);
			@(negedge tb_clk);
			for(l=0; l<4; l++)
			begin
				#(0.5);
				current_w = h_weights_int[i][j][l];
				current_i = img_values_int[j][l];
				current_prod = img_values_int[j][l]*h_weights_int[i][j][l];
				sum_of_4 += img_values_int[j][l]*h_weights_int[i][j][l];
				total_sum += img_values_int[j][l]*h_weights_int[i][j][l];
				$fwrite(logfile, "%d\n", total_sum);
			end
			tb_accumulate = 1;
			@(negedge tb_clk);
			tb_accumulate = 0;
			if ($signed(tb_accum_out) != $signed(total_sum))
				$error("ALU sum is %d but sum is %d", $signed(hidden_sums[i]), $signed(total_sum));
		end
		hidden_outputs[i] = tb_out;
		hidden_sums[i] = tb_accum_out;
		//$display("hidden output %d is %d", i, hidden_outputs[i]);
		//$display("tb_out: %d", tb_out);
	end
	for(i=0; i<10;i++)
	begin
		@(negedge tb_clk)
		tb_clear=1;
		@(negedge tb_clk)
		tb_clear=0;

		tb_bias = o_biases[i];
		@(negedge tb_clk);
		tb_weight1 = o_weights[i][0][0];
		tb_weight2 = o_weights[i][0][1];
		tb_weight3 = o_weights[i][0][2];
		tb_weight4 = o_weights[i][0][3];
		tb_input1 = hidden_outputs[0];
		tb_input2 = hidden_outputs[1];
		tb_input3 = hidden_outputs[2];
		tb_input4 = hidden_outputs[3];
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_accumulate = 1;
		@(negedge tb_clk);
		tb_accumulate = 0;

		@(negedge tb_clk);
		tb_weight1 = o_weights[i][1][0];
		tb_weight2 = o_weights[i][1][1];
		tb_weight3 = o_weights[i][1][2];
		tb_weight4 = o_weights[i][1][3];
		tb_input1 = hidden_outputs[4];
		tb_input2 = hidden_outputs[5];
		tb_input3 = hidden_outputs[6];
		tb_input4 = hidden_outputs[7];
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_accumulate = 1;
		@(negedge tb_clk);
		tb_accumulate = 0;
		outer_outputs[i] = tb_out;
		outer_sums[i] = tb_accum_out;
	end
	//$display("Expected Label: %d", expected_label);
	//for (i=0;i<10;i++)
	//begin
	//	$display("Ouput %d: %d", i, outer_outputs[i]);
	//end
	max = 0;
	max_index = 0;
	for (i=0; i<10;i++)
	begin
		if (outer_outputs[i] > max)
		begin
			max = outer_outputs[i];
			max_index = i;
		end
	end
	$display("Expected digit: %d", expected_label);
	$display("Detected digit: %d", max_index);
	$write("Hidden: ");
	for (i=0;i<8;i++)
	begin
		$write("%6d", i);
	end
	$write("\n        ");
	for (i=0;i<8;i++)
	begin
		$write("%6d", $signed(hidden_sums[i]));
	end
	$write("\n        ");
	for (i=0;i<8;i++)
	begin
		$write("%6d", hidden_outputs[i]);
	end
	$write("\n");
	$write("Output: ");
	for (i=0;i<10;i++)
	begin
		$write("%6d", i);
	end
	$write("\n        ");
	for (i=0;i<10;i++)
	begin
		$write("%6d", $signed(outer_sums[i]));
	end
	$write("\n        ");
	for (i=0;i<10;i++)
	begin
		$write("%6d", outer_outputs[i]);
	end
	$write("\n\n");
	if(expected_label == max_index)
		total_detected = total_detected + 1;
end
endtask


always 
begin
	tb_clk = 0;
	#(CLK_PERIOD/2);
	tb_clk = 1;
	#(CLK_PERIOD/2);
end

initial
begin
	hidden_weights = $fopen("docs/hidden_weights.txt","r");
	hidden_biases = $fopen("docs/hidden_biases.txt","r");
	output_weights = $fopen("docs/output_weights.txt","r");
	output_biases = $fopen("docs/output_biases.txt","r");
	image_file = $fopen("docs/images.txt","r");
	logfile = $fopen("docs/log.txt", "w");
	load_weights;
	load_biases;
	tb_accumulate = 0;
	tb_clear = 0;
	tb_bias = 0;
	@(negedge tb_clk);
	tb_clear = 1;
	@(negedge tb_clk);
	tb_clear = 0;
	@(negedge tb_clk)
	total_detected = 0;
	for(k=0; k < 1000; k++)
	begin
		run_test;
	end
	$display("Total tested: %d, Total detected: %d", k, total_detected);
	$fclose();
end

endmodule
