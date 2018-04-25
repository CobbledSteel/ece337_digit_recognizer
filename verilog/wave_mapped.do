onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group top_level -color orange /tb_digit_recognizer_final/tb_clk
add wave -noupdate -expand -group top_level -color orange /tb_digit_recognizer_final/tb_n_rst
add wave -noupdate -expand -group top_level -color orange /tb_digit_recognizer_final/tb_SCK
add wave -noupdate -expand -group top_level -color yellow /tb_digit_recognizer_final/tb_SS
add wave -noupdate -expand -group top_level -color yellow /tb_digit_recognizer_final/tb_MOSI
add wave -noupdate -expand -group top_level -color violet /tb_digit_recognizer_final/tb_MISO
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/shift_SPI
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_input/SPI_in
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/write_en
add wave -noupdate -group SPI /tb_digit_recognizer_final/DUT/top_spi_input/sig_edge
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_output/parallel_data
add wave -noupdate -group SPI -radix unsigned /tb_digit_recognizer_final/DUT/top_spi_output/spi_output_ptssr/temp
add wave -noupdate -group PixelData -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_pixel_data/pixel_data_1
add wave -noupdate -group PixelData -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_pixel_data/pixel_data_2
add wave -noupdate -group PixelData -color green -radix hexadecimal /tb_digit_recognizer_final/DUT/top_pixel_data/pixelData
add wave -noupdate -group SigmoidRegs -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/data_in
add wave -noupdate -group SigmoidRegs -color yellow -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/address
add wave -noupdate -group SigmoidRegs -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_sigmoid_registers/data_out
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
add wave -noupdate -group Cost -color violet /tb_digit_recognizer_final/DUT/top_cost_calculator/calculation_complete
add wave -noupdate -group Cost -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_cost_calculator/cost_output
add wave -noupdate -group Decode -color yellow /tb_digit_recognizer_final/DUT/top_digit_decode/network_done
add wave -noupdate -group Decode -color violet -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/detected_digit
add wave -noupdate -group Decode -radix unsigned /tb_digit_recognizer_final/DUT/top_digit_decode/max_val
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {215996106 ps} 0}
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
WaveRestoreZoom {0 ps} {1050 us}
