transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/labs/lab_tpcs/lab_2_2tpcs/package2_2.vhd}
vcom -93 -work work {D:/labs/lab_tpcs/lab_2_2tpcs/lab2_2.vhd}

vcom -93 -work work {D:/labs/lab_tpcs/lab_2_2tpcs/lab2_2_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  testlab2_2

add wave *
view structure
view signals
run 1600 sec
