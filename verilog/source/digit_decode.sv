// $Id: $
// File name:   digit_decode.sv
// Created:     4/3/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Comparator to determine the max confidence level output from the sigmoid registers and output the associated digit value

module digit_decode
(
  input wire clk,
  input wire n_rst,
  input wire network_done,
  input wire [0:9][3:0] digit_weights,
  output wire [3:0] detected_digit,
  output reg [3:0] next_digit
);

  wire [3:0] count_out;
  wire gt, lt, eq;
  reg [3:0] mux_out;
  reg rollover_plc;
  reg [3:0] digit_val = 4'b0000;
  reg [3:0] max_val = 4'b000;
  reg [3:0] in_val;
  reg [0:9][3:0] weight_hold;

  assign detected_digit = digit_val;

  always_ff @  (posedge clk, negedge n_rst) begin
    if (n_rst == 0) begin
      max_val <= 4'b0000;
      digit_val <= 4'b0000;
      weight_hold <= {'0, '0, '0, '0, '0, '0, '0, '0, '0, '0};
    end else if (network_done == 1) begin
      max_val <= 4'b0000;
      digit_val <= 4'b0000;
      weight_hold <= digit_weights;
    end else begin
      max_val <= in_val;
      digit_val <= next_digit;
    end
  end

  flex_counter INDEX_COUNT (.clk(clk), .n_rst(n_rst), .clear(network_done), .count_enable(1'b1), .rollover_val(4'b1001), .count_out(count_out), .rollover_flag(rollover_plc));

  always_comb begin: INPUT_MUX
    mux_out = 4'b0000;
    case (count_out)
      4'b0000:	mux_out = weight_hold[0];
      4'b0001:	mux_out = weight_hold[1];
      4'b0010:	mux_out = weight_hold[2];
      4'b0011:	mux_out = weight_hold[3];
      4'b0100:	mux_out = weight_hold[4];
      4'b0101:	mux_out = weight_hold[5];
      4'b0110:	mux_out = weight_hold[6];
      4'b0111:	mux_out = weight_hold[7];
      4'b1000:	mux_out = weight_hold[8];
      4'b1001:	mux_out = weight_hold[9];
    endcase
  end

  comparator COMPARATOR (.a(mux_out), .b(max_val), .gt(gt), .lt(lt), .eq(eq));

  always_comb begin: COMPARATOR_LOGIC
    if (gt == 1 || eq == 1) begin
      in_val = mux_out;
    end else begin
      in_val = max_val;
    end
  end

  always_comb begin: DET_MAX
    if (in_val != max_val) begin
      next_digit = count_out;
    end else begin
      next_digit = digit_val;
    end
  end
endmodule
    

  
