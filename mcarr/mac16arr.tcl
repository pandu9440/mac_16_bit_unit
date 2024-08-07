set_db init_lib_search_path /home/cad/digital/180nm/dig/lib/
     
set_db library  ./lib/slow.lib
set_db library  ./lib/typical.lib
set_db library  ./lib/fast.lib
   
read_hdl {./mac16arr.v}

elaborate mac16arr

read_sdc ./mac16arr.sdc


set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > mac16arr_netlist.v
write_sdc  > mac16arr_output.sdc
   
gui_show

report timing -unconstrained > mac16arr_timing_uncon.rpt
report timing > mac16arr_timing.rpt
report power > mac16arr_power.rpt
report area > mac16arr_area.rpt
report gates > mac16arr_gates.rpt

