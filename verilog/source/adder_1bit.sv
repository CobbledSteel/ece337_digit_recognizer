// $Id: $
// File name:   adder_1bit.sv
// Created:     1/23/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: 1-bit Full Adder.

module adder_1bit
(
  input wire a,
  input wire b,
  input wire carry_in,
  output wire sum,
  output wire carry_out
);

  assign sum = carry_in ^ (a ^ b);
  assign carry_out = ((~carry_in) & b & a) | (carry_in & (b | a));

endmodule