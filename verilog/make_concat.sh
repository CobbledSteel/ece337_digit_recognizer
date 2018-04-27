#!/bin/bash

make veryclean

components="abs_subtractor_4bit.sv adder_1bit.sv adder_8bit.sv adder_nbit.sv cost_calculator.sv digit_decode.sv flex_counter.sv fmc.sv gen_pos_edge_detect.sv gen_pts_sr.sv gen_stp_sr.sv gen_sync.sv mult_4bit.sv networkController.sv pixelData_PTPSR.sv pixelData.sv sigmoid_ALU.sv sigmoidRegisters_addressableReg.sv sigmoidRegisters.sv SPI_input_controller.sv SPI_output_controller.sv comparator.sv"
components=$(echo  $components | sed 's/[^ ]* */source\/&/g')
top="digit_recognizer.sv"
top=$(echo  $top| sed 's/[^ ]* */source\/&/g')
helper="external_fm.sv"
helper=$(echo  $helper| sed 's/[^ ]* */source\/&/g')

echo $components
echo $top
echo $helper

cat $top $components > source/$(basename ${top} .sv)_final.sv
cat source/tb_$(basename $top .sv).sv $helper > source/tb_$(basename ${top} .sv)_final.sv

make tbsim_$(basename $top .sv)_final_$1


/home/ecegrid/a/ece337/Course_Prod/Scripts/User_Scripts/pads $(basename $top .sv)_final

head -n -67  mapped/$(basename $top .sv)_final.v > mapped/$(basename $top .sv)_final_tmp.v

cat mapped/$(basename $top .sv)_final_tmp.v padsend.txt > mapped/$(basename $top .sv)_final.v


