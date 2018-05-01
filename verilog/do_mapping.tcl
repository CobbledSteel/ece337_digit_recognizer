# Step 1:  Read in the source file
analyze -format sverilog -lib WORK { digit_recognizer_final.sv}
elaborate digit_recognizer_final -lib WORK
uniquify
# Step 2: Set design constraints
# Uncomment below to set timing, area, power, etc. constraints
# set_max_delay <delay> -from "<input>" -to "<output>"

 set_max_delay 2 -from "top_sigmoid_ALU/M1/signval" -to "top_sigmoid_ALU/M1/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M2/signval" -to "top_sigmoid_ALU/M2/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M3/signval" -to "top_sigmoid_ALU/M3/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M4/signval" -to "top_sigmoid_ALU/M4/out"
 
 set_max_delay 2 -from "top_sigmoid_ALU/M1/unsignval" -to "top_sigmoid_ALU/M1/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M2/unsignval" -to "top_sigmoid_ALU/M2/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M3/unsignval" -to "top_sigmoid_ALU/M3/out"
 set_max_delay 2 -from "top_sigmoid_ALU/M4/unsignval" -to "top_sigmoid_ALU/M4/out"
 
 
 
 set_max_delay 3 -from "top_sigmoid_ALU/ADDER/in1" -to "top_sigmoid_ALU/ADDER/out"
 set_max_delay 3 -from "top_sigmoid_ALU/ADDER/in2" -to "top_sigmoid_ALU/ADDER/out"
 set_max_delay 3 -from "top_sigmoid_ALU/ADDER/in3" -to "top_sigmoid_ALU/ADDER/out"
 set_max_delay 3 -from "top_sigmoid_ALU/ADDER/in4" -to "top_sigmoid_ALU/ADDER/out"
 
 set_max_delay 3 -from "top_sigmoid_ALU/ACCUM/newval" -to "top_sigmoid_ALU/ACCUM/out"
 set_max_delay 2.7 -from "top_sigmoid_ALU/SIGM/accum" -to "top_sigmoid_ALU/SIGM/sigma"

  set_max_delay 2 -from "top_digit_decode/INDEX_COUNT/count_out" -to "top_digit_decode/next_digit"
  set_max_delay 2.4 -from "top_digit_decode/INDEX_COUNT/count_out" -to "top_digit_decode/mux_out"

  set_max_delay 2.7 -from "top_cost_calculator/IND_BLOCK/count_out" -to "top_cost_calculator/next_sub_reg"

  #set_max_delay 2.4 -from "top_network_controller/layer1State" -to "top_network_controller/input1"
  #set_max_delay 3.0 -from "top_digit_decode/enable_reg" -to "top_digit_decode/next_digit"

# set_max_area <area>
# set_max_total_power <power> mW
 create_clock "clk" -name "clk" -period 3.3

# Step 3: Compile the design
compile -map_effort high

# Step 4: Output reports
report_timing -path full -delay max -max_paths 300 -nworst 300 > reports/digit_recognizer_final.rep
report_area >> reports/digit_recognizer_final.rep
report_power -hier >> reports/digit_recognizer_final.rep

# Step 5: Output final VHDL and Verilog files
write_file -format verilog -hierarchy -output "mapped/digit_recognizer_final.v"
echo "\nScript Done\n"
echo "\nChecking Design\n"
check_design
quit
