// $Id: $
// File name:   fmc.sv
// Created:     4/4/2018
// Author:      Chan Weng Yan
// Lab Section: 337-08
// Version:     1.0  Initial Design Entry
// Description: Flash Memory Controller source

module fmc (
	input wire ready,
	input wire address,
	input wire data,
	output wire data_out,
	output wire address_in,
	output wire ce, oe, we
);

	typedef enum logic [4:0] {idle, addr_ready, chip_en, output_en, data_valid
				  load, wait1, clear, wait2} state_type;
	state_type state;
	state_type next_state;