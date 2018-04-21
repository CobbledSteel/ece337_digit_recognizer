// $Id: $
// File name:   external_fm.sv
// Created:     4/19/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: External flash memory simulation

module external_fm (
	input wire [15:0] address,
	output wire [15:0] data
);
	// hbias, hweights, 
	reg [0:325] [15:0] data_array;
	reg [3:0] num1, num2, num3, num4;
	integer i,j,k;
	integer fh_biases, fh_weights, fo_biases, fo_weights;
	//integer sample;

	initial begin
	fh_biases = $fopen("docs/hidden_biases.txt","r");
	fh_weights = $fopen("docs/hidden_weights.txt","r");
	fo_biases = $fopen("docs/output_biases.txt","r");
	fo_weights = $fopen("docs/output_weights.txt","r");
	
	k=0;
	for(i=0; i<8; i++) begin
		$fscanf(fh_biases, "%d", data_array[k]);
		k += 1;
		for (j=0; j<36 ; j++) begin
			$fscanf(fh_weights, "%d %d %d %d", num1, num2, num3, num4);
			data_array[k] = {num1,num2,num3,num4};
			//$display("%d Got  %d", k,$signed(data_array[k]));
			k += 1;
		end 
	end

	for(i=0; i<10; i++) begin
		$fscanf(fo_biases, "%d", data_array[k]);
		k += 1;
		
		for (j=0; j<2; j++) begin
			$fscanf(fo_weights, "%d %d %d %d", num1, num2, num3, num4);
			data_array[k] = {num1,num2,num3,num4};
			k += 1;
		end
	end
	
	$fclose(fh_biases);
	$fclose(fh_weights);
	$fclose(fo_biases);
	$fclose(fo_weights);
	end

	always @(address)
	begin
		data <= data_array[address];
	end
	
endmodule 