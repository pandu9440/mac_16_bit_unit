# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed Jun 19 15:29:23 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mac16arr

create_clock -name "clk" -period 8.0 -waveform {0.0 4.0} [get_ports clk]
set_load -pin_load 0.5 [get_ports {ac_val[15]}]
set_load -pin_load 0.5 [get_ports {ac_val[14]}]
set_load -pin_load 0.5 [get_ports {ac_val[13]}]
set_load -pin_load 0.5 [get_ports {ac_val[12]}]
set_load -pin_load 0.5 [get_ports {ac_val[11]}]
set_load -pin_load 0.5 [get_ports {ac_val[10]}]
set_load -pin_load 0.5 [get_ports {ac_val[9]}]
set_load -pin_load 0.5 [get_ports {ac_val[8]}]
set_load -pin_load 0.5 [get_ports {ac_val[7]}]
set_load -pin_load 0.5 [get_ports {ac_val[6]}]
set_load -pin_load 0.5 [get_ports {ac_val[5]}]
set_load -pin_load 0.5 [get_ports {ac_val[4]}]
set_load -pin_load 0.5 [get_ports {ac_val[3]}]
set_load -pin_load 0.5 [get_ports {ac_val[2]}]
set_load -pin_load 0.5 [get_ports {ac_val[1]}]
set_load -pin_load 0.5 [get_ports {ac_val[0]}]
set_load -pin_load 0.5 [get_ports cout]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {b[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports en]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {ac_val[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports cout]
set_wire_load_mode "enclosed"
set_clock_latency -source 0.5 [get_ports clk]
