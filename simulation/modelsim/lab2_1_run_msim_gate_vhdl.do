transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab2_1.vho}

vcom -93 -work work {D:/labs/lab_tpcs/lab_2_1tpcs/lab2_1_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab2_1_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testlab2_1

add wave *
view structure
view signals
run 1600 ps
