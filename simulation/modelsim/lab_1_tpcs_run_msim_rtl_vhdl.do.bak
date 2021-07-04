transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/labs/lab_tpcs/lab_1tpcs/lab_1_tpcs.vhd}

vcom -93 -work work {D:/labs/lab_tpcs/lab_1tpcs/simulation/modelsim/lab_1_tpcst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  lab_1test

add wave *
view structure
view signals
run -all
