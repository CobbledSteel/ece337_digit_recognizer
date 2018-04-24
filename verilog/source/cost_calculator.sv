// $Id: $
// File name:   cost_calculator.sv
// Created:     4/11/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Cost Calculator Module for Handwritten Digit Recognizer

module cost_calculator
(
	input wire clk,
	input wire n_rst,
	input wire cost_en,
	input wire [0:9] expected_label,
	input wire [0:9][3:0] digit_weights,
	output reg calculation_complete,
	output wire [7:0] cost_output
);


  typedef enum bit [2:0] {IDLE, SUB, SQ, ADD, STO, L_INPUT, FIN} stateType;

  stateType state;
  stateType next_state;

  reg [3:0] sub_reg;
  reg [4:0] sq_reg;
  reg [7:0] add_reg;
  reg [7:0] sto_reg;
  reg [3:0] next_sub_reg;
  reg [7:0] next_sq_reg;
  reg [7:0] next_add_reg;
  reg [7:0] next_sto_reg;
  reg [0:9] label_hold_reg;
  reg [0:9][3:0] sigmoid_hold_reg;
  reg [3:0] mux_label;
  reg [3:0] mux_confidence;
  reg add_overflow;
  reg adder_input_en;
  reg inc_index;
  reg fin_flag;

  wire [7:0] adder_input_a;
  wire [3:0] cur_input;

  abs_subtractor_4bit SUB_BLOCK (.a(mux_label), .b(mux_confidence), .mag_diff(next_sub_reg));

  mult_4bit           SQ_BLOCK  (.a(sub_reg), .b(sub_reg), .product(next_sq_reg));

  adder_8bit          ADD_BLOCK (.a(adder_input_a), .b(sto_reg), .carry_in(1'b0), .sum(next_add_reg), .overflow(add_overflow));

  flex_counter	 #(4) IND_BLOCK (.clk(clk), .n_rst(n_rst), .clear(cost_en), .count_enable(inc_index), .rollover_val(4'b1001), .count_out(cur_input), .rollover_flag(fin_flag));


  always_comb begin: LABEL_MUX
    mux_label = 4'b0000;
    case (cur_input)
      4'b0000:	mux_label = {label_hold_reg[0], 3'b000};
      4'b0001:	mux_label = {label_hold_reg[1], 3'b000};
      4'b0010:	mux_label = {label_hold_reg[2], 3'b000};
      4'b0011:	mux_label = {label_hold_reg[3], 3'b000};
      4'b0100:	mux_label = {label_hold_reg[4], 3'b000};
      4'b0101:	mux_label = {label_hold_reg[5], 3'b000};
      4'b0110:	mux_label = {label_hold_reg[6], 3'b000};
      4'b0111:	mux_label = {label_hold_reg[7], 3'b000};
      4'b1000:	mux_label = {label_hold_reg[8], 3'b000};
      4'b1001:	mux_label = {label_hold_reg[9], 3'b000};
    endcase
  end

  always_comb begin: CONFIDENCE_MUX
    mux_confidence = 4'b0000;
    case (cur_input)
      4'b0000:	mux_confidence = sigmoid_hold_reg[0];
      4'b0001:	mux_confidence = sigmoid_hold_reg[1];
      4'b0010:	mux_confidence = sigmoid_hold_reg[2];
      4'b0011:	mux_confidence = sigmoid_hold_reg[3];
      4'b0100:	mux_confidence = sigmoid_hold_reg[4];
      4'b0101:	mux_confidence = sigmoid_hold_reg[5];
      4'b0110:	mux_confidence = sigmoid_hold_reg[6];
      4'b0111:	mux_confidence = sigmoid_hold_reg[7];
      4'b1000:	mux_confidence = sigmoid_hold_reg[8];
      4'b1001:	mux_confidence = sigmoid_hold_reg[9];
    endcase
  end

  always_ff @ (posedge clk, negedge n_rst)
  begin : REG_LOGIC
      if (n_rst == 0) begin
        state <= IDLE;
	label_hold_reg <= '0;
	sigmoid_hold_reg <= '0;
	sub_reg <= '0;
	sq_reg <= '0;
	add_reg <= '0;
	sto_reg <= '0;
      end else if (cost_en == 1 && state == IDLE) begin
	label_hold_reg <= expected_label;
	sigmoid_hold_reg <= digit_weights;
	sub_reg <= '0;
	sq_reg <= '0;
	add_reg <= '0;
	sto_reg <= '0;
        state <= next_state;
      end else begin
        state <= next_state;
	sub_reg <= next_sub_reg;
	sq_reg <= next_sq_reg[6:2];
	add_reg <= next_add_reg;
	if (state == STO) begin
	  sto_reg <= next_sto_reg;
	end else begin
	  sto_reg <= sto_reg;
	end
      end
  end

  always_comb
  begin : NXT_LOGIC
    next_state = state;
    case (state)
      IDLE: begin
	if (cost_en == 1'b1) begin
	  next_state = SUB;
        end else begin
	  next_state = IDLE;
	end
      end

      SUB: begin
	next_state = SQ;
      end

      SQ: begin
	next_state = ADD;
      end

      ADD: begin
	next_state = STO;
      end

      STO: begin
	next_state = L_INPUT;
      end

      L_INPUT: begin
	if (cur_input == 4'b1001) begin
	  next_state = FIN;
	end else begin
	  next_state = SUB;
	end
      end

      FIN: begin
	next_state = IDLE;
      end
    endcase
  end

  always_comb
  begin : OUTPUT_LOGIC
    calculation_complete = 1'b0;
    adder_input_en = 1'b0;
    inc_index = 1'b0;   
    case (state)
      IDLE: begin
	calculation_complete = 1'b1;
      end

      SUB: begin
      end

      SQ: begin
      end

      ADD: begin
	adder_input_en = 1'b1;
      end

      STO: begin
      end

      L_INPUT: begin
	inc_index = 1'b1;
      end

      FIN: begin
      end
    endcase
  end

  assign cost_output = sto_reg;
  assign next_sto_reg = add_reg;
  assign adder_input_a = (adder_input_en) ? {3'b000, sq_reg} : 8'h00;

endmodule
