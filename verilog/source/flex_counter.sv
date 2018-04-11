// $Id: $
// File name:   flex_counter.sv
// Created:     1/31/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Flexible and Scalable Counter with Controlled Rollover

module flex_counter
#(
  parameter NUM_CNT_BITS = 4
)
(
  input wire clk,
  input wire n_rst,
  input wire clear,
  input wire count_enable,
  input wire [NUM_CNT_BITS-1:0] rollover_val,
  output reg [NUM_CNT_BITS-1:0] count_out,
  output reg rollover_flag
);

  int pre_rollover = 0;

  always_ff @ (posedge clk, negedge n_rst)
  begin
    if (n_rst == 0) begin
      count_out <= '0;
      rollover_flag <= 0;
    end else if (clear == 1) begin
      rollover_flag <= 0;
      count_out <= '0;
    end else if (count_enable == 1) begin
      if (rollover_flag == 1) begin
        count_out <= 0;
      end else begin
        count_out <= count_out + 1;
      end
      rollover_flag <= pre_rollover;
    end
  end

  always_comb begin
    if ((count_out == rollover_val - 1) && count_enable) begin
      pre_rollover = 1;
    end else begin
      pre_rollover = 0;
    end
  end
endmodule
  
