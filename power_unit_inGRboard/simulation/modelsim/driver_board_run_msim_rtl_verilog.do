transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping {D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping/MSEND_BYTE.v}
vlog -vlog01compat -work work +incdir+D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping {D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping/crc_10.v}

vlog -vlog01compat -work work +incdir+D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping {D:/temp/ZhiYuan_ING/rx_UNIT_TEST/git/rx_unit_test/power_unit_inGRboard/Src/oversamping/tb_MEND_BYTE.V}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxii_ver -L rtl_work -L work -voptargs="+acc"  tb_MEND_BYTE

add wave *
view structure
view signals
run -all
