transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/labs/lab_tpcs/lab_4/lab_4.vhd}

vcom -93 -work work {D:/labs/lab_tpcs/lab_4/tb_lab_4.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_lab_4

add wave *
view structure
view signals
run -all
