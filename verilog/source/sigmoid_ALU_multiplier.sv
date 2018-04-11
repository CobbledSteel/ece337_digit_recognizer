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
			        
