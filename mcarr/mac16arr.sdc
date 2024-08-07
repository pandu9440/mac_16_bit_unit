#set_units -time ns -resistance Mohm -capacitance fF -voltage mV -current uA

set_load -pin_load 0.5 [get_ports ac_val[15]]
set_load -pin_load 0.5 [get_ports ac_val[14]]
set_load -pin_load 0.5 [get_ports ac_val[13]]
set_load -pin_load 0.5 [get_ports ac_val[12]]
set_load -pin_load 0.5 [get_ports ac_val[11]]
set_load -pin_load 0.5 [get_ports ac_val[10]]
set_load -pin_load 0.5 [get_ports ac_val[9]]
set_load -pin_load 0.5 [get_ports ac_val[8]]
set_load -pin_load 0.5 [get_ports ac_val[7]]
set_load -pin_load 0.5 [get_ports ac_val[6]]
set_load -pin_load 0.5 [get_ports ac_val[5]]
set_load -pin_load 0.5 [get_ports ac_val[4]]
set_load -pin_load 0.5 [get_ports ac_val[3]]
set_load -pin_load 0.5 [get_ports ac_val[2]]
set_load -pin_load 0.5 [get_ports ac_val[1]]
set_load -pin_load 0.5 [get_ports ac_val[0]]
set_load -pin_load 0.5 [get_ports cout]

create_clock [get_ports clk] -period 8 -waveform {0 4}

set_clock_uncertainity 0.01 [get_clocks clk]

set_input_delay -clock clk 2 [get_ports a[7]]
set_input_delay -clock clk 2 [get_ports a[6]]
set_input_delay -clock clk 2 [get_ports a[5]]
set_input_delay -clock clk 2 [get_ports a[4]]
set_input_delay -clock clk 2 [get_ports a[3]]
set_input_delay -clock clk 2 [get_ports a[2]]
set_input_delay -clock clk 2 [get_ports a[1]]
set_input_delay -clock clk 2 [get_ports a[0]]

set_input_delay -clock clk 2 [get_ports b[7]]
set_input_delay -clock clk 2 [get_ports b[6]]
set_input_delay -clock clk 2 [get_ports b[5]]
set_input_delay -clock clk 2 [get_ports b[4]]
set_input_delay -clock clk 2 [get_ports b[3]]
set_input_delay -clock clk 2 [get_ports b[2]]
set_input_delay -clock clk 2 [get_ports b[1]]
set_input_delay -clock clk 2 [get_ports b[0]]

set_input_delay -clock clk 2 [get_ports rst]
set_input_delay -clock clk 2 [get_ports en]

set_output_delay -clock clk 2 [get_ports ac_val[15]]
set_output_delay -clock clk 2 [get_ports ac_val[14]]
set_output_delay -clock clk 2 [get_ports ac_val[13]]
set_output_delay -clock clk 2 [get_ports ac_val[12]]
set_output_delay -clock clk 2 [get_ports ac_val[11]]
set_output_delay -clock clk 2 [get_ports ac_val[10]]
set_output_delay -clock clk 2 [get_ports ac_val[9]]
set_output_delay -clock clk 2 [get_ports ac_val[8]]
set_output_delay -clock clk 2 [get_ports ac_val[7]]
set_output_delay -clock clk 2 [get_ports ac_val[6]]
set_output_delay -clock clk 2 [get_ports ac_val[5]]
set_output_delay -clock clk 2 [get_ports ac_val[4]]
set_output_delay -clock clk 2 [get_ports ac_val[3]]
set_output_delay -clock clk 2 [get_ports ac_val[2]]
set_output_delay -clock clk 2 [get_ports ac_val[1]]
set_output_delay -clock clk 2 [get_ports ac_val[0]]
set_output_delay -clock clk 2 [get_ports cout]

set_clock_latency -source 0.5 [get_ports clk]


