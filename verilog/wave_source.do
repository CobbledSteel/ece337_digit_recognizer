onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group top_level -color orange /tb_digit_recognizer_final/tb_clk
add wave -noupdate -group top_level -color orange /tb_digit_recognizer_final/tb_n_rst
add wave -noupdate -group top_level -color orange /tb_digit_recognizer_final/tb_SCK
add wave -noupdate -group top_level -color yellow /tb_digit_recognizer_final/tb_SS
add wave -noupdate -group top_level -color yellow /tb_digit_recognizer_final/tb_MOSI
add wave -noupdate -group top_level -color violet /tb_digit_recognizer_final/tb_MISO
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/shift_SPI
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_input/SPI_in
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/write_en
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/sig_edge
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_output/parallel_data
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_output/spi_output_ptssr/temp
add wave -noupdate -group PixelData -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_pixel_data/pixel_data_1
add wave -noupdate -group PixelData -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_pixel_data/pixel_data_2
add wave -noupdate -group PixelData -color green -radix hexadecimal /tb_digit_recognizer_final/DUT/top_pixel_data/pixelData
add wave -noupdate -group PixelData -color yellow /tb_digit_recognizer_final/DUT/top_pixel_data/chooseShift
add wave -noupdate -expand -group SigmoidRegs -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/data_in
add wave -noupdate -expand -group SigmoidRegs -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/address
add wave -noupdate -expand -group SigmoidRegs -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/data_out
add wave -noupdate -expand -group SigmoidRegs -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/digit_weights
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/clk
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/n_rst
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/write_en
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sigmoidData_out
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/ALUOutput
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/pixel_data1
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/pixel_data2
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/flashData_out
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/data_ready
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/shift_network
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/network_done
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/network_calc
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/digit_done
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/flash_ready
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/flash_address
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sigmoidData_in
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sigmoid_address
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sigmoid_write_en
add wave -noupdate -expand -group Network -radix decimal /tb_digit_recognizer_final/DUT/top_network_controller/weight1
add wave -noupdate -expand -group Network -radix decimal /tb_digit_recognizer_final/DUT/top_network_controller/weight2
add wave -noupdate -expand -group Network -radix decimal /tb_digit_recognizer_final/DUT/top_network_controller/weight3
add wave -noupdate -expand -group Network -radix decimal /tb_digit_recognizer_final/DUT/top_network_controller/weight4
add wave -noupdate -expand -group Network -radix unsigned /tb_digit_recognizer_final/DUT/top_network_controller/input1
add wave -noupdate -expand -group Network -radix unsigned /tb_digit_recognizer_final/DUT/top_network_controller/input2
add wave -noupdate -expand -group Network -radix unsigned /tb_digit_recognizer_final/DUT/top_network_controller/input3
add wave -noupdate -expand -group Network -radix unsigned /tb_digit_recognizer_final/DUT/top_network_controller/input4
add wave -noupdate -expand -group Network -radix decimal /tb_digit_recognizer_final/DUT/top_network_controller/bias
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/clear
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/accumulate
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/input_rollover_in
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/neuron_rollover_in
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/input_en
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/weight_en
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/addr_en
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/bias_en
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sig_write
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/ready
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/flash_counter
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/neuron_rollover
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/input_rollover
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_weight1
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_weight2
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_weight3
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_weight4
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_bias
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_input1
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_input2
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_input3
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_input4
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/neuronCountOut
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/inputCountOut
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/flashClear
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/inputClear
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/neuronClear
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/inc_input
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/inc_neuron
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/inc_detect
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/shift_nxt
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/sigmoid_address_nxt
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/detect_count
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/topState
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_topState
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/layer1State
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_layer1State
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/layer2State
add wave -noupdate -expand -group Network /tb_digit_recognizer_final/DUT/top_network_controller/nxt_layer2State
add wave -noupdate -group FMC -color yellow /tb_digit_recognizer_final/DUT/top_fmc/ready
add wave -noupdate -group FMC -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_fmc/address
add wave -noupdate -group FMC -color violet -radix decimal /tb_digit_recognizer_final/DUT/top_fmc/data_out
add wave -noupdate -group FMC -color orange /tb_digit_recognizer_final/DUT/top_fmc/ce
add wave -noupdate -group FMC -color orange /tb_digit_recognizer_final/DUT/top_fmc/oe
add wave -noupdate -group FMC -color orange /tb_digit_recognizer_final/DUT/top_fmc/we
add wave -noupdate -group ALU -color yellow -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/weight1
add wave -noupdate -group ALU -color yellow -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/weight2
add wave -noupdate -group ALU -color yellow -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/weight3
add wave -noupdate -group ALU -color yellow -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/weight4
add wave -noupdate -group ALU -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/input1
add wave -noupdate -group ALU -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/input2
add wave -noupdate -group ALU -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/input3
add wave -noupdate -group ALU -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/input4
add wave -noupdate -group ALU -color yellow -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/bias
add wave -noupdate -group ALU -color orange /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/accumulate
add wave -noupdate -group ALU -color orange /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/clear
add wave -noupdate -group ALU -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/out
add wave -noupdate -group ALU -radix decimal /tb_digit_recognizer_final/DUT/top_sigmoid_ALU/accum_out
add wave -noupdate -group Cost -color yellow /tb_digit_recognizer_final/DUT/top_cost_calculator/cost_en
add wave -noupdate -group Cost -color yellow /tb_digit_recognizer_final/DUT/top_cost_calculator/expected_label
add wave -noupdate -group Cost -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_cost_calculator/digit_weights
add wave -noupdate -group Cost -color violet /tb_digit_recognizer_final/DUT/top_cost_calculator/calculation_complete
add wave -noupdate -group Cost -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_cost_calculator/cost_output
add wave -noupdate -group Decode -color yellow /tb_digit_recognizer_final/DUT/top_digit_decode/network_done
add wave -noupdate -group Decode -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/digit_weights
add wave -noupdate -group Decode -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/detected_digit
add wave -noupdate -group Decode -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/max_val
add wave -noupdate -group Decode -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/in_val
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {317472947 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {65625611 ps} {68669199 ps}
