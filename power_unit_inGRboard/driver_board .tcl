# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II 64-Bit Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version
# File: D:\temp\ZhiYuan_ING\testcode\GR202300909PCB_TEST\GR202300909TEST_code\UNIT_FINAL.tcl
# Generated on: Wed Feb 21 16:48:26 2024

package require ::quartus::project

set_instance_assignment -name CLOCK_SETTINGS clk -to clk
set_location_assignment PIN_37 -to LED1
set_location_assignment PIN_39 -to LED2
set_location_assignment PIN_41 -to LED3
set_location_assignment PIN_43 -to LED4
set_location_assignment PIN_45 -to LED5

set_location_assignment PIN_20 -to clk

set_location_assignment PIN_97 -to HOT_1
set_location_assignment PIN_88 -to ADcon
set_location_assignment PIN_94 -to ADclk
set_location_assignment PIN_91 -to ADout
set_location_assignment PIN_108 -to DCOV
set_location_assignment PIN_102 -to DCUV
set_location_assignment PIN_109 -to LUDIN
set_location_assignment PIN_113 -to LDDIN
set_location_assignment PIN_118 -to RUDIN
set_location_assignment PIN_122 -to RDDIN
set_location_assignment PIN_60 -to sys_rst_n

set_location_assignment PIN_133 -to fault1
set_location_assignment PIN_134 -to fault2
set_location_assignment PIN_137 -to fault3
set_location_assignment PIN_138 -to fault4
set_instance_assignment -name RESERVE_PIN AS_INPUT_TRI_STATED -to TEM
set_location_assignment PIN_1 -to COMM_R
set_location_assignment PIN_4 -to COMM_T
set_location_assignment PIN_49 -to LED6
set_location_assignment PIN_51 -to LED7
set_location_assignment PIN_53 -to LED8
set_location_assignment PIN_57 -to LED9
set_location_assignment PIN_59 -to LED10
set_location_assignment PIN_31 -to CPU_DI
set_location_assignment PIN_32 -to CPU_DO
set_location_assignment PIN_142 -to rx2
set_location_assignment PIN_144 -to tx2
