-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/31/2024 15:18:21"

-- 
-- Device: Altera EPM1270T144I5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	tr1 : IN std_logic;
	tr2 : IN std_logic;
	tr3 : IN std_logic;
	tr4 : IN std_logic;
	col1 : IN std_logic;
	col2 : IN std_logic;
	col3 : IN std_logic;
	col4 : IN std_logic;
	ov : IN std_logic;
	uv : IN std_logic;
	db : IN std_logic;
	TEM : IN std_logic;
	rcvd : IN std_logic;
	sent : OUT std_logic;
	rect_rcvd : IN std_logic;
	rect_sent : OUT std_logic;
	adclk : OUT std_logic;
	cs_n : OUT std_logic;
	ad_in : IN std_logic;
	K_1 : OUT std_logic;
	K_2 : OUT std_logic;
	K_3 : OUT std_logic;
	K_4 : OUT std_logic;
	bypass_i : IN std_logic;
	bypass_o : OUT std_logic;
	led : OUT std_logic_vector(9 DOWNTO 0)
	);
END top;

-- Design Ports Information


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_tr1 : std_logic;
SIGNAL ww_tr2 : std_logic;
SIGNAL ww_tr3 : std_logic;
SIGNAL ww_tr4 : std_logic;
SIGNAL ww_col1 : std_logic;
SIGNAL ww_col2 : std_logic;
SIGNAL ww_col3 : std_logic;
SIGNAL ww_col4 : std_logic;
SIGNAL ww_ov : std_logic;
SIGNAL ww_uv : std_logic;
SIGNAL ww_db : std_logic;
SIGNAL ww_TEM : std_logic;
SIGNAL ww_rcvd : std_logic;
SIGNAL ww_sent : std_logic;
SIGNAL ww_rect_rcvd : std_logic;
SIGNAL ww_rect_sent : std_logic;
SIGNAL ww_adclk : std_logic;
SIGNAL ww_cs_n : std_logic;
SIGNAL ww_ad_in : std_logic;
SIGNAL ww_K_1 : std_logic;
SIGNAL ww_K_2 : std_logic;
SIGNAL ww_K_3 : std_logic;
SIGNAL ww_K_4 : std_logic;
SIGNAL ww_bypass_i : std_logic;
SIGNAL ww_bypass_o : std_logic;
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_down|down_deal|cmd_over~regout\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[1]~11_cout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last3.S4~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last2.S1~regout\ : std_logic;
SIGNAL \ad|LessThan9~5\ : std_logic;
SIGNAL \ad|LessThan7~5\ : std_logic;
SIGNAL \ad|LessThan5~5\ : std_logic;
SIGNAL \ad|LessThan3~5\ : std_logic;
SIGNAL \ad|LessThan11~5\ : std_logic;
SIGNAL \ad|LessThan10~5\ : std_logic;
SIGNAL \ad|LessThan8~5\ : std_logic;
SIGNAL \ad|LessThan6~5\ : std_logic;
SIGNAL \ad|LessThan4~5\ : std_logic;
SIGNAL \ad|LessThan12~5\ : std_logic;
SIGNAL \ad|LessThan9~10\ : std_logic;
SIGNAL \ad|LessThan7~10\ : std_logic;
SIGNAL \ad|LessThan5~10\ : std_logic;
SIGNAL \ad|LessThan3~10\ : std_logic;
SIGNAL \ad|LessThan11~10\ : std_logic;
SIGNAL \ad|LessThan10~10\ : std_logic;
SIGNAL \ad|LessThan8~10\ : std_logic;
SIGNAL \ad|LessThan6~10\ : std_logic;
SIGNAL \ad|LessThan4~10\ : std_logic;
SIGNAL \ad|LessThan12~10\ : std_logic;
SIGNAL \ad|LessThan9~15\ : std_logic;
SIGNAL \ad|LessThan7~15\ : std_logic;
SIGNAL \ad|LessThan5~15\ : std_logic;
SIGNAL \ad|LessThan3~15\ : std_logic;
SIGNAL \ad|LessThan11~15\ : std_logic;
SIGNAL \ad|LessThan10~15\ : std_logic;
SIGNAL \ad|LessThan8~15\ : std_logic;
SIGNAL \ad|LessThan6~15\ : std_logic;
SIGNAL \ad|LessThan4~15\ : std_logic;
SIGNAL \ad|LessThan12~15\ : std_logic;
SIGNAL \ad|LessThan9~20\ : std_logic;
SIGNAL \ad|LessThan7~20\ : std_logic;
SIGNAL \ad|LessThan5~20\ : std_logic;
SIGNAL \ad|LessThan3~20\ : std_logic;
SIGNAL \ad|LessThan11~20\ : std_logic;
SIGNAL \ad|LessThan10~20\ : std_logic;
SIGNAL \ad|LessThan8~20\ : std_logic;
SIGNAL \ad|LessThan6~20\ : std_logic;
SIGNAL \ad|LessThan4~20\ : std_logic;
SIGNAL \ad|LessThan12~20\ : std_logic;
SIGNAL \ad|LessThan9~25\ : std_logic;
SIGNAL \ad|LessThan7~25\ : std_logic;
SIGNAL \ad|LessThan5~25\ : std_logic;
SIGNAL \ad|LessThan3~25\ : std_logic;
SIGNAL \ad|LessThan11~25\ : std_logic;
SIGNAL \ad|LessThan10~25\ : std_logic;
SIGNAL \ad|LessThan8~25\ : std_logic;
SIGNAL \ad|LessThan6~25\ : std_logic;
SIGNAL \ad|LessThan4~25\ : std_logic;
SIGNAL \ad|LessThan12~25\ : std_logic;
SIGNAL \ad|LessThan9~30\ : std_logic;
SIGNAL \ad|LessThan7~30\ : std_logic;
SIGNAL \ad|LessThan5~30\ : std_logic;
SIGNAL \ad|LessThan3~30\ : std_logic;
SIGNAL \ad|LessThan11~30\ : std_logic;
SIGNAL \ad|LessThan10~30\ : std_logic;
SIGNAL \ad|LessThan8~30\ : std_logic;
SIGNAL \ad|LessThan6~30\ : std_logic;
SIGNAL \ad|LessThan4~30\ : std_logic;
SIGNAL \ad|LessThan12~30\ : std_logic;
SIGNAL \ad|LessThan9~35\ : std_logic;
SIGNAL \ad|LessThan7~35\ : std_logic;
SIGNAL \ad|LessThan5~35\ : std_logic;
SIGNAL \ad|LessThan3~35\ : std_logic;
SIGNAL \ad|LessThan11~35\ : std_logic;
SIGNAL \ad|LessThan10~35\ : std_logic;
SIGNAL \ad|LessThan8~35\ : std_logic;
SIGNAL \ad|LessThan6~35\ : std_logic;
SIGNAL \ad|LessThan4~35\ : std_logic;
SIGNAL \ad|LessThan12~35\ : std_logic;
SIGNAL \ad|LessThan9~40\ : std_logic;
SIGNAL \ad|LessThan7~40\ : std_logic;
SIGNAL \ad|LessThan5~40\ : std_logic;
SIGNAL \ad|LessThan3~40\ : std_logic;
SIGNAL \ad|LessThan11~40\ : std_logic;
SIGNAL \ad|LessThan10~40\ : std_logic;
SIGNAL \ad|LessThan8~40\ : std_logic;
SIGNAL \ad|LessThan6~40\ : std_logic;
SIGNAL \ad|LessThan4~40\ : std_logic;
SIGNAL \ad|LessThan12~40\ : std_logic;
SIGNAL \ad|LessThan9~45\ : std_logic;
SIGNAL \ad|LessThan7~45\ : std_logic;
SIGNAL \ad|LessThan5~45\ : std_logic;
SIGNAL \ad|LessThan3~45\ : std_logic;
SIGNAL \ad|LessThan11~45\ : std_logic;
SIGNAL \ad|LessThan10~45\ : std_logic;
SIGNAL \ad|LessThan8~45\ : std_logic;
SIGNAL \ad|LessThan6~45\ : std_logic;
SIGNAL \ad|LessThan4~45\ : std_logic;
SIGNAL \ad|LessThan12~45\ : std_logic;
SIGNAL \ad|LessThan9~50\ : std_logic;
SIGNAL \ad|LessThan7~50\ : std_logic;
SIGNAL \ad|LessThan5~50\ : std_logic;
SIGNAL \ad|LessThan3~50\ : std_logic;
SIGNAL \ad|LessThan11~50\ : std_logic;
SIGNAL \ad|LessThan10~50\ : std_logic;
SIGNAL \ad|LessThan8~50\ : std_logic;
SIGNAL \ad|LessThan6~50\ : std_logic;
SIGNAL \ad|LessThan4~50\ : std_logic;
SIGNAL \ad|LessThan12~50\ : std_logic;
SIGNAL \ad|Add2~127\ : std_logic;
SIGNAL \ad|LessThan9~55\ : std_logic;
SIGNAL \ad|LessThan7~55\ : std_logic;
SIGNAL \ad|LessThan5~55\ : std_logic;
SIGNAL \ad|LessThan3~55\ : std_logic;
SIGNAL \ad|LessThan11~55\ : std_logic;
SIGNAL \ad|LessThan10~55\ : std_logic;
SIGNAL \ad|LessThan8~55\ : std_logic;
SIGNAL \ad|LessThan6~55\ : std_logic;
SIGNAL \ad|LessThan4~55\ : std_logic;
SIGNAL \ad|LessThan12~55\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[0]~1\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[1]~7\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[1]~7COUT1_30\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[2]~9\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[2]~9COUT1_31\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[3]~11\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[3]~11COUT1_32\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[4]~13\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[4]~13COUT1_33\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[5]~15\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[6]~3\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[6]~3COUT1_34\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[7]~5\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[7]~5COUT1_35\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[8]~17\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[8]~17COUT1_36\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[9]~19\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[9]~19COUT1_37\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[10]~21\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[11]~23\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[11]~23COUT1_38\ : std_logic;
SIGNAL \rcvd~combout\ : std_logic;
SIGNAL \init|temp1[1]~9\ : std_logic;
SIGNAL \init|temp1[2]~11\ : std_logic;
SIGNAL \init|temp1[2]~11COUT1_28\ : std_logic;
SIGNAL \init|temp1[3]~13\ : std_logic;
SIGNAL \init|temp1[3]~13COUT1_29\ : std_logic;
SIGNAL \init|temp1[4]~15\ : std_logic;
SIGNAL \init|temp1[4]~15COUT1_30\ : std_logic;
SIGNAL \init|temp1[5]~19\ : std_logic;
SIGNAL \init|temp1[5]~19COUT1_31\ : std_logic;
SIGNAL \init|temp1[6]~21\ : std_logic;
SIGNAL \init|temp1[7]~17\ : std_logic;
SIGNAL \init|temp1[7]~17COUT1_32\ : std_logic;
SIGNAL \init|temp1[8]~23\ : std_logic;
SIGNAL \init|temp1[8]~23COUT1_33\ : std_logic;
SIGNAL \init|temp1[9]~25\ : std_logic;
SIGNAL \init|temp1[9]~25COUT1_34\ : std_logic;
SIGNAL \init|temp1[10]~1\ : std_logic;
SIGNAL \init|temp1[10]~1COUT1_35\ : std_logic;
SIGNAL \init|temp1[11]~3\ : std_logic;
SIGNAL \init|temp1[12]~5\ : std_logic;
SIGNAL \init|temp1[12]~5COUT1_36\ : std_logic;
SIGNAL \init|Equal2~0_combout\ : std_logic;
SIGNAL \init|always1~0_combout\ : std_logic;
SIGNAL \init|always1~1_combout\ : std_logic;
SIGNAL \init|always1~2_combout\ : std_logic;
SIGNAL \init|LessThan2~0_combout\ : std_logic;
SIGNAL \init|comb~0_combout\ : std_logic;
SIGNAL \init|LessThan2~1_combout\ : std_logic;
SIGNAL \init|LessThan2~2_combout\ : std_logic;
SIGNAL \init|LessThan2~3_combout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S12~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S13~regout\ : std_logic;
SIGNAL \pwm_down|cdr|Selector9~0_combout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.Sa~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.Sb~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S14~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S15~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S3~regout\ : std_logic;
SIGNAL \pwm_down|cdr|Selector15~2_combout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S0~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S1~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S8~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S2~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S4~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S5~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S6~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta.S7~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S6~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S5~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last2.S5~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S4~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last2.S4~regout\ : std_logic;
SIGNAL \pwm_down|cdr|Selector15~0\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S0~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last2.S0~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last3.S0~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S2~regout\ : std_logic;
SIGNAL \pwm_down|cdr|sta_last1.S1~regout\ : std_logic;
SIGNAL \pwm_down|cdr|Selector15~1\ : std_logic;
SIGNAL \pwm_down|cdr|Selector15~3_combout\ : std_logic;
SIGNAL \pwm_down|des|rx_data_dly~regout\ : std_logic;
SIGNAL \pwm_down|des|Selector1~0_combout\ : std_logic;
SIGNAL \pwm_down|des|Selector1~1_combout\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[0]~1\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[0]~1COUT1_14\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[1]~3\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[1]~3COUT1_15\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[2]~5\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[2]~5COUT1_16\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[3]~7\ : std_logic;
SIGNAL \pwm_down|des|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_down|des|cur_sta.S_NOP0~regout\ : std_logic;
SIGNAL \pwm_down|des|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_down|des|cur_sta.S_RECV~regout\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[4]~12_combout\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[4]~11\ : std_logic;
SIGNAL \pwm_down|des|bits_cnt[4]~11COUT1_17\ : std_logic;
SIGNAL \pwm_down|des|cur_sta.S_CHCK~regout\ : std_logic;
SIGNAL \pwm_down|des|Selector0~0_combout\ : std_logic;
SIGNAL \pwm_down|des|cur_sta.S_IDLE~regout\ : std_logic;
SIGNAL \pwm_down|des|crc_gene|d_temp[1]~1_combout\ : std_logic;
SIGNAL \pwm_down|des|comb~2_combout\ : std_logic;
SIGNAL \pwm_down|des|nxt_sta.S_CHCK~0\ : std_logic;
SIGNAL \pwm_down|des|comb~1_combout\ : std_logic;
SIGNAL \pwm_down|des|rsr[19]~1_combout\ : std_logic;
SIGNAL \pwm_down|des|comb~0_combout\ : std_logic;
SIGNAL \pwm_down|des|recv_done~regout\ : std_logic;
SIGNAL \pwm_down|des|comb~3\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~2\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~0\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~1\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal9~1\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal9~0\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal9~2\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~3\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal9~3_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|LessThan0~1_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[10]~26_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[10]~27_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|tri_200us[10]~28_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Equal0~2_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Equal0~3_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal7~0\ : std_logic;
SIGNAL \pwm_down|down_deal|always5~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~6\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~2\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~7\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~0\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~1\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~8_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~4\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~5\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~6\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal0~7_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|Lockn~regout\ : std_logic;
SIGNAL \ov~combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|comb~4_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|ov_f|Equal0~0_combout\ : std_logic;
SIGNAL \TEM~combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|TEM_f|Equal0~0_combout\ : std_logic;
SIGNAL \tr4~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[0]~11\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[0]~11COUT1_35\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[1]~13\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[1]~13COUT1_36\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[2]~15\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[3]~9\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[3]~9COUT1_37\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[4]~17\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[4]~17COUT1_38\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[5]~7\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[5]~7COUT1_39\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[6]~5\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[6]~5COUT1_40\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[7]~19\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[8]~21\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[8]~21COUT1_41\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[9]~23\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[9]~23COUT1_42\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[10]~1\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[10]~1COUT1_43\ : std_logic;
SIGNAL \pwm_down|dead|always5~27_combout\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[11]~3\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[11]~3COUT1_44\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[12]~27\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[13]~25\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[13]~25COUT1_45\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[14]~29\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[14]~29COUT1_46\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[7]~32_combout\ : std_logic;
SIGNAL \pwm_down|dead|chkflt_data[7]~33_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal7~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal4~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan4~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal4~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal6~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|comb~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|t4|Equal0~0_combout\ : std_logic;
SIGNAL \tr3~combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~3_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|comb~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|t3|Equal0~0_combout\ : std_logic;
SIGNAL \tr2~combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal5~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal4~2_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|comb~2_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|t2|Equal0~0_combout\ : std_logic;
SIGNAL \tr1~combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal4~3_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|comb~3_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|t1|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|always8~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|fault\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~4\ : std_logic;
SIGNAL \pwm_down|down_deal|always9~0\ : std_logic;
SIGNAL \pwm_down|down_deal|always9~1_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~3\ : std_logic;
SIGNAL \pwm_down|down_deal|always6~5_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|start~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|start~regout\ : std_logic;
SIGNAL \pwm_down|down_deal|always8~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~28_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan7~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~29_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal8~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|chkflt~regout\ : std_logic;
SIGNAL \pwm_down|down_deal|rst~regout\ : std_logic;
SIGNAL \pwm_down|down_deal|recv_para~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|ready~regout\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[0]~15\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[0]~15COUT1_35\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[1]~11\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[1]~11COUT1_36\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[2]~13\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[3]~19\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[3]~19COUT1_37\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[4]~21\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[4]~21COUT1_38\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[5]~23\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[5]~23COUT1_39\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[6]~17\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[6]~17COUT1_40\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[7]~1\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[8]~3\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[8]~3COUT1_41\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[9]~5\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[9]~5COUT1_42\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[10]~25\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[10]~25COUT1_43\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[11]~7\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[11]~7COUT1_44\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[12]~9\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[13]~29\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[13]~29COUT1_45\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[14]~31\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[14]~31COUT1_46\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[15]~27\ : std_logic;
SIGNAL \pwm_up|sign_deal|t_data[15]~27COUT1_47\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|LessThan1~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|LessThan1~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~5_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~4_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~2_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~3_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Equal0~6_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|recv_para~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|call_count2[0]~3_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|connect~regout\ : std_logic;
SIGNAL \pwm_up|sign_deal|call_count2~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|call_count2[0]~2_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|duan2~regout\ : std_logic;
SIGNAL \pwm_up|sign_deal|call_count1[2]~0\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~85_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~87\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~87COUT1_93\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~79_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~81\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~81COUT1_94\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~73_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~75\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~67_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~69\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~69COUT1_95\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~61_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~63\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~63COUT1_96\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~55_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~57\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~57COUT1_97\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~49_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~51\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~51COUT1_98\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~44_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~46\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~6_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~8\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~8COUT1_99\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~11_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~13\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~13COUT1_100\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~16_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~18\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~18COUT1_101\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~22_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~24\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~24COUT1_102\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~27_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~29\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~35\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~35COUT1_103\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~39_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~41\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~41COUT1_104\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|Add0~33_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|LessThan3~0_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|LessThan3~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|duan1~regout\ : std_logic;
SIGNAL \pwm_up|sign_deal|call_fault~combout\ : std_logic;
SIGNAL \pwm_up|up_sign|comb~0\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~25_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~27\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~27COUT1_31\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~10_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~12\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~12COUT1_32\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~5_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~7\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~7COUT1_33\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~15_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~17\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~2\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~2COUT1_34\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Add0~20_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.101~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector28~7\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector28~6_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector26~1_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector26~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.001~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.100~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.010~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.101~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.110~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector25~0\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.000~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|sta.111~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector0~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|send_start~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|send_data[17]~2\ : std_logic;
SIGNAL \ad|ad_time[0]~19\ : std_logic;
SIGNAL \ad|ad_time[0]~19COUT1_23\ : std_logic;
SIGNAL \ad|ad_time[1]~21\ : std_logic;
SIGNAL \ad|ad_time[1]~21COUT1_24\ : std_logic;
SIGNAL \ad|ad_time[2]~17\ : std_logic;
SIGNAL \ad|ad_time[2]~17COUT1_25\ : std_logic;
SIGNAL \ad|ad_time[3]~15\ : std_logic;
SIGNAL \ad|ad_time[3]~15COUT1_26\ : std_logic;
SIGNAL \ad|ad_time[4]~11\ : std_logic;
SIGNAL \ad|ad_time[5]~13\ : std_logic;
SIGNAL \ad|ad_time[5]~13COUT1_27\ : std_logic;
SIGNAL \ad|ad_time[6]~9\ : std_logic;
SIGNAL \ad|ad_time[6]~9COUT1_28\ : std_logic;
SIGNAL \ad|ad_time[7]~7\ : std_logic;
SIGNAL \ad|ad_time[7]~7COUT1_29\ : std_logic;
SIGNAL \ad|ad_time[8]~5\ : std_logic;
SIGNAL \ad|ad_time[8]~5COUT1_30\ : std_logic;
SIGNAL \ad|always5~1_combout\ : std_logic;
SIGNAL \ad|always5~0_combout\ : std_logic;
SIGNAL \ad|LessThan0~0_combout\ : std_logic;
SIGNAL \ad|ad_time[9]~3\ : std_logic;
SIGNAL \ad|LessThan0~1_combout\ : std_logic;
SIGNAL \ad|Equal0~2_combout\ : std_logic;
SIGNAL \ad|Equal0~3_combout\ : std_logic;
SIGNAL \ad|LessThan1~0_combout\ : std_logic;
SIGNAL \ad|Equal0~4_combout\ : std_logic;
SIGNAL \ad|LessThan1~1_combout\ : std_logic;
SIGNAL \ad|sta[0]~0_combout\ : std_logic;
SIGNAL \ad|Add1~1_combout\ : std_logic;
SIGNAL \ad|Add1~0_combout\ : std_logic;
SIGNAL \ad|Equal1~1_combout\ : std_logic;
SIGNAL \ad|Add2~5_combout\ : std_logic;
SIGNAL \ad|Add2~6_combout\ : std_logic;
SIGNAL \ad|adc_sum[3]~0_combout\ : std_logic;
SIGNAL \ad|Add2~21_combout\ : std_logic;
SIGNAL \ad|Add2~22_combout\ : std_logic;
SIGNAL \ad|Equal0~6_combout\ : std_logic;
SIGNAL \ad|Equal0~5_combout\ : std_logic;
SIGNAL \ad|Add2~32\ : std_logic;
SIGNAL \ad|Mux16~2\ : std_logic;
SIGNAL \ad_in~combout\ : std_logic;
SIGNAL \ad|always5~2_combout\ : std_logic;
SIGNAL \ad|always5~3_combout\ : std_logic;
SIGNAL \ad|always5~4_combout\ : std_logic;
SIGNAL \ad|cs_n~regout\ : std_logic;
SIGNAL \ad|cs_n~_wirecell_combout\ : std_logic;
SIGNAL \ad|ad_count[4]~2_combout\ : std_logic;
SIGNAL \ad|clk_div[0]~5\ : std_logic;
SIGNAL \ad|clk_div[0]~5COUT1_15\ : std_logic;
SIGNAL \ad|clk_div[1]~7\ : std_logic;
SIGNAL \ad|clk_div[1]~7COUT1_16\ : std_logic;
SIGNAL \ad|clk_div[2]~3\ : std_logic;
SIGNAL \ad|clk_div[2]~12_combout\ : std_logic;
SIGNAL \ad|clk_div[3]~9\ : std_logic;
SIGNAL \ad|clk_div[3]~9COUT1_17\ : std_logic;
SIGNAL \ad|clk_div[4]~1\ : std_logic;
SIGNAL \ad|clk_div[4]~1COUT1_18\ : std_logic;
SIGNAL \ad|clk_div[2]~13_combout\ : std_logic;
SIGNAL \ad|Equal2~0_combout\ : std_logic;
SIGNAL \ad|Equal3~0_combout\ : std_logic;
SIGNAL \ad|ad_count[4]~3_combout\ : std_logic;
SIGNAL \ad|ad_count[0]~11\ : std_logic;
SIGNAL \ad|ad_count[0]~11COUT1_13\ : std_logic;
SIGNAL \ad|ad_count[1]~9\ : std_logic;
SIGNAL \ad|ad_count[1]~9COUT1_14\ : std_logic;
SIGNAL \ad|ad_count[2]~7\ : std_logic;
SIGNAL \ad|ad_count[2]~7COUT1_15\ : std_logic;
SIGNAL \ad|ad_count[3]~5\ : std_logic;
SIGNAL \ad|ad_count[3]~5COUT1_16\ : std_logic;
SIGNAL \ad|Equal2~1_combout\ : std_logic;
SIGNAL \ad|rsr[0]~0_combout\ : std_logic;
SIGNAL \ad|Mux16~0\ : std_logic;
SIGNAL \ad|Mux16~1\ : std_logic;
SIGNAL \ad|Add2~23\ : std_logic;
SIGNAL \ad|Add2~19\ : std_logic;
SIGNAL \ad|Mux15~0\ : std_logic;
SIGNAL \ad|Mux15~1_combout\ : std_logic;
SIGNAL \ad|Add2~77\ : std_logic;
SIGNAL \ad|Add2~75\ : std_logic;
SIGNAL \ad|Mux21~0\ : std_logic;
SIGNAL \ad|Mux21~1_combout\ : std_logic;
SIGNAL \ad|Add2~76\ : std_logic;
SIGNAL \ad|Mux21~2_combout\ : std_logic;
SIGNAL \ad|Add2~120\ : std_logic;
SIGNAL \ad|Add2~121_combout\ : std_logic;
SIGNAL \ad|Add2~122\ : std_logic;
SIGNAL \ad|Add2~123\ : std_logic;
SIGNAL \ad|Add2~124\ : std_logic;
SIGNAL \ad|Add2~125\ : std_logic;
SIGNAL \ad|Add2~126_combout\ : std_logic;
SIGNAL \ad|Add2~129_cout0\ : std_logic;
SIGNAL \ad|Add2~129COUT1_133\ : std_logic;
SIGNAL \ad|Add2~115_combout\ : std_logic;
SIGNAL \ad|Equal1~0_combout\ : std_logic;
SIGNAL \ad|Mux26~0\ : std_logic;
SIGNAL \ad|Mux26~1_combout\ : std_logic;
SIGNAL \ad|Mux26~2_combout\ : std_logic;
SIGNAL \ad|LessThan10~57_cout\ : std_logic;
SIGNAL \ad|Add2~84\ : std_logic;
SIGNAL \ad|Mux22~0\ : std_logic;
SIGNAL \ad|Mux22~1_combout\ : std_logic;
SIGNAL \ad|Add2~85\ : std_logic;
SIGNAL \ad|Add2~86\ : std_logic;
SIGNAL \ad|Mux22~2\ : std_logic;
SIGNAL \ad|Add2~93\ : std_logic;
SIGNAL \ad|Mux23~0\ : std_logic;
SIGNAL \ad|Mux23~1_combout\ : std_logic;
SIGNAL \ad|Add2~94\ : std_logic;
SIGNAL \ad|Add2~95\ : std_logic;
SIGNAL \ad|Mux23~2_combout\ : std_logic;
SIGNAL \ad|Add2~102\ : std_logic;
SIGNAL \ad|Add2~103\ : std_logic;
SIGNAL \ad|Add2~104\ : std_logic;
SIGNAL \ad|Mux24~2\ : std_logic;
SIGNAL \ad|Mux24~0\ : std_logic;
SIGNAL \ad|Mux24~1_combout\ : std_logic;
SIGNAL \ad|Add2~111\ : std_logic;
SIGNAL \ad|Mux25~0\ : std_logic;
SIGNAL \ad|Mux25~1_combout\ : std_logic;
SIGNAL \ad|Add2~112\ : std_logic;
SIGNAL \ad|Add2~113\ : std_logic;
SIGNAL \ad|Mux25~2_combout\ : std_logic;
SIGNAL \ad|LessThan10~52_cout0\ : std_logic;
SIGNAL \ad|LessThan10~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan10~47_cout0\ : std_logic;
SIGNAL \ad|LessThan10~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan10~42_cout0\ : std_logic;
SIGNAL \ad|LessThan10~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan10~37_cout0\ : std_logic;
SIGNAL \ad|LessThan10~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan10~32_cout\ : std_logic;
SIGNAL \ad|Mux17~2_combout\ : std_logic;
SIGNAL \ad|Add2~39\ : std_logic;
SIGNAL \ad|Add2~40\ : std_logic;
SIGNAL \ad|Add2~41\ : std_logic;
SIGNAL \ad|Mux17~0\ : std_logic;
SIGNAL \ad|Mux17~1_combout\ : std_logic;
SIGNAL \ad|Mux18~2\ : std_logic;
SIGNAL \ad|Add2~48\ : std_logic;
SIGNAL \ad|Mux18~0\ : std_logic;
SIGNAL \ad|Mux18~1_combout\ : std_logic;
SIGNAL \ad|Add2~49\ : std_logic;
SIGNAL \ad|Add2~50\ : std_logic;
SIGNAL \ad|Add2~59\ : std_logic;
SIGNAL \ad|Add2~57\ : std_logic;
SIGNAL \ad|Mux19~0\ : std_logic;
SIGNAL \ad|Mux19~1_combout\ : std_logic;
SIGNAL \ad|Add2~58\ : std_logic;
SIGNAL \ad|Mux19~2_combout\ : std_logic;
SIGNAL \ad|Add2~66\ : std_logic;
SIGNAL \ad|Add2~67\ : std_logic;
SIGNAL \ad|Add2~68\ : std_logic;
SIGNAL \ad|Mux20~2\ : std_logic;
SIGNAL \ad|Mux20~0\ : std_logic;
SIGNAL \ad|Mux20~1_combout\ : std_logic;
SIGNAL \ad|LessThan10~27_cout0\ : std_logic;
SIGNAL \ad|LessThan10~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan10~22_cout0\ : std_logic;
SIGNAL \ad|LessThan10~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan10~17_cout0\ : std_logic;
SIGNAL \ad|LessThan10~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan10~12_cout0\ : std_logic;
SIGNAL \ad|LessThan10~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan10~7_cout\ : std_logic;
SIGNAL \ad|LessThan10~0_combout\ : std_logic;
SIGNAL \ad|LessThan8~57_cout\ : std_logic;
SIGNAL \ad|LessThan8~52_cout0\ : std_logic;
SIGNAL \ad|LessThan8~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan8~47_cout0\ : std_logic;
SIGNAL \ad|LessThan8~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan8~42_cout0\ : std_logic;
SIGNAL \ad|LessThan8~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan8~37_cout0\ : std_logic;
SIGNAL \ad|LessThan8~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan8~32_cout\ : std_logic;
SIGNAL \ad|LessThan8~27_cout0\ : std_logic;
SIGNAL \ad|LessThan8~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan8~22_cout0\ : std_logic;
SIGNAL \ad|LessThan8~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan8~17_cout0\ : std_logic;
SIGNAL \ad|LessThan8~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan8~12_cout0\ : std_logic;
SIGNAL \ad|LessThan8~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan8~7_cout\ : std_logic;
SIGNAL \ad|LessThan8~0_combout\ : std_logic;
SIGNAL \ad|LessThan6~57_cout\ : std_logic;
SIGNAL \ad|LessThan6~52_cout0\ : std_logic;
SIGNAL \ad|LessThan6~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan6~47_cout0\ : std_logic;
SIGNAL \ad|LessThan6~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan6~42_cout0\ : std_logic;
SIGNAL \ad|LessThan6~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan6~37_cout0\ : std_logic;
SIGNAL \ad|LessThan6~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan6~32_cout\ : std_logic;
SIGNAL \ad|LessThan6~27_cout0\ : std_logic;
SIGNAL \ad|LessThan6~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan6~22_cout0\ : std_logic;
SIGNAL \ad|LessThan6~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan6~17_cout0\ : std_logic;
SIGNAL \ad|LessThan6~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan6~12_cout0\ : std_logic;
SIGNAL \ad|LessThan6~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan6~7_cout\ : std_logic;
SIGNAL \ad|LessThan6~0_combout\ : std_logic;
SIGNAL \ad|adc_min[4]~0_combout\ : std_logic;
SIGNAL \ad|LessThan4~57_cout\ : std_logic;
SIGNAL \ad|LessThan4~52_cout0\ : std_logic;
SIGNAL \ad|LessThan4~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan4~47_cout0\ : std_logic;
SIGNAL \ad|LessThan4~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan4~42_cout0\ : std_logic;
SIGNAL \ad|LessThan4~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan4~37_cout0\ : std_logic;
SIGNAL \ad|LessThan4~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan4~32_cout\ : std_logic;
SIGNAL \ad|LessThan4~27_cout0\ : std_logic;
SIGNAL \ad|LessThan4~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan4~22_cout0\ : std_logic;
SIGNAL \ad|LessThan4~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan4~17_cout0\ : std_logic;
SIGNAL \ad|LessThan4~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan4~12_cout0\ : std_logic;
SIGNAL \ad|LessThan4~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan4~7_cout\ : std_logic;
SIGNAL \ad|LessThan4~0_combout\ : std_logic;
SIGNAL \ad|LessThan12~57_cout\ : std_logic;
SIGNAL \ad|LessThan12~52_cout0\ : std_logic;
SIGNAL \ad|LessThan12~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan12~47_cout0\ : std_logic;
SIGNAL \ad|LessThan12~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan12~42_cout0\ : std_logic;
SIGNAL \ad|LessThan12~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan12~37_cout0\ : std_logic;
SIGNAL \ad|LessThan12~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan12~32_cout\ : std_logic;
SIGNAL \ad|LessThan12~27_cout0\ : std_logic;
SIGNAL \ad|LessThan12~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan12~22_cout0\ : std_logic;
SIGNAL \ad|LessThan12~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan12~17_cout0\ : std_logic;
SIGNAL \ad|LessThan12~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan12~12_cout0\ : std_logic;
SIGNAL \ad|LessThan12~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan12~7_cout\ : std_logic;
SIGNAL \ad|LessThan12~0_combout\ : std_logic;
SIGNAL \ad|adc_min[4]~1_combout\ : std_logic;
SIGNAL \ad|adc_min[4]~2_combout\ : std_logic;
SIGNAL \ad|adc_min[4]~3_combout\ : std_logic;
SIGNAL \ad|Add2~20\ : std_logic;
SIGNAL \ad|Mux15~2_combout\ : std_logic;
SIGNAL \ad|LessThan9~57_cout\ : std_logic;
SIGNAL \ad|LessThan9~52_cout0\ : std_logic;
SIGNAL \ad|LessThan9~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan9~47_cout0\ : std_logic;
SIGNAL \ad|LessThan9~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan9~42_cout0\ : std_logic;
SIGNAL \ad|LessThan9~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan9~37_cout0\ : std_logic;
SIGNAL \ad|LessThan9~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan9~32_cout\ : std_logic;
SIGNAL \ad|LessThan9~27_cout0\ : std_logic;
SIGNAL \ad|LessThan9~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan9~22_cout0\ : std_logic;
SIGNAL \ad|LessThan9~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan9~17_cout0\ : std_logic;
SIGNAL \ad|LessThan9~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan9~12_cout0\ : std_logic;
SIGNAL \ad|LessThan9~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan9~7_cout\ : std_logic;
SIGNAL \ad|LessThan9~0_combout\ : std_logic;
SIGNAL \ad|LessThan5~57_cout\ : std_logic;
SIGNAL \ad|LessThan5~52_cout0\ : std_logic;
SIGNAL \ad|LessThan5~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan5~47_cout0\ : std_logic;
SIGNAL \ad|LessThan5~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan5~42_cout0\ : std_logic;
SIGNAL \ad|LessThan5~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan5~37_cout0\ : std_logic;
SIGNAL \ad|LessThan5~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan5~32_cout\ : std_logic;
SIGNAL \ad|LessThan5~27_cout0\ : std_logic;
SIGNAL \ad|LessThan5~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan5~22_cout0\ : std_logic;
SIGNAL \ad|LessThan5~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan5~17_cout0\ : std_logic;
SIGNAL \ad|LessThan5~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan5~12_cout0\ : std_logic;
SIGNAL \ad|LessThan5~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan5~7_cout\ : std_logic;
SIGNAL \ad|LessThan5~0_combout\ : std_logic;
SIGNAL \ad|LessThan7~57_cout\ : std_logic;
SIGNAL \ad|LessThan7~52_cout0\ : std_logic;
SIGNAL \ad|LessThan7~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan7~47_cout0\ : std_logic;
SIGNAL \ad|LessThan7~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan7~42_cout0\ : std_logic;
SIGNAL \ad|LessThan7~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan7~37_cout0\ : std_logic;
SIGNAL \ad|LessThan7~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan7~32_cout\ : std_logic;
SIGNAL \ad|LessThan7~27_cout0\ : std_logic;
SIGNAL \ad|LessThan7~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan7~22_cout0\ : std_logic;
SIGNAL \ad|LessThan7~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan7~17_cout0\ : std_logic;
SIGNAL \ad|LessThan7~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan7~12_cout0\ : std_logic;
SIGNAL \ad|LessThan7~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan7~7_cout\ : std_logic;
SIGNAL \ad|LessThan7~0_combout\ : std_logic;
SIGNAL \ad|adc_max[1]~0_combout\ : std_logic;
SIGNAL \ad|LessThan3~57_cout\ : std_logic;
SIGNAL \ad|LessThan3~52_cout0\ : std_logic;
SIGNAL \ad|LessThan3~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan3~47_cout0\ : std_logic;
SIGNAL \ad|LessThan3~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan3~42_cout0\ : std_logic;
SIGNAL \ad|LessThan3~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan3~37_cout0\ : std_logic;
SIGNAL \ad|LessThan3~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan3~32_cout\ : std_logic;
SIGNAL \ad|LessThan3~27_cout0\ : std_logic;
SIGNAL \ad|LessThan3~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan3~22_cout0\ : std_logic;
SIGNAL \ad|LessThan3~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan3~17_cout0\ : std_logic;
SIGNAL \ad|LessThan3~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan3~12_cout0\ : std_logic;
SIGNAL \ad|LessThan3~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan3~7_cout\ : std_logic;
SIGNAL \ad|LessThan3~0_combout\ : std_logic;
SIGNAL \ad|LessThan11~57_cout\ : std_logic;
SIGNAL \ad|LessThan11~52_cout0\ : std_logic;
SIGNAL \ad|LessThan11~52COUT1_61\ : std_logic;
SIGNAL \ad|LessThan11~47_cout0\ : std_logic;
SIGNAL \ad|LessThan11~47COUT1_62\ : std_logic;
SIGNAL \ad|LessThan11~42_cout0\ : std_logic;
SIGNAL \ad|LessThan11~42COUT1_63\ : std_logic;
SIGNAL \ad|LessThan11~37_cout0\ : std_logic;
SIGNAL \ad|LessThan11~37COUT1_64\ : std_logic;
SIGNAL \ad|LessThan11~32_cout\ : std_logic;
SIGNAL \ad|LessThan11~27_cout0\ : std_logic;
SIGNAL \ad|LessThan11~27COUT1_65\ : std_logic;
SIGNAL \ad|LessThan11~22_cout0\ : std_logic;
SIGNAL \ad|LessThan11~22COUT1_66\ : std_logic;
SIGNAL \ad|LessThan11~17_cout0\ : std_logic;
SIGNAL \ad|LessThan11~17COUT1_67\ : std_logic;
SIGNAL \ad|LessThan11~12_cout0\ : std_logic;
SIGNAL \ad|LessThan11~12COUT1_68\ : std_logic;
SIGNAL \ad|LessThan11~7_cout\ : std_logic;
SIGNAL \ad|LessThan11~0_combout\ : std_logic;
SIGNAL \ad|adc_max[1]~1_combout\ : std_logic;
SIGNAL \ad|adc_max[1]~2_combout\ : std_logic;
SIGNAL \ad|adc_max[1]~3_combout\ : std_logic;
SIGNAL \ad|Add2~30\ : std_logic;
SIGNAL \ad|Add2~31_combout\ : std_logic;
SIGNAL \ad|Add2~33\ : std_logic;
SIGNAL \ad|Add2~78\ : std_logic;
SIGNAL \ad|Add2~117\ : std_logic;
SIGNAL \ad|Add2~87\ : std_logic;
SIGNAL \ad|Add2~96\ : std_logic;
SIGNAL \ad|Add2~105\ : std_logic;
SIGNAL \ad|Add2~114\ : std_logic;
SIGNAL \ad|Add2~106_combout\ : std_logic;
SIGNAL \ad|Add2~108\ : std_logic;
SIGNAL \ad|Add2~108COUT1_134\ : std_logic;
SIGNAL \ad|Add2~97_combout\ : std_logic;
SIGNAL \ad|Add2~99\ : std_logic;
SIGNAL \ad|Add2~99COUT1_135\ : std_logic;
SIGNAL \ad|Add2~88_combout\ : std_logic;
SIGNAL \ad|Add2~90\ : std_logic;
SIGNAL \ad|Add2~90COUT1_136\ : std_logic;
SIGNAL \ad|Add2~79_combout\ : std_logic;
SIGNAL \ad|Add2~81\ : std_logic;
SIGNAL \ad|Add2~81COUT1_137\ : std_logic;
SIGNAL \ad|Add2~70_combout\ : std_logic;
SIGNAL \ad|Add2~72\ : std_logic;
SIGNAL \ad|Add2~42\ : std_logic;
SIGNAL \ad|Add2~51\ : std_logic;
SIGNAL \ad|Add2~60\ : std_logic;
SIGNAL \ad|Add2~69\ : std_logic;
SIGNAL \ad|Add2~61_combout\ : std_logic;
SIGNAL \ad|Add2~63\ : std_logic;
SIGNAL \ad|Add2~63COUT1_138\ : std_logic;
SIGNAL \ad|Add2~52_combout\ : std_logic;
SIGNAL \ad|Add2~54\ : std_logic;
SIGNAL \ad|Add2~54COUT1_139\ : std_logic;
SIGNAL \ad|Add2~43_combout\ : std_logic;
SIGNAL \ad|Add2~45\ : std_logic;
SIGNAL \ad|Add2~45COUT1_140\ : std_logic;
SIGNAL \ad|Add2~34_combout\ : std_logic;
SIGNAL \ad|Add2~36\ : std_logic;
SIGNAL \ad|Add2~36COUT1_141\ : std_logic;
SIGNAL \ad|Add2~25_combout\ : std_logic;
SIGNAL \ad|Add2~27\ : std_logic;
SIGNAL \ad|Add2~12_combout\ : std_logic;
SIGNAL \ad|Add2~24\ : std_logic;
SIGNAL \ad|Add2~14_combout\ : std_logic;
SIGNAL \ad|Add2~16\ : std_logic;
SIGNAL \ad|Add2~16COUT1_142\ : std_logic;
SIGNAL \ad|Add2~7_combout\ : std_logic;
SIGNAL \ad|Add2~13_combout\ : std_logic;
SIGNAL \ad|Add2~9\ : std_logic;
SIGNAL \ad|Add2~9COUT1_143\ : std_logic;
SIGNAL \ad|Add2~0_combout\ : std_logic;
SIGNAL \uv~combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[1]~1\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[2]~3\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count[2]~3COUT1_19\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count~6_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|count~8_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|uv_f|Equal0~0_combout\ : std_logic;
SIGNAL \db~combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|db_f|Equal0~0_combout\ : std_logic;
SIGNAL \bypass_i~combout\ : std_logic;
SIGNAL \pwm_down|down_deal|stop~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|stop~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|Selector0~1_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~32_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~30_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~28_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~26_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~24_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector19~1\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector19~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector28~9_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~22_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~20_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~18_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~16_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~14_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~12_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~10_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~8_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector10~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~7_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|Selector27~1_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|send_data[21]~0_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr~3_combout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|dout~regout\ : std_logic;
SIGNAL \pwm_up|up_sign|MSEND_BYTE|sent~0_combout\ : std_logic;
SIGNAL \ad|adclk~0_combout\ : std_logic;
SIGNAL \ad|adclk~regout\ : std_logic;
SIGNAL \pwm_down|dead|out_en~combout\ : std_logic;
SIGNAL \pwm_down|down_deal|Equal8~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|always2~1\ : std_logic;
SIGNAL \pwm_down|down_deal|always2~2\ : std_logic;
SIGNAL \pwm_down|down_deal|always2~3\ : std_logic;
SIGNAL \pwm_down|down_deal|always2~4_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|always2~0\ : std_logic;
SIGNAL \pwm_down|down_deal|reg_igbt[1]~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[0]~9\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[0]~9COUT1_22\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[1]~11\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[1]~11COUT1_23\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[2]~13\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[2]~13COUT1_24\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[3]~15\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[3]~15COUT1_25\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[4]~17\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[5]~1\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[5]~1COUT1_26\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[6]~3\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[6]~3COUT1_27\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[7]~5\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[7]~5COUT1_28\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[8]~7\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[8]~7COUT1_29\ : std_logic;
SIGNAL \pwm_down|dead|d_data1[7]~20_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_1~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_1~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_1~3_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_1~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~8_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~9_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~10_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan4~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan7~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan4~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~6_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan5~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~5_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~7_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan6~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~4_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~11_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_1~regout\ : std_logic;
SIGNAL \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[0]~9\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[0]~9COUT1_22\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[1]~11\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[1]~11COUT1_23\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[2]~13\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[2]~13COUT1_24\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[3]~15\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[3]~15COUT1_25\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[4]~17\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[5]~1\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[5]~1COUT1_26\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[6]~3\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[6]~3COUT1_27\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[7]~5\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[7]~5COUT1_28\ : std_logic;
SIGNAL \pwm_down|dead|K_2~5_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[5]~20_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[8]~7\ : std_logic;
SIGNAL \pwm_down|dead|d_data2[8]~7COUT1_29\ : std_logic;
SIGNAL \pwm_down|dead|K_2~6_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~7_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~17_combout\ : std_logic;
SIGNAL \pwm_down|dead|Equal6~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~18_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~15_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~16_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~4_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~12_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~13_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~14_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~3_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_2~regout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~7_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[0]~9\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[0]~9COUT1_22\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[1]~11\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[1]~11COUT1_23\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[2]~13\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[2]~13COUT1_24\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[3]~15\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[3]~15COUT1_25\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[4]~17\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[5]~1\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[5]~1COUT1_26\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[6]~3\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[6]~3COUT1_27\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[7]~5\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[7]~5COUT1_28\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[8]~7\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[8]~7COUT1_29\ : std_logic;
SIGNAL \pwm_down|dead|d_data3[9]~20_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~8_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~9_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~10_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~19_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~3_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~4_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~5_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~6_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_3~regout\ : std_logic;
SIGNAL \pwm_down|dead|K_4~0_combout\ : std_logic;
SIGNAL \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[0]~9\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[0]~9COUT1_22\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[1]~11\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[1]~11COUT1_23\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[2]~13\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[2]~13COUT1_24\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[3]~15\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[3]~15COUT1_25\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[4]~17\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[5]~1\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[5]~1COUT1_26\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[6]~3\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[6]~3COUT1_27\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[7]~5\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[7]~5COUT1_28\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[8]~7\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[8]~7COUT1_29\ : std_logic;
SIGNAL \pwm_down|dead|d_data4[0]~20_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_4~1_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_4~2_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_4~3_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~25_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~21_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~20_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~22_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~23_combout\ : std_logic;
SIGNAL \pwm_down|dead|LessThan8~0_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~24_combout\ : std_logic;
SIGNAL \pwm_down|dead|always5~26_combout\ : std_logic;
SIGNAL \pwm_down|dead|K_4~regout\ : std_logic;
SIGNAL \bypass_o~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \dly_cnt[1]~13\ : std_logic;
SIGNAL \dly_cnt[1]~13COUT1_16\ : std_logic;
SIGNAL \dly_cnt[2]~11\ : std_logic;
SIGNAL \dly_cnt[2]~11COUT1_17\ : std_logic;
SIGNAL \dly_cnt[3]~1\ : std_logic;
SIGNAL \dly_cnt[3]~1COUT1_18\ : std_logic;
SIGNAL \dly_cnt[4]~3\ : std_logic;
SIGNAL \dly_cnt[5]~5\ : std_logic;
SIGNAL \dly_cnt[5]~5COUT1_19\ : std_logic;
SIGNAL \dly_cnt[6]~7\ : std_logic;
SIGNAL \dly_cnt[6]~7COUT1_20\ : std_logic;
SIGNAL \bypass_o~1_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \bypass_o~2_combout\ : std_logic;
SIGNAL \bypass_o~3_combout\ : std_logic;
SIGNAL \init|LessThan0~0_combout\ : std_logic;
SIGNAL \init|LessThan0~1_combout\ : std_logic;
SIGNAL \init|Equal2~2_combout\ : std_logic;
SIGNAL \init|LessThan0~2_combout\ : std_logic;
SIGNAL \init|Equal2~1_combout\ : std_logic;
SIGNAL \init|Equal2~3_combout\ : std_logic;
SIGNAL \init|Equal2~4_combout\ : std_logic;
SIGNAL \init|comb~1_combout\ : std_logic;
SIGNAL \init|led[1]~1_combout\ : std_logic;
SIGNAL \pwm_up|sign_deal|db_f|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL dly_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL \ad|rsr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \init|temp1\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \pwm_up|up_sign|reg_flt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \init|led\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ad|clk_div\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t3|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|up_sign|MSEND_BYTE|rsr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t4|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad|ad_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pwm_down|down_deal|tri_200us\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|call_count1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ad|ad_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ad|adc_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_down|des|rsr\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|TEM_f|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_down|des|bits_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|uv_f|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|ov_f|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_down|down_deal|cmd_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwm_down|dead|chkflt_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwm_down|dead|d_data1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_down|dead|d_data2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_down|dead|d_data3\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_down|down_deal|reg_igbt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_down|dead|d_data4\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ad|adc_data1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|call_count2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_up|up_sign|MSEND_BYTE|bits_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pwm_down|des|recv_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \pwm_down|dead|igbt_rst\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t1|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t2|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|TEM_f|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|ov_f|in1_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad|adc_data5\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|t_data\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ad|adc_data3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|rcvd_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_up|up_sign|send_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \pwm_down|des|crc_gene|d_temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwm_down|cdr|din_dly\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad|volt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ad|adc_sum\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ad|sta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad|adc_max\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pwm_up|sign_deal|db_f|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad|adc_data4\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ad|adc_min\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ad|adc_data2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ad|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_down|cdr|ALT_INV_din_dly\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_tr1 <= tr1;
ww_tr2 <= tr2;
ww_tr3 <= tr3;
ww_tr4 <= tr4;
ww_col1 <= col1;
ww_col2 <= col2;
ww_col3 <= col3;
ww_col4 <= col4;
ww_ov <= ov;
ww_uv <= uv;
ww_db <= db;
ww_TEM <= TEM;
ww_rcvd <= rcvd;
sent <= ww_sent;
ww_rect_rcvd <= rect_rcvd;
rect_sent <= ww_rect_sent;
adclk <= ww_adclk;
cs_n <= ww_cs_n;
ww_ad_in <= ad_in;
K_1 <= ww_K_1;
K_2 <= ww_K_2;
K_3 <= ww_K_3;
K_4 <= ww_K_4;
ww_bypass_i <= bypass_i;
bypass_o <= ww_bypass_o;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ad|ALT_INV_Equal1~0_combout\ <= NOT \ad|Equal1~0_combout\;
\pwm_down|cdr|ALT_INV_din_dly\(3) <= NOT \pwm_down|cdr|din_dly\(3);
\pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\ <= NOT \pwm_down|des|cur_sta.S_IDLE~regout\;

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X7_Y9_N4
\pwm_down|down_deal|tri_200us[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(0) = DFFEAS((!\pwm_down|down_deal|tri_200us\(0)), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[0]~1\ = CARRY((\pwm_down|down_deal|tri_200us\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(0),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(0),
	cout => \pwm_down|down_deal|tri_200us[0]~1\);

-- Location: LC_X7_Y9_N5
\pwm_down|down_deal|tri_200us[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(1) = DFFEAS(\pwm_down|down_deal|tri_200us\(1) $ ((((\pwm_down|down_deal|tri_200us[0]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[1]~7\ = CARRY(((!\pwm_down|down_deal|tri_200us[0]~1\)) # (!\pwm_down|down_deal|tri_200us\(1)))
-- \pwm_down|down_deal|tri_200us[1]~7COUT1_30\ = CARRY(((!\pwm_down|down_deal|tri_200us[0]~1\)) # (!\pwm_down|down_deal|tri_200us\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(1),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(1),
	cout0 => \pwm_down|down_deal|tri_200us[1]~7\,
	cout1 => \pwm_down|down_deal|tri_200us[1]~7COUT1_30\);

-- Location: LC_X7_Y9_N6
\pwm_down|down_deal|tri_200us[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(2) = DFFEAS(\pwm_down|down_deal|tri_200us\(2) $ ((((!(!\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[1]~7\) # (\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[1]~7COUT1_30\))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[2]~9\ = CARRY((\pwm_down|down_deal|tri_200us\(2) & ((!\pwm_down|down_deal|tri_200us[1]~7\))))
-- \pwm_down|down_deal|tri_200us[2]~9COUT1_31\ = CARRY((\pwm_down|down_deal|tri_200us\(2) & ((!\pwm_down|down_deal|tri_200us[1]~7COUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(2),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[0]~1\,
	cin0 => \pwm_down|down_deal|tri_200us[1]~7\,
	cin1 => \pwm_down|down_deal|tri_200us[1]~7COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(2),
	cout0 => \pwm_down|down_deal|tri_200us[2]~9\,
	cout1 => \pwm_down|down_deal|tri_200us[2]~9COUT1_31\);

-- Location: LC_X7_Y9_N7
\pwm_down|down_deal|tri_200us[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(3) = DFFEAS((\pwm_down|down_deal|tri_200us\(3) $ (((!\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[2]~9\) # (\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[2]~9COUT1_31\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[3]~11\ = CARRY(((!\pwm_down|down_deal|tri_200us[2]~9\) # (!\pwm_down|down_deal|tri_200us\(3))))
-- \pwm_down|down_deal|tri_200us[3]~11COUT1_32\ = CARRY(((!\pwm_down|down_deal|tri_200us[2]~9COUT1_31\) # (!\pwm_down|down_deal|tri_200us\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|tri_200us\(3),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[0]~1\,
	cin0 => \pwm_down|down_deal|tri_200us[2]~9\,
	cin1 => \pwm_down|down_deal|tri_200us[2]~9COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(3),
	cout0 => \pwm_down|down_deal|tri_200us[3]~11\,
	cout1 => \pwm_down|down_deal|tri_200us[3]~11COUT1_32\);

-- Location: LC_X7_Y9_N8
\pwm_down|down_deal|tri_200us[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(4) = DFFEAS(\pwm_down|down_deal|tri_200us\(4) $ ((((!(!\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[3]~11\) # (\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[3]~11COUT1_32\))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[4]~13\ = CARRY((\pwm_down|down_deal|tri_200us\(4) & ((!\pwm_down|down_deal|tri_200us[3]~11\))))
-- \pwm_down|down_deal|tri_200us[4]~13COUT1_33\ = CARRY((\pwm_down|down_deal|tri_200us\(4) & ((!\pwm_down|down_deal|tri_200us[3]~11COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(4),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[0]~1\,
	cin0 => \pwm_down|down_deal|tri_200us[3]~11\,
	cin1 => \pwm_down|down_deal|tri_200us[3]~11COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(4),
	cout0 => \pwm_down|down_deal|tri_200us[4]~13\,
	cout1 => \pwm_down|down_deal|tri_200us[4]~13COUT1_33\);

-- Location: LC_X7_Y9_N9
\pwm_down|down_deal|tri_200us[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(5) = DFFEAS((\pwm_down|down_deal|tri_200us\(5) $ (((!\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[4]~13\) # (\pwm_down|down_deal|tri_200us[0]~1\ & \pwm_down|down_deal|tri_200us[4]~13COUT1_33\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[5]~15\ = CARRY(((!\pwm_down|down_deal|tri_200us[4]~13COUT1_33\) # (!\pwm_down|down_deal|tri_200us\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|tri_200us\(5),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[0]~1\,
	cin0 => \pwm_down|down_deal|tri_200us[4]~13\,
	cin1 => \pwm_down|down_deal|tri_200us[4]~13COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(5),
	cout => \pwm_down|down_deal|tri_200us[5]~15\);

-- Location: LC_X8_Y9_N0
\pwm_down|down_deal|tri_200us[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(6) = DFFEAS((\pwm_down|down_deal|tri_200us\(6) $ ((!\pwm_down|down_deal|tri_200us[5]~15\))), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[6]~3\ = CARRY(((\pwm_down|down_deal|tri_200us\(6) & !\pwm_down|down_deal|tri_200us[5]~15\)))
-- \pwm_down|down_deal|tri_200us[6]~3COUT1_34\ = CARRY(((\pwm_down|down_deal|tri_200us\(6) & !\pwm_down|down_deal|tri_200us[5]~15\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|tri_200us\(6),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[5]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(6),
	cout0 => \pwm_down|down_deal|tri_200us[6]~3\,
	cout1 => \pwm_down|down_deal|tri_200us[6]~3COUT1_34\);

-- Location: LC_X8_Y9_N1
\pwm_down|down_deal|tri_200us[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(7) = DFFEAS((\pwm_down|down_deal|tri_200us\(7) $ (((!\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[6]~3\) # (\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[6]~3COUT1_34\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[7]~5\ = CARRY(((!\pwm_down|down_deal|tri_200us[6]~3\) # (!\pwm_down|down_deal|tri_200us\(7))))
-- \pwm_down|down_deal|tri_200us[7]~5COUT1_35\ = CARRY(((!\pwm_down|down_deal|tri_200us[6]~3COUT1_34\) # (!\pwm_down|down_deal|tri_200us\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|tri_200us\(7),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[5]~15\,
	cin0 => \pwm_down|down_deal|tri_200us[6]~3\,
	cin1 => \pwm_down|down_deal|tri_200us[6]~3COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(7),
	cout0 => \pwm_down|down_deal|tri_200us[7]~5\,
	cout1 => \pwm_down|down_deal|tri_200us[7]~5COUT1_35\);

-- Location: LC_X8_Y9_N2
\pwm_down|down_deal|tri_200us[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(8) = DFFEAS((\pwm_down|down_deal|tri_200us\(8) $ ((!(!\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[7]~5\) # (\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[7]~5COUT1_35\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[8]~17\ = CARRY(((\pwm_down|down_deal|tri_200us\(8) & !\pwm_down|down_deal|tri_200us[7]~5\)))
-- \pwm_down|down_deal|tri_200us[8]~17COUT1_36\ = CARRY(((\pwm_down|down_deal|tri_200us\(8) & !\pwm_down|down_deal|tri_200us[7]~5COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|tri_200us\(8),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[5]~15\,
	cin0 => \pwm_down|down_deal|tri_200us[7]~5\,
	cin1 => \pwm_down|down_deal|tri_200us[7]~5COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(8),
	cout0 => \pwm_down|down_deal|tri_200us[8]~17\,
	cout1 => \pwm_down|down_deal|tri_200us[8]~17COUT1_36\);

-- Location: LC_X8_Y9_N3
\pwm_down|down_deal|tri_200us[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(9) = DFFEAS(\pwm_down|down_deal|tri_200us\(9) $ (((((!\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[8]~17\) # (\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[8]~17COUT1_36\))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[9]~19\ = CARRY(((!\pwm_down|down_deal|tri_200us[8]~17\)) # (!\pwm_down|down_deal|tri_200us\(9)))
-- \pwm_down|down_deal|tri_200us[9]~19COUT1_37\ = CARRY(((!\pwm_down|down_deal|tri_200us[8]~17COUT1_36\)) # (!\pwm_down|down_deal|tri_200us\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(9),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[5]~15\,
	cin0 => \pwm_down|down_deal|tri_200us[8]~17\,
	cin1 => \pwm_down|down_deal|tri_200us[8]~17COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(9),
	cout0 => \pwm_down|down_deal|tri_200us[9]~19\,
	cout1 => \pwm_down|down_deal|tri_200us[9]~19COUT1_37\);

-- Location: LC_X8_Y9_N4
\pwm_down|down_deal|tri_200us[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(10) = DFFEAS(\pwm_down|down_deal|tri_200us\(10) $ ((((!(!\pwm_down|down_deal|tri_200us[5]~15\ & \pwm_down|down_deal|tri_200us[9]~19\) # (\pwm_down|down_deal|tri_200us[5]~15\ & 
-- \pwm_down|down_deal|tri_200us[9]~19COUT1_37\))))), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[10]~21\ = CARRY((\pwm_down|down_deal|tri_200us\(10) & ((!\pwm_down|down_deal|tri_200us[9]~19COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(10),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[5]~15\,
	cin0 => \pwm_down|down_deal|tri_200us[9]~19\,
	cin1 => \pwm_down|down_deal|tri_200us[9]~19COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(10),
	cout => \pwm_down|down_deal|tri_200us[10]~21\);

-- Location: LC_X8_Y9_N5
\pwm_down|down_deal|tri_200us[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(11) = DFFEAS(\pwm_down|down_deal|tri_200us\(11) $ ((((\pwm_down|down_deal|tri_200us[10]~21\)))), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )
-- \pwm_down|down_deal|tri_200us[11]~23\ = CARRY(((!\pwm_down|down_deal|tri_200us[10]~21\)) # (!\pwm_down|down_deal|tri_200us\(11)))
-- \pwm_down|down_deal|tri_200us[11]~23COUT1_38\ = CARRY(((!\pwm_down|down_deal|tri_200us[10]~21\)) # (!\pwm_down|down_deal|tri_200us\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(11),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(11),
	cout0 => \pwm_down|down_deal|tri_200us[11]~23\,
	cout1 => \pwm_down|down_deal|tri_200us[11]~23COUT1_38\);

-- Location: LC_X8_Y9_N6
\pwm_down|down_deal|tri_200us[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us\(12) = DFFEAS(\pwm_down|down_deal|tri_200us\(12) $ ((((!(!\pwm_down|down_deal|tri_200us[10]~21\ & \pwm_down|down_deal|tri_200us[11]~23\) # (\pwm_down|down_deal|tri_200us[10]~21\ & 
-- \pwm_down|down_deal|tri_200us[11]~23COUT1_38\))))), GLOBAL(\clk~combout\), VCC, , , , , \pwm_down|down_deal|tri_200us[10]~28_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|tri_200us\(12),
	aclr => GND,
	sclr => \pwm_down|down_deal|tri_200us[10]~28_combout\,
	cin => \pwm_down|down_deal|tri_200us[10]~21\,
	cin0 => \pwm_down|down_deal|tri_200us[11]~23\,
	cin1 => \pwm_down|down_deal|tri_200us[11]~23COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|tri_200us\(12));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rcvd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rcvd,
	combout => \rcvd~combout\);

-- Location: LC_X14_Y3_N8
\init|temp1[0]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(0) = DFFEAS(\init|temp1\(0) $ ((((\init|always1~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(0),
	datad => \init|always1~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(0));

-- Location: LC_X13_Y3_N4
\init|temp1[1]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(1) = DFFEAS(\init|temp1\(1) $ ((\init|temp1\(0))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[1]~9\ = CARRY((\init|temp1\(1) & (\init|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(1),
	datab => \init|temp1\(0),
	aclr => GND,
	ena => \init|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(1),
	cout => \init|temp1[1]~9\);

-- Location: LC_X13_Y3_N5
\init|temp1[2]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(2) = DFFEAS(\init|temp1\(2) $ ((((\init|temp1[1]~9\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[2]~11\ = CARRY(((!\init|temp1[1]~9\)) # (!\init|temp1\(2)))
-- \init|temp1[2]~11COUT1_28\ = CARRY(((!\init|temp1[1]~9\)) # (!\init|temp1\(2)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(2),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[1]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(2),
	cout0 => \init|temp1[2]~11\,
	cout1 => \init|temp1[2]~11COUT1_28\);

-- Location: LC_X13_Y3_N6
\init|temp1[3]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(3) = DFFEAS((\init|temp1\(3) $ ((!(!\init|temp1[1]~9\ & \init|temp1[2]~11\) # (\init|temp1[1]~9\ & \init|temp1[2]~11COUT1_28\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[3]~13\ = CARRY(((\init|temp1\(3) & !\init|temp1[2]~11\)))
-- \init|temp1[3]~13COUT1_29\ = CARRY(((\init|temp1\(3) & !\init|temp1[2]~11COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(3),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[1]~9\,
	cin0 => \init|temp1[2]~11\,
	cin1 => \init|temp1[2]~11COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(3),
	cout0 => \init|temp1[3]~13\,
	cout1 => \init|temp1[3]~13COUT1_29\);

-- Location: LC_X13_Y3_N7
\init|temp1[4]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(4) = DFFEAS((\init|temp1\(4) $ (((!\init|temp1[1]~9\ & \init|temp1[3]~13\) # (\init|temp1[1]~9\ & \init|temp1[3]~13COUT1_29\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[4]~15\ = CARRY(((!\init|temp1[3]~13\) # (!\init|temp1\(4))))
-- \init|temp1[4]~15COUT1_30\ = CARRY(((!\init|temp1[3]~13COUT1_29\) # (!\init|temp1\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(4),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[1]~9\,
	cin0 => \init|temp1[3]~13\,
	cin1 => \init|temp1[3]~13COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(4),
	cout0 => \init|temp1[4]~15\,
	cout1 => \init|temp1[4]~15COUT1_30\);

-- Location: LC_X13_Y3_N8
\init|temp1[5]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(5) = DFFEAS(\init|temp1\(5) $ ((((!(!\init|temp1[1]~9\ & \init|temp1[4]~15\) # (\init|temp1[1]~9\ & \init|temp1[4]~15COUT1_30\))))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[5]~19\ = CARRY((\init|temp1\(5) & ((!\init|temp1[4]~15\))))
-- \init|temp1[5]~19COUT1_31\ = CARRY((\init|temp1\(5) & ((!\init|temp1[4]~15COUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(5),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[1]~9\,
	cin0 => \init|temp1[4]~15\,
	cin1 => \init|temp1[4]~15COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(5),
	cout0 => \init|temp1[5]~19\,
	cout1 => \init|temp1[5]~19COUT1_31\);

-- Location: LC_X13_Y3_N9
\init|temp1[6]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(6) = DFFEAS((\init|temp1\(6) $ (((!\init|temp1[1]~9\ & \init|temp1[5]~19\) # (\init|temp1[1]~9\ & \init|temp1[5]~19COUT1_31\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[6]~21\ = CARRY(((!\init|temp1[5]~19COUT1_31\) # (!\init|temp1\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(6),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[1]~9\,
	cin0 => \init|temp1[5]~19\,
	cin1 => \init|temp1[5]~19COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(6),
	cout => \init|temp1[6]~21\);

-- Location: LC_X14_Y3_N0
\init|temp1[7]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(7) = DFFEAS((\init|temp1\(7) $ ((!\init|temp1[6]~21\))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[7]~17\ = CARRY(((\init|temp1\(7) & !\init|temp1[6]~21\)))
-- \init|temp1[7]~17COUT1_32\ = CARRY(((\init|temp1\(7) & !\init|temp1[6]~21\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(7),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[6]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(7),
	cout0 => \init|temp1[7]~17\,
	cout1 => \init|temp1[7]~17COUT1_32\);

-- Location: LC_X14_Y3_N1
\init|temp1[8]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(8) = DFFEAS((\init|temp1\(8) $ (((!\init|temp1[6]~21\ & \init|temp1[7]~17\) # (\init|temp1[6]~21\ & \init|temp1[7]~17COUT1_32\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[8]~23\ = CARRY(((!\init|temp1[7]~17\) # (!\init|temp1\(8))))
-- \init|temp1[8]~23COUT1_33\ = CARRY(((!\init|temp1[7]~17COUT1_32\) # (!\init|temp1\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(8),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[6]~21\,
	cin0 => \init|temp1[7]~17\,
	cin1 => \init|temp1[7]~17COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(8),
	cout0 => \init|temp1[8]~23\,
	cout1 => \init|temp1[8]~23COUT1_33\);

-- Location: LC_X14_Y3_N2
\init|temp1[9]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(9) = DFFEAS((\init|temp1\(9) $ ((!(!\init|temp1[6]~21\ & \init|temp1[8]~23\) # (\init|temp1[6]~21\ & \init|temp1[8]~23COUT1_33\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[9]~25\ = CARRY(((\init|temp1\(9) & !\init|temp1[8]~23\)))
-- \init|temp1[9]~25COUT1_34\ = CARRY(((\init|temp1\(9) & !\init|temp1[8]~23COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(9),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[6]~21\,
	cin0 => \init|temp1[8]~23\,
	cin1 => \init|temp1[8]~23COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(9),
	cout0 => \init|temp1[9]~25\,
	cout1 => \init|temp1[9]~25COUT1_34\);

-- Location: LC_X14_Y3_N3
\init|temp1[10]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(10) = DFFEAS(\init|temp1\(10) $ (((((!\init|temp1[6]~21\ & \init|temp1[9]~25\) # (\init|temp1[6]~21\ & \init|temp1[9]~25COUT1_34\))))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[10]~1\ = CARRY(((!\init|temp1[9]~25\)) # (!\init|temp1\(10)))
-- \init|temp1[10]~1COUT1_35\ = CARRY(((!\init|temp1[9]~25COUT1_34\)) # (!\init|temp1\(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(10),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[6]~21\,
	cin0 => \init|temp1[9]~25\,
	cin1 => \init|temp1[9]~25COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(10),
	cout0 => \init|temp1[10]~1\,
	cout1 => \init|temp1[10]~1COUT1_35\);

-- Location: LC_X14_Y3_N4
\init|temp1[11]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(11) = DFFEAS((\init|temp1\(11) $ ((!(!\init|temp1[6]~21\ & \init|temp1[10]~1\) # (\init|temp1[6]~21\ & \init|temp1[10]~1COUT1_35\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[11]~3\ = CARRY(((\init|temp1\(11) & !\init|temp1[10]~1COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \init|temp1\(11),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[6]~21\,
	cin0 => \init|temp1[10]~1\,
	cin1 => \init|temp1[10]~1COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(11),
	cout => \init|temp1[11]~3\);

-- Location: LC_X14_Y3_N5
\init|temp1[12]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(12) = DFFEAS(\init|temp1\(12) $ ((((\init|temp1[11]~3\)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )
-- \init|temp1[12]~5\ = CARRY(((!\init|temp1[11]~3\)) # (!\init|temp1\(12)))
-- \init|temp1[12]~5COUT1_36\ = CARRY(((!\init|temp1[11]~3\)) # (!\init|temp1\(12)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|temp1\(12),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[11]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(12),
	cout0 => \init|temp1[12]~5\,
	cout1 => \init|temp1[12]~5COUT1_36\);

-- Location: LC_X14_Y3_N6
\init|temp1[13]\ : maxii_lcell
-- Equation(s):
-- \init|temp1\(13) = DFFEAS((((!\init|temp1[11]~3\ & \init|temp1[12]~5\) # (\init|temp1[11]~3\ & \init|temp1[12]~5COUT1_36\) $ (!\init|temp1\(13)))), GLOBAL(\clk~combout\), VCC, , \init|always1~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \init|temp1\(13),
	aclr => GND,
	ena => \init|always1~2_combout\,
	cin => \init|temp1[11]~3\,
	cin0 => \init|temp1[12]~5\,
	cin1 => \init|temp1[12]~5COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|temp1\(13));

-- Location: LC_X12_Y3_N5
\init|Equal2~0\ : maxii_lcell
-- Equation(s):
-- \init|Equal2~0_combout\ = ((\init|temp1\(11) & (\init|temp1\(12) & \init|temp1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \init|temp1\(11),
	datac => \init|temp1\(12),
	datad => \init|temp1\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|Equal2~0_combout\);

-- Location: LC_X12_Y4_N3
\init|always1~0\ : maxii_lcell
-- Equation(s):
-- \init|always1~0_combout\ = (!\init|temp1\(5) & (!\init|temp1\(6) & ((!\init|temp1\(4)) # (!\init|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(5),
	datab => \init|temp1\(3),
	datac => \init|temp1\(4),
	datad => \init|temp1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|always1~0_combout\);

-- Location: LC_X12_Y4_N4
\init|always1~1\ : maxii_lcell
-- Equation(s):
-- \init|always1~1_combout\ = ((!\init|temp1\(8) & ((\init|always1~0_combout\) # (!\init|temp1\(7))))) # (!\init|temp1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7757",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(9),
	datab => \init|temp1\(8),
	datac => \init|temp1\(7),
	datad => \init|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|always1~1_combout\);

-- Location: LC_X12_Y4_N5
\init|always1~2\ : maxii_lcell
-- Equation(s):
-- \init|always1~2_combout\ = (\pwm_up|up_sign|Equal0~3_combout\ & (((!\init|temp1\(10) & \init|always1~1_combout\)) # (!\init|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|Equal2~0_combout\,
	datab => \init|temp1\(10),
	datac => \pwm_up|up_sign|Equal0~3_combout\,
	datad => \init|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|always1~2_combout\);

-- Location: LC_X14_Y3_N9
\init|LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \init|LessThan2~0_combout\ = (!\init|temp1\(10) & (!\init|temp1\(13) & (!\init|temp1\(12) & !\init|temp1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(10),
	datab => \init|temp1\(13),
	datac => \init|temp1\(12),
	datad => \init|temp1\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan2~0_combout\);

-- Location: LC_X13_Y3_N0
\init|comb~0\ : maxii_lcell
-- Equation(s):
-- \init|comb~0_combout\ = ((\init|temp1\(6) & ((\init|temp1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \init|temp1\(6),
	datad => \init|temp1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|comb~0_combout\);

-- Location: LC_X13_Y3_N3
\init|LessThan2~1\ : maxii_lcell
-- Equation(s):
-- \init|LessThan2~1_combout\ = (((!\init|temp1\(1)) # (!\init|temp1\(3))) # (!\init|temp1\(0))) # (!\init|temp1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(2),
	datab => \init|temp1\(0),
	datac => \init|temp1\(3),
	datad => \init|temp1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan2~1_combout\);

-- Location: LC_X13_Y3_N1
\init|LessThan2~2\ : maxii_lcell
-- Equation(s):
-- \init|LessThan2~2_combout\ = (((!\init|temp1\(4) & \init|LessThan2~1_combout\)) # (!\init|comb~0_combout\)) # (!\init|temp1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(7),
	datab => \init|temp1\(4),
	datac => \init|comb~0_combout\,
	datad => \init|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan2~2_combout\);

-- Location: LC_X13_Y3_N2
\init|LessThan2~3\ : maxii_lcell
-- Equation(s):
-- \init|LessThan2~3_combout\ = (\init|LessThan2~0_combout\ & (((!\init|temp1\(8) & \init|LessThan2~2_combout\)) # (!\init|temp1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(8),
	datab => \init|temp1\(9),
	datac => \init|LessThan2~0_combout\,
	datad => \init|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan2~3_combout\);

-- Location: LC_X9_Y10_N5
\pwm_down|cdr|din_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|din_dly\(0) = DFFEAS((((!\rcvd~combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rcvd~combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|din_dly\(0));

-- Location: LC_X9_Y10_N4
\pwm_down|cdr|din_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|din_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|cdr|din_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|din_dly\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|din_dly\(1));

-- Location: LC_X9_Y10_N7
\pwm_down|cdr|din_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|din_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|cdr|din_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|din_dly\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|din_dly\(2));

-- Location: LC_X11_Y10_N2
\pwm_down|cdr|din_dly[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|din_dly\(3) = DFFEAS((((\pwm_down|cdr|din_dly\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|din_dly\(2),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|din_dly\(3));

-- Location: LC_X12_Y10_N9
\pwm_down|cdr|sta.S12\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S12~regout\ = DFFEAS((((\pwm_down|cdr|sta.S1~regout\ & \pwm_down|cdr|din_dly\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta.S1~regout\,
	datad => \pwm_down|cdr|din_dly\(3),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S12~regout\);

-- Location: LC_X12_Y10_N2
\pwm_down|cdr|sta.S13\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S13~regout\ = DFFEAS(((\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S12~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datad => \pwm_down|cdr|sta.S12~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S13~regout\);

-- Location: LC_X12_Y10_N7
\pwm_down|cdr|Selector9~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|Selector9~0_combout\ = ((!\pwm_down|cdr|sta.S6~regout\ & ((!\pwm_down|cdr|sta.S13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|cdr|sta.S6~regout\,
	datad => \pwm_down|cdr|sta.S13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|cdr|Selector9~0_combout\);

-- Location: LC_X11_Y10_N8
\pwm_down|cdr|sta.Sa\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.Sa~regout\ = DFFEAS(VCC, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|cdr|din_dly\(3), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|cdr|din_dly\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.Sa~regout\);

-- Location: LC_X11_Y10_N0
\pwm_down|cdr|sta.Sb\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.Sb~regout\ = DFFEAS((((!\pwm_down|cdr|sta.Sa~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|cdr|din_dly\(3), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|cdr|sta.Sa~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|cdr|din_dly\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.Sb~regout\);

-- Location: LC_X11_Y10_N7
\pwm_down|cdr|sta.S14\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S14~regout\ = DFFEAS(((!\pwm_down|cdr|din_dly\(3) & (\pwm_down|cdr|sta.S5~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datac => \pwm_down|cdr|sta.S5~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S14~regout\);

-- Location: LC_X12_Y10_N0
\pwm_down|cdr|sta.S15\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S15~regout\ = DFFEAS(((\pwm_down|cdr|sta.S14~regout\ & ((!\pwm_down|cdr|din_dly\(3))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|sta.S14~regout\,
	datad => \pwm_down|cdr|din_dly\(3),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S15~regout\);

-- Location: LC_X12_Y10_N4
\pwm_down|cdr|sta.S3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S3~regout\ = DFFEAS((!\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S2~regout\) # ((\pwm_down|cdr|sta.S12~regout\) # (\pwm_down|cdr|sta.S15~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta.S2~regout\,
	datab => \pwm_down|cdr|sta.S12~regout\,
	datac => \pwm_down|cdr|sta.S15~regout\,
	datad => \pwm_down|cdr|din_dly\(3),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S3~regout\);

-- Location: LC_X12_Y10_N3
\pwm_down|cdr|Selector15~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|Selector15~2_combout\ = (((!\pwm_down|cdr|sta.S7~regout\ & !\pwm_down|cdr|sta.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|cdr|sta.S7~regout\,
	datad => \pwm_down|cdr|sta.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|cdr|Selector15~2_combout\);

-- Location: LC_X11_Y10_N1
\pwm_down|cdr|sta.S0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S0~regout\ = DFFEAS((\pwm_down|cdr|din_dly\(3) & (((\pwm_down|cdr|sta.Sb~regout\)))) # (!\pwm_down|cdr|din_dly\(3) & (((!\pwm_down|cdr|Selector15~2_combout\)) # (!\pwm_down|cdr|Selector9~0_combout\))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|Selector9~0_combout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datac => \pwm_down|cdr|sta.Sb~regout\,
	datad => \pwm_down|cdr|Selector15~2_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S0~regout\);

-- Location: LC_X11_Y10_N9
\pwm_down|cdr|sta.S1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S1~regout\ = DFFEAS(((!\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S0~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datad => \pwm_down|cdr|sta.S0~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S1~regout\);

-- Location: LC_X11_Y10_N5
\pwm_down|cdr|sta.S8\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S8~regout\ = DFFEAS((\pwm_down|cdr|din_dly\(3) & (((\pwm_down|cdr|sta.S0~regout\)))) # (!\pwm_down|cdr|din_dly\(3) & (\pwm_down|cdr|sta.S4~regout\)), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta.S4~regout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datad => \pwm_down|cdr|sta.S0~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S8~regout\);

-- Location: LC_X12_Y10_N8
\pwm_down|cdr|sta.S2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S2~regout\ = DFFEAS((((\pwm_down|cdr|sta.S1~regout\) # (\pwm_down|cdr|sta.S8~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_down|cdr|din_dly\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta.S1~regout\,
	datad => \pwm_down|cdr|sta.S8~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|cdr|din_dly\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S2~regout\);

-- Location: LC_X12_Y10_N1
\pwm_down|cdr|sta.S4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S4~regout\ = DFFEAS((\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S2~regout\) # ((\pwm_down|cdr|sta.S15~regout\) # (!\pwm_down|cdr|Selector15~2_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta.S2~regout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datac => \pwm_down|cdr|sta.S15~regout\,
	datad => \pwm_down|cdr|Selector15~2_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S4~regout\);

-- Location: LC_X11_Y10_N6
\pwm_down|cdr|sta.S5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S5~regout\ = DFFEAS(((\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S4~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datad => \pwm_down|cdr|sta.S4~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S5~regout\);

-- Location: LC_X11_Y10_N4
\pwm_down|cdr|sta.S6\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S6~regout\ = DFFEAS((\pwm_down|cdr|sta.S5~regout\) # (((\pwm_down|cdr|sta.S8~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , !\pwm_down|cdr|din_dly\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta.S5~regout\,
	datac => \pwm_down|cdr|sta.S8~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|cdr|ALT_INV_din_dly\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S6~regout\);

-- Location: LC_X12_Y10_N5
\pwm_down|cdr|sta.S7\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta.S7~regout\ = DFFEAS((\pwm_down|cdr|din_dly\(3) & ((\pwm_down|cdr|sta.S6~regout\) # ((\pwm_down|cdr|sta.S13~regout\) # (\pwm_down|cdr|sta.S14~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta.S6~regout\,
	datab => \pwm_down|cdr|din_dly\(3),
	datac => \pwm_down|cdr|sta.S13~regout\,
	datad => \pwm_down|cdr|sta.S14~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta.S7~regout\);

-- Location: LC_X10_Y10_N8
\pwm_down|cdr|sta_last1.S6\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S6~regout\ = DFFEAS((((\pwm_down|cdr|sta.S6~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|cdr|sta.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S6~regout\);

-- Location: LC_X10_Y10_N4
\pwm_down|cdr|sta_last1.S5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S5~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_down|cdr|sta.S5~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta.S5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S5~regout\);

-- Location: LC_X10_Y10_N2
\pwm_down|cdr|sta_last2.S5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last2.S5~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_down|cdr|sta_last1.S5~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta_last1.S5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last2.S5~regout\);

-- Location: LC_X11_Y10_N3
\pwm_down|cdr|sta_last1.S4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S4~regout\ = DFFEAS((((\pwm_down|cdr|sta.S4~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|cdr|sta.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S4~regout\);

-- Location: LC_X10_Y10_N0
\pwm_down|cdr|sta_last2.S4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last2.S4~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_down|cdr|sta_last1.S4~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta_last1.S4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last2.S4~regout\);

-- Location: LC_X10_Y10_N5
\pwm_down|cdr|sta_last3.S4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|Selector15~0\ = (\pwm_down|cdr|sta_last1.S6~regout\ & (\pwm_down|cdr|sta_last2.S5~regout\ & (F1_sta_last3.S4 & \pwm_down|cdr|sta.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta_last1.S6~regout\,
	datab => \pwm_down|cdr|sta_last2.S5~regout\,
	datac => \pwm_down|cdr|sta_last2.S4~regout\,
	datad => \pwm_down|cdr|sta.S0~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|cdr|Selector15~0\,
	regout => \pwm_down|cdr|sta_last3.S4~regout\);

-- Location: LC_X10_Y10_N9
\pwm_down|cdr|sta_last1.S0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S0~regout\ = DFFEAS((((!\pwm_down|cdr|sta.S0~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|cdr|sta.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S0~regout\);

-- Location: LC_X10_Y10_N7
\pwm_down|cdr|sta_last2.S0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last2.S0~regout\ = DFFEAS((((\pwm_down|cdr|sta_last1.S0~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|cdr|sta_last1.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last2.S0~regout\);

-- Location: LC_X10_Y10_N3
\pwm_down|cdr|sta_last3.S0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last3.S0~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_down|cdr|sta_last2.S0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta_last2.S0~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last3.S0~regout\);

-- Location: LC_X14_Y10_N7
\pwm_down|cdr|sta_last1.S2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S2~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_down|cdr|sta.S2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta.S2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S2~regout\);

-- Location: LC_X12_Y10_N6
\pwm_down|cdr|sta_last1.S1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|sta_last1.S1~regout\ = DFFEAS((((\pwm_down|cdr|sta.S1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|cdr|sta.S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|cdr|sta_last1.S1~regout\);

-- Location: LC_X14_Y10_N2
\pwm_down|cdr|sta_last2.S1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|Selector15~1\ = (!\pwm_down|cdr|sta_last3.S0~regout\ & (\pwm_down|cdr|sta_last1.S2~regout\ & (F1_sta_last2.S1 & \pwm_down|cdr|sta.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|sta_last3.S0~regout\,
	datab => \pwm_down|cdr|sta_last1.S2~regout\,
	datac => \pwm_down|cdr|sta_last1.S1~regout\,
	datad => \pwm_down|cdr|sta.S4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|cdr|Selector15~1\,
	regout => \pwm_down|cdr|sta_last2.S1~regout\);

-- Location: LC_X14_Y10_N4
\pwm_down|cdr|Selector15~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|cdr|Selector15~3_combout\ = (\pwm_down|cdr|sta.S3~regout\) # ((\pwm_down|cdr|sta.S7~regout\) # ((\pwm_down|cdr|Selector15~0\) # (\pwm_down|cdr|Selector15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|cdr|sta.S3~regout\,
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|cdr|Selector15~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|cdr|Selector15~3_combout\);

-- Location: LC_X14_Y10_N8
\pwm_down|des|rx_data_dly\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rx_data_dly~regout\ = DFFEAS((\pwm_down|cdr|Selector15~3_combout\ & (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))) # (!\pwm_down|cdr|Selector15~3_combout\ & (\pwm_down|des|rx_data_dly~regout\)), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rx_data_dly~regout\,
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~3_combout\,
	datad => \pwm_down|cdr|Selector15~0\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rx_data_dly~regout\);

-- Location: LC_X14_Y10_N1
\pwm_down|des|Selector1~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|Selector1~0_combout\ = (\pwm_down|des|rx_data_dly~regout\ & (!\pwm_down|cdr|sta.S7~regout\ & (\pwm_down|cdr|Selector15~3_combout\ & !\pwm_down|cdr|Selector15~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|rx_data_dly~regout\,
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~3_combout\,
	datad => \pwm_down|cdr|Selector15~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|Selector1~0_combout\);

-- Location: LC_X14_Y10_N9
\pwm_down|des|Selector1~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|Selector1~1_combout\ = (\pwm_down|cdr|Selector15~3_combout\ & (\pwm_down|des|Selector1~0_combout\ & (!\pwm_down|des|cur_sta.S_IDLE~regout\))) # (!\pwm_down|cdr|Selector15~3_combout\ & ((\pwm_down|des|cur_sta.S_RECV~regout\) # 
-- ((\pwm_down|des|Selector1~0_combout\ & !\pwm_down|des|cur_sta.S_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|cdr|Selector15~3_combout\,
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datad => \pwm_down|des|cur_sta.S_RECV~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|Selector1~1_combout\);

-- Location: LC_X15_Y10_N1
\pwm_down|des|bits_cnt[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(0) = DFFEAS(((!\pwm_down|des|bits_cnt\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )
-- \pwm_down|des|bits_cnt[0]~1\ = CARRY(((\pwm_down|des|bits_cnt\(0))))
-- \pwm_down|des|bits_cnt[0]~1COUT1_14\ = CARRY(((\pwm_down|des|bits_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|des|bits_cnt\(0),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(0),
	cout0 => \pwm_down|des|bits_cnt[0]~1\,
	cout1 => \pwm_down|des|bits_cnt[0]~1COUT1_14\);

-- Location: LC_X15_Y10_N2
\pwm_down|des|bits_cnt[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(1) = DFFEAS((\pwm_down|des|bits_cnt\(1) $ ((\pwm_down|des|bits_cnt[0]~1\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )
-- \pwm_down|des|bits_cnt[1]~3\ = CARRY(((!\pwm_down|des|bits_cnt[0]~1\) # (!\pwm_down|des|bits_cnt\(1))))
-- \pwm_down|des|bits_cnt[1]~3COUT1_15\ = CARRY(((!\pwm_down|des|bits_cnt[0]~1COUT1_14\) # (!\pwm_down|des|bits_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|des|bits_cnt\(1),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	cin0 => \pwm_down|des|bits_cnt[0]~1\,
	cin1 => \pwm_down|des|bits_cnt[0]~1COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(1),
	cout0 => \pwm_down|des|bits_cnt[1]~3\,
	cout1 => \pwm_down|des|bits_cnt[1]~3COUT1_15\);

-- Location: LC_X15_Y10_N3
\pwm_down|des|bits_cnt[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(2) = DFFEAS(\pwm_down|des|bits_cnt\(2) $ ((((!\pwm_down|des|bits_cnt[1]~3\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )
-- \pwm_down|des|bits_cnt[2]~5\ = CARRY((\pwm_down|des|bits_cnt\(2) & ((!\pwm_down|des|bits_cnt[1]~3\))))
-- \pwm_down|des|bits_cnt[2]~5COUT1_16\ = CARRY((\pwm_down|des|bits_cnt\(2) & ((!\pwm_down|des|bits_cnt[1]~3COUT1_15\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|bits_cnt\(2),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	cin0 => \pwm_down|des|bits_cnt[1]~3\,
	cin1 => \pwm_down|des|bits_cnt[1]~3COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(2),
	cout0 => \pwm_down|des|bits_cnt[2]~5\,
	cout1 => \pwm_down|des|bits_cnt[2]~5COUT1_16\);

-- Location: LC_X15_Y10_N4
\pwm_down|des|bits_cnt[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(3) = DFFEAS(\pwm_down|des|bits_cnt\(3) $ ((((\pwm_down|des|bits_cnt[2]~5\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )
-- \pwm_down|des|bits_cnt[3]~7\ = CARRY(((!\pwm_down|des|bits_cnt[2]~5COUT1_16\)) # (!\pwm_down|des|bits_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|bits_cnt\(3),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	cin0 => \pwm_down|des|bits_cnt[2]~5\,
	cin1 => \pwm_down|des|bits_cnt[2]~5COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(3),
	cout => \pwm_down|des|bits_cnt[3]~7\);

-- Location: LC_X15_Y10_N5
\pwm_down|des|bits_cnt[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(4) = DFFEAS(\pwm_down|des|bits_cnt\(4) $ ((((!\pwm_down|des|bits_cnt[3]~7\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )
-- \pwm_down|des|bits_cnt[4]~11\ = CARRY((\pwm_down|des|bits_cnt\(4) & ((!\pwm_down|des|bits_cnt[3]~7\))))
-- \pwm_down|des|bits_cnt[4]~11COUT1_17\ = CARRY((\pwm_down|des|bits_cnt\(4) & ((!\pwm_down|des|bits_cnt[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|bits_cnt\(4),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	cin => \pwm_down|des|bits_cnt[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(4),
	cout0 => \pwm_down|des|bits_cnt[4]~11\,
	cout1 => \pwm_down|des|bits_cnt[4]~11COUT1_17\);

-- Location: LC_X15_Y10_N0
\pwm_down|des|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|Equal0~1_combout\ = (\pwm_down|des|bits_cnt\(5) & (((!\pwm_down|des|bits_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|bits_cnt\(5),
	datac => \pwm_down|des|bits_cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|Equal0~1_combout\);

-- Location: LC_X14_Y10_N3
\pwm_down|des|cur_sta.S_NOP0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|cur_sta.S_NOP0~regout\ = DFFEAS((\pwm_down|des|cur_sta.S_RECV~regout\ & ((\pwm_down|cdr|Selector15~0\) # ((\pwm_down|cdr|Selector15~1\) # (!\pwm_down|cdr|Selector15~2_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|Selector15~0\,
	datab => \pwm_down|cdr|Selector15~1\,
	datac => \pwm_down|cdr|Selector15~2_combout\,
	datad => \pwm_down|des|cur_sta.S_RECV~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|cur_sta.S_NOP0~regout\);

-- Location: LC_X15_Y10_N8
\pwm_down|des|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|Equal0~0_combout\ = (!\pwm_down|des|bits_cnt\(2) & (\pwm_down|des|bits_cnt\(1) & (!\pwm_down|des|bits_cnt\(3) & \pwm_down|des|bits_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|bits_cnt\(2),
	datab => \pwm_down|des|bits_cnt\(1),
	datac => \pwm_down|des|bits_cnt\(3),
	datad => \pwm_down|des|bits_cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|Equal0~0_combout\);

-- Location: LC_X15_Y10_N9
\pwm_down|des|cur_sta.S_RECV\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|cur_sta.S_RECV~regout\ = DFFEAS((\pwm_down|des|Selector1~1_combout\) # ((\pwm_down|des|cur_sta.S_NOP0~regout\ & ((!\pwm_down|des|Equal0~0_combout\) # (!\pwm_down|des|Equal0~1_combout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~1_combout\,
	datab => \pwm_down|des|Equal0~1_combout\,
	datac => \pwm_down|des|cur_sta.S_NOP0~regout\,
	datad => \pwm_down|des|Equal0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|cur_sta.S_RECV~regout\);

-- Location: LC_X14_Y10_N6
\pwm_down|des|bits_cnt[4]~12\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt[4]~12_combout\ = (((\pwm_down|cdr|Selector15~3_combout\ & \pwm_down|des|cur_sta.S_RECV~regout\))) # (!\pwm_down|des|cur_sta.S_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|cdr|Selector15~3_combout\,
	datad => \pwm_down|des|cur_sta.S_RECV~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|bits_cnt[4]~12_combout\);

-- Location: LC_X15_Y10_N6
\pwm_down|des|bits_cnt[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|bits_cnt\(5) = DFFEAS(\pwm_down|des|bits_cnt\(5) $ (((((!\pwm_down|des|bits_cnt[3]~7\ & \pwm_down|des|bits_cnt[4]~11\) # (\pwm_down|des|bits_cnt[3]~7\ & \pwm_down|des|bits_cnt[4]~11COUT1_17\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|bits_cnt[4]~12_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|bits_cnt\(5),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|bits_cnt[4]~12_combout\,
	cin => \pwm_down|des|bits_cnt[3]~7\,
	cin0 => \pwm_down|des|bits_cnt[4]~11\,
	cin1 => \pwm_down|des|bits_cnt[4]~11COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|bits_cnt\(5));

-- Location: LC_X15_Y10_N7
\pwm_down|des|cur_sta.S_CHCK\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|nxt_sta.S_CHCK~0\ = (\pwm_down|des|bits_cnt\(5) & (\pwm_down|des|cur_sta.S_NOP0~regout\ & (!\pwm_down|des|bits_cnt\(4) & \pwm_down|des|Equal0~0_combout\)))
-- \pwm_down|des|cur_sta.S_CHCK~regout\ = DFFEAS(\pwm_down|des|nxt_sta.S_CHCK~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|bits_cnt\(5),
	datab => \pwm_down|des|cur_sta.S_NOP0~regout\,
	datac => \pwm_down|des|bits_cnt\(4),
	datad => \pwm_down|des|Equal0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|nxt_sta.S_CHCK~0\,
	regout => \pwm_down|des|cur_sta.S_CHCK~regout\);

-- Location: LC_X15_Y9_N8
\pwm_down|des|Selector0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|Selector0~0_combout\ = ((\pwm_down|des|cur_sta.S_CHCK~regout\) # ((!\pwm_down|des|cur_sta.S_IDLE~regout\ & !\pwm_down|des|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|Selector0~0_combout\);

-- Location: LC_X15_Y9_N1
\pwm_down|des|cur_sta.S_IDLE\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|cur_sta.S_IDLE~regout\ = DFFEAS((((!\pwm_down|des|Selector0~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|cur_sta.S_IDLE~regout\);

-- Location: LC_X14_Y10_N5
\pwm_down|des|crc_gene|d_temp[1]~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\ = ((\pwm_down|cdr|Selector15~1\) # ((\pwm_down|cdr|Selector15~0\) # (!\pwm_down|cdr|Selector15~2_combout\))) # (!\pwm_down|des|cur_sta.S_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|cdr|Selector15~1\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|cdr|Selector15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|crc_gene|d_temp[1]~1_combout\);

-- Location: LC_X16_Y10_N3
\pwm_down|des|crc_gene|d_temp[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(6) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(5) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|crc_gene|d_temp\(5),
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(6));

-- Location: LC_X16_Y9_N3
\pwm_down|des|crc_gene|d_temp[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(7) = DFFEAS((((\pwm_down|des|cur_sta.S_IDLE~regout\ & \pwm_down|des|crc_gene|d_temp\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datad => \pwm_down|des|crc_gene|d_temp\(6),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(7));

-- Location: LC_X16_Y10_N4
\pwm_down|des|crc_gene|d_temp[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(8) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(7) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|crc_gene|d_temp\(7),
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(8));

-- Location: LC_X16_Y10_N9
\pwm_down|des|crc_gene|d_temp[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(9) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(8) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|crc_gene|d_temp\(8),
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(9));

-- Location: LC_X16_Y10_N7
\pwm_down|des|crc_gene|d_temp[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(0) = DFFEAS((\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|crc_gene|d_temp[1]~1_combout\, 
-- , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(0));

-- Location: LC_X16_Y10_N0
\pwm_down|des|crc_gene|d_temp[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(1) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(0) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|Selector15~0\) # (\pwm_down|cdr|sta.S7~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|cdr|Selector15~0\,
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|des|crc_gene|d_temp\(0),
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(1));

-- Location: LC_X16_Y10_N8
\pwm_down|des|crc_gene|d_temp[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(2) = DFFEAS(((\pwm_down|des|cur_sta.S_IDLE~regout\ & (\pwm_down|des|crc_gene|d_temp\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|crc_gene|d_temp\(1),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(2));

-- Location: LC_X16_Y10_N1
\pwm_down|des|crc_gene|d_temp[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(3) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(2) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|crc_gene|d_temp\(2),
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(3));

-- Location: LC_X16_Y9_N9
\pwm_down|des|crc_gene|d_temp[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(4) = DFFEAS((((\pwm_down|des|cur_sta.S_IDLE~regout\ & \pwm_down|des|crc_gene|d_temp\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datad => \pwm_down|des|crc_gene|d_temp\(3),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(4));

-- Location: LC_X16_Y10_N5
\pwm_down|des|crc_gene|d_temp[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|crc_gene|d_temp\(5) = DFFEAS(\pwm_down|des|crc_gene|d_temp\(4) $ (\pwm_down|des|crc_gene|d_temp\(9) $ (((\pwm_down|cdr|sta.S7~regout\) # (\pwm_down|cdr|Selector15~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|crc_gene|d_temp[1]~1_combout\, , , !\pwm_down|des|cur_sta.S_IDLE~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|crc_gene|d_temp\(4),
	datab => \pwm_down|cdr|sta.S7~regout\,
	datac => \pwm_down|cdr|Selector15~0\,
	datad => \pwm_down|des|crc_gene|d_temp\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_down|des|ALT_INV_cur_sta.S_IDLE~regout\,
	ena => \pwm_down|des|crc_gene|d_temp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|crc_gene|d_temp\(5));

-- Location: LC_X16_Y10_N6
\pwm_down|des|comb~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|comb~2_combout\ = (!\pwm_down|des|crc_gene|d_temp\(5) & (!\pwm_down|des|crc_gene|d_temp\(1) & (!\pwm_down|des|crc_gene|d_temp\(0) & !\pwm_down|des|crc_gene|d_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|crc_gene|d_temp\(5),
	datab => \pwm_down|des|crc_gene|d_temp\(1),
	datac => \pwm_down|des|crc_gene|d_temp\(0),
	datad => \pwm_down|des|crc_gene|d_temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|comb~2_combout\);

-- Location: LC_X16_Y10_N2
\pwm_down|des|comb~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|comb~1_combout\ = (!\pwm_down|des|crc_gene|d_temp\(2) & (!\pwm_down|des|crc_gene|d_temp\(9) & (!\pwm_down|des|crc_gene|d_temp\(8) & !\pwm_down|des|crc_gene|d_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|crc_gene|d_temp\(2),
	datab => \pwm_down|des|crc_gene|d_temp\(9),
	datac => \pwm_down|des|crc_gene|d_temp\(8),
	datad => \pwm_down|des|crc_gene|d_temp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|comb~1_combout\);

-- Location: LC_X14_Y10_N0
\pwm_down|des|rsr[19]~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr[19]~1_combout\ = (\pwm_down|des|cur_sta.S_CHCK~regout\) # ((\pwm_down|cdr|Selector15~3_combout\) # ((!\pwm_down|des|cur_sta.S_IDLE~regout\ & !\pwm_down|des|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|cdr|Selector15~3_combout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|rsr[19]~1_combout\);

-- Location: LC_X15_Y9_N9
\pwm_down|des|rsr[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(0) = DFFEAS(((!\pwm_down|des|Selector0~0_combout\ & ((\pwm_down|cdr|Selector15~0\) # (\pwm_down|cdr|sta.S7~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|cdr|Selector15~0\,
	datac => \pwm_down|cdr|sta.S7~regout\,
	datad => \pwm_down|des|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(0));

-- Location: LC_X15_Y9_N0
\pwm_down|des|rsr[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(1) = DFFEAS((\pwm_down|des|rsr\(0) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~0_combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(0),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(1));

-- Location: LC_X15_Y9_N5
\pwm_down|des|rsr[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(2) = DFFEAS((\pwm_down|des|rsr\(1) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~0_combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(1),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(2));

-- Location: LC_X15_Y9_N4
\pwm_down|des|rsr[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(3) = DFFEAS((\pwm_down|des|rsr\(2) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(2),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(3));

-- Location: LC_X15_Y9_N7
\pwm_down|des|rsr[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(4) = DFFEAS((\pwm_down|des|rsr\(3) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(3),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(4));

-- Location: LC_X15_Y9_N2
\pwm_down|des|rsr[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(5) = DFFEAS((\pwm_down|des|rsr\(4) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~0_combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(4),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(5));

-- Location: LC_X15_Y9_N3
\pwm_down|des|rsr[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(6) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(5) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|rsr\(5),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(6));

-- Location: LC_X15_Y9_N6
\pwm_down|des|rsr[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(7) = DFFEAS((\pwm_down|des|rsr\(6) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(6),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(7));

-- Location: LC_X14_Y9_N7
\pwm_down|des|rsr[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(8) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(7) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(7),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(8));

-- Location: LC_X14_Y9_N0
\pwm_down|des|rsr[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(9) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(8) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(8),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(9));

-- Location: LC_X14_Y9_N4
\pwm_down|des|rsr[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(10) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(9) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(9),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(10));

-- Location: LC_X14_Y9_N2
\pwm_down|des|rsr[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(11) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(10) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(10),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(11));

-- Location: LC_X14_Y9_N3
\pwm_down|des|rsr[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(12) = DFFEAS((\pwm_down|des|rsr\(11) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~0_combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(11),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(12));

-- Location: LC_X14_Y9_N8
\pwm_down|des|rsr[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(13) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(12) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(12),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(13));

-- Location: LC_X13_Y10_N1
\pwm_down|des|rsr[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(14) = DFFEAS((\pwm_down|des|rsr\(13) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(13),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(14));

-- Location: LC_X13_Y10_N0
\pwm_down|des|rsr[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(15) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(14) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(14),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(15));

-- Location: LC_X13_Y10_N7
\pwm_down|des|rsr[16]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(16) = DFFEAS((\pwm_down|des|rsr\(15) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(15),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(16));

-- Location: LC_X13_Y10_N4
\pwm_down|des|rsr[17]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(17) = DFFEAS((\pwm_down|des|rsr\(16) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(16),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(17));

-- Location: LC_X13_Y10_N8
\pwm_down|des|rsr[18]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(18) = DFFEAS((\pwm_down|des|rsr\(17) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(17),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(18));

-- Location: LC_X13_Y10_N3
\pwm_down|des|rsr[19]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(19) = DFFEAS((\pwm_down|des|rsr\(18) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(18),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(19));

-- Location: LC_X13_Y10_N5
\pwm_down|des|rsr[20]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(20) = DFFEAS((\pwm_down|des|rsr\(19) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(19),
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(20));

-- Location: LC_X14_Y9_N9
\pwm_down|des|rsr[21]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(21) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(20) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(20),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(21));

-- Location: LC_X14_Y9_N5
\pwm_down|des|rsr[22]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(22) = DFFEAS((\pwm_down|des|rsr\(21) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|Selector1~0_combout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(21),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(22));

-- Location: LC_X14_Y9_N6
\pwm_down|des|rsr[23]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(23) = DFFEAS((!\pwm_down|des|cur_sta.S_CHCK~regout\ & (\pwm_down|des|rsr\(22) & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datab => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datac => \pwm_down|des|rsr\(22),
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(23));

-- Location: LC_X14_Y8_N1
\pwm_down|des|rsr[24]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(24) = DFFEAS((\pwm_down|des|rsr\(23) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|rsr\(23),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(24));

-- Location: LC_X14_Y8_N4
\pwm_down|des|rsr[25]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(25) = DFFEAS((\pwm_down|des|rsr\(24) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|rsr\(24),
	datac => \pwm_down|des|Selector1~0_combout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(25));

-- Location: LC_X14_Y8_N6
\pwm_down|des|rsr[26]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(26) = DFFEAS((\pwm_down|des|rsr\(25) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|rsr\(25),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(26));

-- Location: LC_X14_Y8_N7
\pwm_down|des|rsr[27]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(27) = DFFEAS((\pwm_down|des|rsr\(26) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|rsr\(26),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(27));

-- Location: LC_X15_Y8_N4
\pwm_down|des|rsr[28]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(28) = DFFEAS((\pwm_down|des|rsr\(27) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|rsr\(27),
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(28));

-- Location: LC_X15_Y8_N9
\pwm_down|des|rsr[29]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(29) = DFFEAS((\pwm_down|des|rsr\(28) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(28),
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|cur_sta.S_IDLE~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(29));

-- Location: LC_X15_Y8_N7
\pwm_down|des|rsr[30]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(30) = DFFEAS((\pwm_down|des|rsr\(29) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|rsr\(29),
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(30));

-- Location: LC_X14_Y8_N0
\pwm_down|des|rsr[31]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(31) = DFFEAS((\pwm_down|des|rsr\(30) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(30),
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(31));

-- Location: LC_X14_Y8_N9
\pwm_down|des|rsr[32]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(32) = DFFEAS((\pwm_down|des|rsr\(31) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|rsr\(31),
	datad => \pwm_down|des|cur_sta.S_CHCK~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(32));

-- Location: LC_X15_Y8_N6
\pwm_down|des|rsr[33]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(33) = DFFEAS((\pwm_down|des|rsr\(32) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|rsr\(32),
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(33));

-- Location: LC_X15_Y8_N8
\pwm_down|des|rsr[34]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(34) = DFFEAS((\pwm_down|des|rsr\(33) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|cur_sta.S_IDLE~regout\) # (\pwm_down|des|Selector1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|cur_sta.S_IDLE~regout\,
	datab => \pwm_down|des|rsr\(33),
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|Selector1~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(34));

-- Location: LC_X15_Y8_N5
\pwm_down|des|rsr[35]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|rsr\(35) = DFFEAS((\pwm_down|des|rsr\(34) & (!\pwm_down|des|cur_sta.S_CHCK~regout\ & ((\pwm_down|des|Selector1~0_combout\) # (\pwm_down|des|cur_sta.S_IDLE~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_down|des|rsr[19]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|rsr\(34),
	datab => \pwm_down|des|Selector1~0_combout\,
	datac => \pwm_down|des|cur_sta.S_CHCK~regout\,
	datad => \pwm_down|des|cur_sta.S_IDLE~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|rsr[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|rsr\(35));

-- Location: LC_X16_Y9_N8
\pwm_down|des|comb~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|comb~0_combout\ = (!\pwm_down|des|rsr\(0) & (!\pwm_down|des|crc_gene|d_temp\(4) & (!\pwm_down|des|rsr\(35) & !\pwm_down|des|crc_gene|d_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|rsr\(0),
	datab => \pwm_down|des|crc_gene|d_temp\(4),
	datac => \pwm_down|des|rsr\(35),
	datad => \pwm_down|des|crc_gene|d_temp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|comb~0_combout\);

-- Location: LC_X16_Y9_N6
\pwm_down|des|recv_done\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|comb~3\ = (\pwm_down|des|comb~2_combout\ & (\pwm_down|des|nxt_sta.S_CHCK~0\ & (\pwm_down|des|comb~1_combout\ & \pwm_down|des|comb~0_combout\)))
-- \pwm_down|des|recv_done~regout\ = DFFEAS(\pwm_down|des|comb~3\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|comb~2_combout\,
	datab => \pwm_down|des|nxt_sta.S_CHCK~0\,
	datac => \pwm_down|des|comb~1_combout\,
	datad => \pwm_down|des|comb~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|des|comb~3\,
	regout => \pwm_down|des|recv_done~regout\);

-- Location: LC_X14_Y9_N1
\pwm_down|des|recv_data[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(22), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|rsr\(22),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(11));

-- Location: LC_X12_Y8_N7
\pwm_down|des|recv_data[17]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(28), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|rsr\(28),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(17));

-- Location: LC_X13_Y9_N3
\pwm_down|des|recv_data[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(2) = DFFEAS((((\pwm_down|des|rsr\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|rsr\(13),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(2));

-- Location: LC_X13_Y9_N1
\pwm_down|des|recv_data[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(5) = DFFEAS((((\pwm_down|des|rsr\(16)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|rsr\(16),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(5));

-- Location: LC_X13_Y9_N4
\pwm_down|des|recv_data[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|rsr\(15),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(4));

-- Location: LC_X13_Y9_N5
\pwm_down|des|recv_data[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~2\ = (\pwm_down|des|recv_data\(2) & (\pwm_down|des|recv_data\(5) & (H1_recv_data[7] & !\pwm_down|des|recv_data\(4))))
-- \pwm_down|des|recv_data\(7) = DFFEAS(\pwm_down|down_deal|Equal0~2\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(18), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(2),
	datab => \pwm_down|des|recv_data\(5),
	datac => \pwm_down|des|rsr\(18),
	datad => \pwm_down|des|recv_data\(4),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~2\,
	regout => \pwm_down|des|recv_data\(7));

-- Location: LC_X13_Y10_N6
\pwm_down|des|recv_data[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(3) = DFFEAS((((\pwm_down|des|rsr\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|rsr\(14),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(3));

-- Location: LC_X13_Y10_N2
\pwm_down|des|recv_data[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal9~2\ = (!\pwm_down|des|recv_data\(3) & (((H1_recv_data[8] & !\pwm_down|des|recv_data\(6)))))
-- \pwm_down|des|recv_data\(8) = DFFEAS(\pwm_down|down_deal|Equal9~2\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(19), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(3),
	datac => \pwm_down|des|rsr\(19),
	datad => \pwm_down|des|recv_data\(6),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal9~2\,
	regout => \pwm_down|des|recv_data\(8));

-- Location: LC_X13_Y10_N9
\pwm_down|des|recv_data[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~6\ = (\pwm_down|des|recv_data\(3) & (((H1_recv_data[6] & !\pwm_down|des|recv_data\(8)))))
-- \pwm_down|des|recv_data\(6) = DFFEAS(\pwm_down|down_deal|Equal0~6\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(17), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(3),
	datac => \pwm_down|des|rsr\(17),
	datad => \pwm_down|des|recv_data\(8),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~6\,
	regout => \pwm_down|des|recv_data\(6));

-- Location: LC_X13_Y8_N4
\pwm_down|des|recv_data[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always2~3\ = (\pwm_down|des|recv_data\(14) & ((\pwm_down|des|recv_data\(7) $ (H1_recv_data[15])) # (!\pwm_down|des|recv_data\(6)))) # (!\pwm_down|des|recv_data\(14) & ((\pwm_down|des|recv_data\(6)) # (\pwm_down|des|recv_data\(7) $ 
-- (H1_recv_data[15]))))
-- \pwm_down|des|recv_data\(15) = DFFEAS(\pwm_down|down_deal|always2~3\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(26), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(14),
	datab => \pwm_down|des|recv_data\(7),
	datac => \pwm_down|des|rsr\(26),
	datad => \pwm_down|des|recv_data\(6),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always2~3\,
	regout => \pwm_down|des|recv_data\(15));

-- Location: LC_X12_Y8_N3
\pwm_down|des|recv_data[18]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~4\ = (!\pwm_down|des|recv_data\(0) & (!\pwm_down|des|recv_data\(17) & (H1_recv_data[18] & \pwm_down|des|recv_data\(15))))
-- \pwm_down|des|recv_data\(18) = DFFEAS(\pwm_down|down_deal|Equal0~4\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(29), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(0),
	datab => \pwm_down|des|recv_data\(17),
	datac => \pwm_down|des|rsr\(29),
	datad => \pwm_down|des|recv_data\(15),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~4\,
	regout => \pwm_down|des|recv_data\(18));

-- Location: LC_X12_Y8_N2
\pwm_down|des|recv_data[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal9~0\ = (!\pwm_down|des|recv_data\(18) & (\pwm_down|des|recv_data\(17) & (H1_recv_data[0] & !\pwm_down|des|recv_data\(15))))
-- \pwm_down|des|recv_data\(0) = DFFEAS(\pwm_down|down_deal|Equal9~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(18),
	datab => \pwm_down|des|recv_data\(17),
	datac => \pwm_down|des|rsr\(11),
	datad => \pwm_down|des|recv_data\(15),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal9~0\,
	regout => \pwm_down|des|recv_data\(0));

-- Location: LC_X14_Y8_N8
\pwm_down|des|recv_data[21]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(21) = DFFEAS((((\pwm_down|des|rsr\(32)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|rsr\(32),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(21));

-- Location: LC_X14_Y8_N2
\pwm_down|des|recv_data[20]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(20) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(31), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|rsr\(31),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(20));

-- Location: LC_X14_Y8_N3
\pwm_down|des|recv_data[22]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|des|recv_data\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(33), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|rsr\(33),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|des|recv_data\(22));

-- Location: LC_X14_Y8_N5
\pwm_down|des|recv_data[23]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~0\ = (\pwm_down|des|recv_data\(21) & (!\pwm_down|des|recv_data\(20) & (H1_recv_data[23] & !\pwm_down|des|recv_data\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(21),
	datab => \pwm_down|des|recv_data\(20),
	datac => \pwm_down|des|rsr\(34),
	datad => \pwm_down|des|recv_data\(22),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~0\,
	regout => \pwm_down|des|recv_data\(23));

-- Location: LC_X12_Y8_N1
\pwm_down|des|recv_data[16]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal7~0\ = (!\pwm_down|des|recv_data\(18) & (!\pwm_down|des|recv_data\(17) & (H1_recv_data[16] & \pwm_down|down_deal|Equal0~0\)))
-- \pwm_down|des|recv_data\(16) = DFFEAS(\pwm_down|down_deal|Equal7~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(27), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(18),
	datab => \pwm_down|des|recv_data\(17),
	datac => \pwm_down|des|rsr\(27),
	datad => \pwm_down|down_deal|Equal0~0\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal7~0\,
	regout => \pwm_down|des|recv_data\(16));

-- Location: LC_X13_Y9_N6
\pwm_down|des|recv_data[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal9~1\ = (!\pwm_down|des|recv_data\(11) & (!\pwm_down|des|recv_data\(14) & (H1_recv_data[12] & \pwm_down|des|recv_data\(9))))
-- \pwm_down|des|recv_data\(12) = DFFEAS(\pwm_down|down_deal|Equal9~1\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(23), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(11),
	datab => \pwm_down|des|recv_data\(14),
	datac => \pwm_down|des|rsr\(23),
	datad => \pwm_down|des|recv_data\(9),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal9~1\,
	regout => \pwm_down|des|recv_data\(12));

-- Location: LC_X12_Y9_N6
\pwm_down|des|recv_data[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always2~2\ = (\pwm_down|des|recv_data\(12) & ((H1_recv_data[13] $ (\pwm_down|des|recv_data\(5))) # (!\pwm_down|des|recv_data\(4)))) # (!\pwm_down|des|recv_data\(12) & ((\pwm_down|des|recv_data\(4)) # (H1_recv_data[13] $ 
-- (\pwm_down|des|recv_data\(5)))))
-- \pwm_down|des|recv_data\(13) = DFFEAS(\pwm_down|down_deal|always2~2\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(24), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(12),
	datab => \pwm_down|des|recv_data\(4),
	datac => \pwm_down|des|rsr\(24),
	datad => \pwm_down|des|recv_data\(5),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always2~2\,
	regout => \pwm_down|des|recv_data\(13));

-- Location: LC_X13_Y9_N2
\pwm_down|des|recv_data[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always2~1\ = (\pwm_down|des|recv_data\(11) & ((H1_recv_data[10] $ (\pwm_down|des|recv_data\(2))) # (!\pwm_down|des|recv_data\(3)))) # (!\pwm_down|des|recv_data\(11) & ((\pwm_down|des|recv_data\(3)) # (H1_recv_data[10] $ 
-- (\pwm_down|des|recv_data\(2)))))
-- \pwm_down|des|recv_data\(10) = DFFEAS(\pwm_down|down_deal|always2~1\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(21), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(11),
	datab => \pwm_down|des|recv_data\(3),
	datac => \pwm_down|des|rsr\(21),
	datad => \pwm_down|des|recv_data\(2),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always2~1\,
	regout => \pwm_down|des|recv_data\(10));

-- Location: LC_X13_Y9_N8
\pwm_down|des|recv_data[19]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~1\ = (!\pwm_down|des|recv_data\(16) & (\pwm_down|des|recv_data\(13) & (H1_recv_data[19] & \pwm_down|des|recv_data\(10))))
-- \pwm_down|des|recv_data\(19) = DFFEAS(\pwm_down|down_deal|Equal0~1\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(30), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(16),
	datab => \pwm_down|des|recv_data\(13),
	datac => \pwm_down|des|rsr\(30),
	datad => \pwm_down|des|recv_data\(10),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~1\,
	regout => \pwm_down|des|recv_data\(19));

-- Location: LC_X13_Y9_N9
\pwm_down|des|recv_data[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~3\ = (\pwm_down|down_deal|Equal0~2\ & (\pwm_down|down_deal|Equal0~0\ & (!H1_recv_data[1] & \pwm_down|down_deal|Equal0~1\)))
-- \pwm_down|des|recv_data\(1) = DFFEAS(\pwm_down|down_deal|Equal0~3\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|Equal0~2\,
	datab => \pwm_down|down_deal|Equal0~0\,
	datac => \pwm_down|des|rsr\(12),
	datad => \pwm_down|down_deal|Equal0~1\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~3\,
	regout => \pwm_down|des|recv_data\(1));

-- Location: LC_X12_Y9_N5
\pwm_down|des|recv_data[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always2~0\ = (\pwm_down|des|recv_data\(0) & ((H1_recv_data[9] $ (\pwm_down|des|recv_data\(1))) # (!\pwm_down|des|recv_data\(8)))) # (!\pwm_down|des|recv_data\(0) & ((\pwm_down|des|recv_data\(8)) # (H1_recv_data[9] $ 
-- (\pwm_down|des|recv_data\(1)))))
-- \pwm_down|des|recv_data\(9) = DFFEAS(\pwm_down|down_deal|always2~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(20), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(0),
	datab => \pwm_down|des|recv_data\(8),
	datac => \pwm_down|des|rsr\(20),
	datad => \pwm_down|des|recv_data\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always2~0\,
	regout => \pwm_down|des|recv_data\(9));

-- Location: LC_X13_Y9_N0
\pwm_down|des|recv_data[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~5\ = (!\pwm_down|des|recv_data\(9) & (!\pwm_down|des|recv_data\(12) & (H1_recv_data[14] & \pwm_down|des|recv_data\(11))))
-- \pwm_down|des|recv_data\(14) = DFFEAS(\pwm_down|down_deal|Equal0~5\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|des|comb~3\, \pwm_down|des|rsr\(25), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|des|recv_data\(9),
	datab => \pwm_down|des|recv_data\(12),
	datac => \pwm_down|des|rsr\(25),
	datad => \pwm_down|des|recv_data\(11),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|des|comb~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~5\,
	regout => \pwm_down|des|recv_data\(14));

-- Location: LC_X13_Y9_N7
\pwm_down|down_deal|Equal9~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal9~3_combout\ = (\pwm_down|down_deal|Equal9~1\ & (\pwm_down|down_deal|Equal9~0\ & (\pwm_down|down_deal|Equal9~2\ & \pwm_down|down_deal|Equal0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|Equal9~1\,
	datab => \pwm_down|down_deal|Equal9~0\,
	datac => \pwm_down|down_deal|Equal9~2\,
	datad => \pwm_down|down_deal|Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal9~3_combout\);

-- Location: LC_X7_Y9_N2
\pwm_down|down_deal|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|LessThan0~0_combout\ = (((!\pwm_down|down_deal|tri_200us\(2)) # (!\pwm_down|down_deal|tri_200us\(0))) # (!\pwm_down|down_deal|tri_200us\(3))) # (!\pwm_down|down_deal|tri_200us\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(1),
	datab => \pwm_down|down_deal|tri_200us\(3),
	datac => \pwm_down|down_deal|tri_200us\(0),
	datad => \pwm_down|down_deal|tri_200us\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|LessThan0~0_combout\);

-- Location: LC_X7_Y9_N3
\pwm_down|down_deal|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|LessThan0~1_combout\ = (((\pwm_down|down_deal|LessThan0~0_combout\)) # (!\pwm_down|down_deal|tri_200us\(5))) # (!\pwm_down|down_deal|tri_200us\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff77",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(4),
	datab => \pwm_down|down_deal|tri_200us\(5),
	datad => \pwm_down|down_deal|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|LessThan0~1_combout\);

-- Location: LC_X8_Y9_N8
\pwm_down|down_deal|tri_200us[10]~26\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us[10]~26_combout\ = (((!\pwm_down|down_deal|tri_200us\(9)) # (!\pwm_down|down_deal|tri_200us\(10))) # (!\pwm_down|down_deal|tri_200us\(8))) # (!\pwm_down|down_deal|tri_200us\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(11),
	datab => \pwm_down|down_deal|tri_200us\(8),
	datac => \pwm_down|down_deal|tri_200us\(10),
	datad => \pwm_down|down_deal|tri_200us\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|tri_200us[10]~26_combout\);

-- Location: LC_X7_Y9_N0
\pwm_down|down_deal|tri_200us[10]~27\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us[10]~27_combout\ = (\pwm_down|down_deal|tri_200us[10]~26_combout\) # ((\pwm_down|down_deal|LessThan0~1_combout\ & (!\pwm_down|down_deal|tri_200us\(7) & !\pwm_down|down_deal|tri_200us\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|LessThan0~1_combout\,
	datab => \pwm_down|down_deal|tri_200us\(7),
	datac => \pwm_down|down_deal|tri_200us\(6),
	datad => \pwm_down|down_deal|tri_200us[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|tri_200us[10]~27_combout\);

-- Location: LC_X8_Y9_N9
\pwm_down|down_deal|tri_200us[10]~28\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|tri_200us[10]~28_combout\ = (\pwm_down|down_deal|tri_200us\(12) & (((\pwm_down|des|recv_done~regout\ & \pwm_down|down_deal|Equal9~3_combout\)) # (!\pwm_down|down_deal|tri_200us[10]~27_combout\))) # (!\pwm_down|down_deal|tri_200us\(12) 
-- & (\pwm_down|des|recv_done~regout\ & (\pwm_down|down_deal|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(12),
	datab => \pwm_down|des|recv_done~regout\,
	datac => \pwm_down|down_deal|Equal9~3_combout\,
	datad => \pwm_down|down_deal|tri_200us[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|tri_200us[10]~28_combout\);

-- Location: LC_X8_Y9_N7
\pwm_up|up_sign|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Equal0~2_combout\ = (!\pwm_down|down_deal|tri_200us\(11) & (!\pwm_down|down_deal|tri_200us\(8) & (!\pwm_down|down_deal|tri_200us\(10) & !\pwm_down|down_deal|tri_200us\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(11),
	datab => \pwm_down|down_deal|tri_200us\(8),
	datac => \pwm_down|down_deal|tri_200us\(10),
	datad => \pwm_down|down_deal|tri_200us\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Equal0~2_combout\);

-- Location: LC_X7_Y9_N1
\pwm_up|up_sign|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Equal0~1_combout\ = (!\pwm_down|down_deal|tri_200us\(2) & (!\pwm_down|down_deal|tri_200us\(5) & (!\pwm_down|down_deal|tri_200us\(3) & !\pwm_down|down_deal|tri_200us\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(2),
	datab => \pwm_down|down_deal|tri_200us\(5),
	datac => \pwm_down|down_deal|tri_200us\(3),
	datad => \pwm_down|down_deal|tri_200us\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Equal0~1_combout\);

-- Location: LC_X8_Y8_N8
\pwm_up|up_sign|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Equal0~0_combout\ = (!\pwm_down|down_deal|tri_200us\(1) & (!\pwm_down|down_deal|tri_200us\(7) & (\pwm_down|down_deal|tri_200us\(0) & !\pwm_down|down_deal|tri_200us\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|tri_200us\(1),
	datab => \pwm_down|down_deal|tri_200us\(7),
	datac => \pwm_down|down_deal|tri_200us\(0),
	datad => \pwm_down|down_deal|tri_200us\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Equal0~0_combout\);

-- Location: LC_X8_Y8_N9
\pwm_up|up_sign|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Equal0~3_combout\ = (\pwm_up|up_sign|Equal0~2_combout\ & (!\pwm_down|down_deal|tri_200us\(12) & (\pwm_up|up_sign|Equal0~1_combout\ & \pwm_up|up_sign|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|Equal0~2_combout\,
	datab => \pwm_down|down_deal|tri_200us\(12),
	datac => \pwm_up|up_sign|Equal0~1_combout\,
	datad => \pwm_up|up_sign|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Equal0~3_combout\);

-- Location: LC_X8_Y8_N1
\pwm_up|up_sign|reg_flt[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|comb~0\ = (((M1_reg_flt[2]))) # (!\pwm_up|up_sign|reg_flt\(1))
-- \pwm_up|up_sign|reg_flt\(2) = DFFEAS(\pwm_up|up_sign|comb~0\, GLOBAL(\clk~combout\), VCC, , , \pwm_up|up_sign|reg_flt\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f5",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|reg_flt\(1),
	datac => \pwm_up|up_sign|reg_flt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|comb~0\,
	regout => \pwm_up|up_sign|reg_flt\(2));

-- Location: LC_X12_Y8_N6
\pwm_down|down_deal|always5~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always5~0_combout\ = ((\pwm_down|down_deal|Equal7~0\ & (!\pwm_down|des|recv_data\(19) & \pwm_down|des|recv_done~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|Equal7~0\,
	datac => \pwm_down|des|recv_data\(19),
	datad => \pwm_down|des|recv_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always5~0_combout\);

-- Location: LC_X12_Y9_N4
\pwm_down|down_deal|cmd_data[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(1) = DFFEAS((((\pwm_down|des|recv_data\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(1),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(1));

-- Location: LC_X12_Y9_N9
\pwm_down|down_deal|cmd_data[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(5) = DFFEAS((((\pwm_down|des|recv_data\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(5),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(5));

-- Location: LC_X12_Y9_N3
\pwm_down|down_deal|cmd_data[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~6\ = (!\pwm_down|down_deal|cmd_data\(1) & (!\pwm_down|down_deal|cmd_data\(9) & (!J1_cmd_data[13] & !\pwm_down|down_deal|cmd_data\(5))))
-- \pwm_down|down_deal|cmd_data\(13) = DFFEAS(\pwm_down|down_deal|always6~6\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(1),
	datab => \pwm_down|down_deal|cmd_data\(9),
	datac => \pwm_down|des|recv_data\(13),
	datad => \pwm_down|down_deal|cmd_data\(5),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~6\,
	regout => \pwm_down|down_deal|cmd_data\(13));

-- Location: LC_X12_Y9_N0
\pwm_down|down_deal|cmd_data[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~3\ = (\pwm_down|down_deal|cmd_data\(1) & (\pwm_down|down_deal|cmd_data\(5) & (J1_cmd_data[9] & \pwm_down|down_deal|cmd_data\(13))))
-- \pwm_down|down_deal|cmd_data\(9) = DFFEAS(\pwm_down|down_deal|always6~3\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(1),
	datab => \pwm_down|down_deal|cmd_data\(5),
	datac => \pwm_down|des|recv_data\(9),
	datad => \pwm_down|down_deal|cmd_data\(13),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~3\,
	regout => \pwm_down|down_deal|cmd_data\(9));

-- Location: LC_X13_Y8_N1
\pwm_down|down_deal|cmd_data[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(2) = DFFEAS((((\pwm_down|des|recv_data\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(2),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(2));

-- Location: LC_X13_Y8_N8
\pwm_down|down_deal|cmd_data[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(6) = DFFEAS((((\pwm_down|des|recv_data\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(6),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(6));

-- Location: LC_X13_Y8_N3
\pwm_down|down_deal|cmd_data[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~2\ = (!\pwm_down|down_deal|cmd_data\(10) & (!\pwm_down|down_deal|cmd_data\(2) & (!J1_cmd_data[14] & !\pwm_down|down_deal|cmd_data\(6))))
-- \pwm_down|down_deal|cmd_data\(14) = DFFEAS(\pwm_down|down_deal|always6~2\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(10),
	datab => \pwm_down|down_deal|cmd_data\(2),
	datac => \pwm_down|des|recv_data\(14),
	datad => \pwm_down|down_deal|cmd_data\(6),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~2\,
	regout => \pwm_down|down_deal|cmd_data\(14));

-- Location: LC_X13_Y8_N6
\pwm_down|down_deal|cmd_data[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always9~0\ = (\pwm_down|down_deal|cmd_data\(14) & (\pwm_down|down_deal|cmd_data\(2) & (J1_cmd_data[10] & \pwm_down|down_deal|cmd_data\(6))))
-- \pwm_down|down_deal|cmd_data\(10) = DFFEAS(\pwm_down|down_deal|always9~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(14),
	datab => \pwm_down|down_deal|cmd_data\(2),
	datac => \pwm_down|des|recv_data\(10),
	datad => \pwm_down|down_deal|cmd_data\(6),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always9~0\,
	regout => \pwm_down|down_deal|cmd_data\(10));

-- Location: LC_X12_Y9_N8
\pwm_down|down_deal|cmd_data[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(4) = DFFEAS((((\pwm_down|des|recv_data\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(4),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(4));

-- Location: LC_X12_Y9_N1
\pwm_down|down_deal|cmd_data[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|recv_data\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(0));

-- Location: LC_X12_Y9_N7
\pwm_down|down_deal|cmd_data[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~7\ = (\pwm_down|down_deal|cmd_data\(4) & (\pwm_down|down_deal|cmd_data\(12) & (J1_cmd_data[8] & \pwm_down|down_deal|cmd_data\(0))))
-- \pwm_down|down_deal|cmd_data\(8) = DFFEAS(\pwm_down|down_deal|always6~7\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(4),
	datab => \pwm_down|down_deal|cmd_data\(12),
	datac => \pwm_down|des|recv_data\(8),
	datad => \pwm_down|down_deal|cmd_data\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~7\,
	regout => \pwm_down|down_deal|cmd_data\(8));

-- Location: LC_X12_Y9_N2
\pwm_down|down_deal|cmd_data[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~4\ = (!\pwm_down|down_deal|cmd_data\(4) & (!\pwm_down|down_deal|cmd_data\(8) & (!J1_cmd_data[12] & !\pwm_down|down_deal|cmd_data\(0))))
-- \pwm_down|down_deal|cmd_data\(12) = DFFEAS(\pwm_down|down_deal|always6~4\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|cmd_data\(4),
	datab => \pwm_down|down_deal|cmd_data\(8),
	datac => \pwm_down|des|recv_data\(12),
	datad => \pwm_down|down_deal|cmd_data\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~4\,
	regout => \pwm_down|down_deal|cmd_data\(12));

-- Location: LC_X13_Y8_N5
\pwm_down|down_deal|cmd_data[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, \pwm_down|des|recv_data\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|des|recv_data\(15),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(15));

-- Location: LC_X12_Y8_N9
\pwm_down|down_deal|cmd_over\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~0\ = (((J1_cmd_over & !\pwm_down|down_deal|cmd_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_down|down_deal|always5~0_combout\,
	datad => \pwm_down|down_deal|cmd_data\(15),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~0\,
	regout => \pwm_down|down_deal|cmd_over~regout\);

-- Location: LC_X13_Y8_N7
\pwm_down|down_deal|cmd_data[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(7) = DFFEAS((((\pwm_down|des|recv_data\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(7),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(7));

-- Location: LC_X13_Y8_N2
\pwm_down|down_deal|cmd_data[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|cmd_data\(11) = DFFEAS((((\pwm_down|des|recv_data\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|always5~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_down|des|recv_data\(11),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|cmd_data\(11));

-- Location: LC_X13_Y8_N9
\pwm_down|down_deal|cmd_data[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~1\ = (\pwm_down|down_deal|always6~0\ & (!\pwm_down|down_deal|cmd_data\(7) & (!J1_cmd_data[3] & !\pwm_down|down_deal|cmd_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|always6~0\,
	datab => \pwm_down|down_deal|cmd_data\(7),
	datac => \pwm_down|des|recv_data\(3),
	datad => \pwm_down|down_deal|cmd_data\(11),
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_down|down_deal|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~1\,
	regout => \pwm_down|down_deal|cmd_data\(3));

-- Location: LC_X12_Y6_N0
\pwm_down|down_deal|always6~8\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~8_combout\ = (\pwm_down|down_deal|always6~6\ & (\pwm_down|down_deal|always6~2\ & (\pwm_down|down_deal|always6~7\ & \pwm_down|down_deal|always6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|always6~6\,
	datab => \pwm_down|down_deal|always6~2\,
	datac => \pwm_down|down_deal|always6~7\,
	datad => \pwm_down|down_deal|always6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~8_combout\);

-- Location: LC_X12_Y7_N3
\pwm_down|down_deal|Equal0~7\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal0~7_combout\ = (\pwm_down|down_deal|Equal0~4\ & (\pwm_down|down_deal|Equal0~5\ & (\pwm_down|down_deal|Equal0~6\ & \pwm_down|down_deal|Equal0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|Equal0~4\,
	datab => \pwm_down|down_deal|Equal0~5\,
	datac => \pwm_down|down_deal|Equal0~6\,
	datad => \pwm_down|down_deal|Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal0~7_combout\);

-- Location: LC_X12_Y7_N2
\pwm_down|down_deal|Lockn\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Lockn~regout\ = DFFEAS((!\pwm_down|down_deal|rst~regout\ & ((\pwm_down|down_deal|Lockn~regout\) # ((\pwm_down|des|recv_done~regout\ & \pwm_down|down_deal|Equal0~7_combout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|Lockn~regout\,
	datab => \pwm_down|down_deal|rst~regout\,
	datac => \pwm_down|des|recv_done~regout\,
	datad => \pwm_down|down_deal|Equal0~7_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|Lockn~regout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ov~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ov,
	combout => \ov~combout\);

-- Location: LC_X11_Y6_N7
\pwm_up|sign_deal|ov_f|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|in1_dly\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \ov~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ov~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|in1_dly\(0));

-- Location: LC_X11_Y6_N5
\pwm_up|sign_deal|ov_f|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|ov_f|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|ov_f|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|in1_dly\(1));

-- Location: LC_X11_Y6_N9
\pwm_up|sign_deal|ov_f|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|in1_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|ov_f|in1_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|ov_f|in1_dly\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|in1_dly\(2));

-- Location: LC_X12_Y3_N4
\pwm_up|sign_deal|comb~4\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|comb~4_combout\ = ((\pwm_down|down_deal|rst~regout\) # ((\init|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|rst~regout\,
	datac => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|comb~4_combout\);

-- Location: LC_X11_Y6_N4
\pwm_up|sign_deal|ov_f|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|count\(0) = DFFEAS(((\pwm_up|sign_deal|ov_f|in1_dly\(2) & (!\pwm_up|sign_deal|ov_f|count\(0) & !\pwm_up|sign_deal|ov_f|count\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|ov_f|in1_dly\(2),
	datac => \pwm_up|sign_deal|ov_f|count\(0),
	datad => \pwm_up|sign_deal|ov_f|count\(2),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|count\(0));

-- Location: LC_X11_Y6_N3
\pwm_up|sign_deal|ov_f|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|count\(1) = DFFEAS((!\pwm_up|sign_deal|ov_f|count\(2) & (\pwm_up|sign_deal|ov_f|in1_dly\(2) & (\pwm_up|sign_deal|ov_f|count\(0) $ (\pwm_up|sign_deal|ov_f|count\(1))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|ov_f|count\(2),
	datab => \pwm_up|sign_deal|ov_f|in1_dly\(2),
	datac => \pwm_up|sign_deal|ov_f|count\(0),
	datad => \pwm_up|sign_deal|ov_f|count\(1),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|count\(1));

-- Location: LC_X11_Y6_N8
\pwm_up|sign_deal|ov_f|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|count\(2) = DFFEAS((\pwm_up|sign_deal|ov_f|count\(2) & ((\pwm_up|sign_deal|ov_f|in1_dly\(2)) # ((!\pwm_up|sign_deal|ov_f|count\(0) & !\pwm_up|sign_deal|ov_f|count\(1))))) # (!\pwm_up|sign_deal|ov_f|count\(2) & 
-- (\pwm_up|sign_deal|ov_f|in1_dly\(2) & (\pwm_up|sign_deal|ov_f|count\(0) & \pwm_up|sign_deal|ov_f|count\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c88a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|ov_f|count\(2),
	datab => \pwm_up|sign_deal|ov_f|in1_dly\(2),
	datac => \pwm_up|sign_deal|ov_f|count\(0),
	datad => \pwm_up|sign_deal|ov_f|count\(1),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ov_f|count\(2));

-- Location: LC_X11_Y6_N6
\pwm_up|sign_deal|ov_f|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ov_f|Equal0~0_combout\ = (((\pwm_up|sign_deal|ov_f|count\(0)) # (\pwm_up|sign_deal|ov_f|count\(1)))) # (!\pwm_up|sign_deal|ov_f|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|ov_f|count\(2),
	datac => \pwm_up|sign_deal|ov_f|count\(0),
	datad => \pwm_up|sign_deal|ov_f|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|ov_f|Equal0~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEM~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TEM,
	combout => \TEM~combout\);

-- Location: LC_X9_Y4_N7
\pwm_up|sign_deal|TEM_f|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|in1_dly\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \TEM~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \TEM~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|in1_dly\(0));

-- Location: LC_X9_Y4_N9
\pwm_up|sign_deal|TEM_f|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|TEM_f|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|TEM_f|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|in1_dly\(1));

-- Location: LC_X9_Y4_N6
\pwm_up|sign_deal|TEM_f|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|in1_dly\(2) = DFFEAS((((\pwm_up|sign_deal|TEM_f|in1_dly\(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|sign_deal|TEM_f|in1_dly\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|in1_dly\(2));

-- Location: LC_X9_Y4_N3
\pwm_up|sign_deal|TEM_f|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|count\(0) = DFFEAS((!\pwm_up|sign_deal|TEM_f|count\(2) & (((\pwm_up|sign_deal|TEM_f|in1_dly\(2) & !\pwm_up|sign_deal|TEM_f|count\(0))))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|TEM_f|count\(2),
	datac => \pwm_up|sign_deal|TEM_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|TEM_f|count\(0),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|count\(0));

-- Location: LC_X9_Y4_N0
\pwm_up|sign_deal|TEM_f|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|count\(1) = DFFEAS((!\pwm_up|sign_deal|TEM_f|count\(2) & (\pwm_up|sign_deal|TEM_f|in1_dly\(2) & (\pwm_up|sign_deal|TEM_f|count\(1) $ (\pwm_up|sign_deal|TEM_f|count\(0))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|TEM_f|count\(2),
	datab => \pwm_up|sign_deal|TEM_f|count\(1),
	datac => \pwm_up|sign_deal|TEM_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|TEM_f|count\(0),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|count\(1));

-- Location: LC_X9_Y4_N8
\pwm_up|sign_deal|TEM_f|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|count\(2) = DFFEAS((\pwm_up|sign_deal|TEM_f|count\(2) & ((\pwm_up|sign_deal|TEM_f|in1_dly\(2)) # ((!\pwm_up|sign_deal|TEM_f|count\(1) & !\pwm_up|sign_deal|TEM_f|count\(0))))) # (!\pwm_up|sign_deal|TEM_f|count\(2) & 
-- (\pwm_up|sign_deal|TEM_f|count\(1) & (\pwm_up|sign_deal|TEM_f|in1_dly\(2) & \pwm_up|sign_deal|TEM_f|count\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|TEM_f|count\(2),
	datab => \pwm_up|sign_deal|TEM_f|count\(1),
	datac => \pwm_up|sign_deal|TEM_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|TEM_f|count\(0),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|TEM_f|count\(2));

-- Location: LC_X9_Y4_N4
\pwm_up|sign_deal|TEM_f|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|TEM_f|Equal0~0_combout\ = (((\pwm_up|sign_deal|TEM_f|count\(1)) # (\pwm_up|sign_deal|TEM_f|count\(0)))) # (!\pwm_up|sign_deal|TEM_f|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|TEM_f|count\(2),
	datac => \pwm_up|sign_deal|TEM_f|count\(1),
	datad => \pwm_up|sign_deal|TEM_f|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|TEM_f|Equal0~0_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr4,
	combout => \tr4~combout\);

-- Location: LC_X5_Y10_N4
\pwm_up|sign_deal|t4|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|in1_dly\(0) = DFFEAS((((!\tr4~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \tr4~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|in1_dly\(0));

-- Location: LC_X5_Y10_N5
\pwm_up|sign_deal|t4|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t4|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t4|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|in1_dly\(1));

-- Location: LC_X12_Y5_N2
\pwm_up|sign_deal|t4|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|in1_dly\(2) = DFFEAS((((\pwm_up|sign_deal|t4|in1_dly\(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|sign_deal|t4|in1_dly\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|in1_dly\(2));

-- Location: LC_X8_Y10_N2
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X13_Y4_N2
\pwm_down|dead|chkflt_data[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(0) = DFFEAS(((!\pwm_down|dead|chkflt_data\(0))), GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[0]~11\ = CARRY(((\pwm_down|dead|chkflt_data\(0))))
-- \pwm_down|dead|chkflt_data[0]~11COUT1_35\ = CARRY(((\pwm_down|dead|chkflt_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(0),
	cout0 => \pwm_down|dead|chkflt_data[0]~11\,
	cout1 => \pwm_down|dead|chkflt_data[0]~11COUT1_35\);

-- Location: LC_X13_Y4_N3
\pwm_down|dead|chkflt_data[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(1) = DFFEAS(\pwm_down|dead|chkflt_data\(1) $ ((((\pwm_down|dead|chkflt_data[0]~11\)))), GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[1]~13\ = CARRY(((!\pwm_down|dead|chkflt_data[0]~11\)) # (!\pwm_down|dead|chkflt_data\(1)))
-- \pwm_down|dead|chkflt_data[1]~13COUT1_36\ = CARRY(((!\pwm_down|dead|chkflt_data[0]~11COUT1_35\)) # (!\pwm_down|dead|chkflt_data\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin0 => \pwm_down|dead|chkflt_data[0]~11\,
	cin1 => \pwm_down|dead|chkflt_data[0]~11COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(1),
	cout0 => \pwm_down|dead|chkflt_data[1]~13\,
	cout1 => \pwm_down|dead|chkflt_data[1]~13COUT1_36\);

-- Location: LC_X13_Y4_N4
\pwm_down|dead|chkflt_data[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(2) = DFFEAS(\pwm_down|dead|chkflt_data\(2) $ ((((!\pwm_down|dead|chkflt_data[1]~13\)))), GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[2]~15\ = CARRY((\pwm_down|dead|chkflt_data\(2) & ((!\pwm_down|dead|chkflt_data[1]~13COUT1_36\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin0 => \pwm_down|dead|chkflt_data[1]~13\,
	cin1 => \pwm_down|dead|chkflt_data[1]~13COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(2),
	cout => \pwm_down|dead|chkflt_data[2]~15\);

-- Location: LC_X13_Y4_N5
\pwm_down|dead|chkflt_data[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(3) = DFFEAS(\pwm_down|dead|chkflt_data\(3) $ ((((\pwm_down|dead|chkflt_data[2]~15\)))), GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[3]~9\ = CARRY(((!\pwm_down|dead|chkflt_data[2]~15\)) # (!\pwm_down|dead|chkflt_data\(3)))
-- \pwm_down|dead|chkflt_data[3]~9COUT1_37\ = CARRY(((!\pwm_down|dead|chkflt_data[2]~15\)) # (!\pwm_down|dead|chkflt_data\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[2]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(3),
	cout0 => \pwm_down|dead|chkflt_data[3]~9\,
	cout1 => \pwm_down|dead|chkflt_data[3]~9COUT1_37\);

-- Location: LC_X13_Y4_N6
\pwm_down|dead|chkflt_data[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(4) = DFFEAS(\pwm_down|dead|chkflt_data\(4) $ ((((!(!\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[3]~9\) # (\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[3]~9COUT1_37\))))), 
-- GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[4]~17\ = CARRY((\pwm_down|dead|chkflt_data\(4) & ((!\pwm_down|dead|chkflt_data[3]~9\))))
-- \pwm_down|dead|chkflt_data[4]~17COUT1_38\ = CARRY((\pwm_down|dead|chkflt_data\(4) & ((!\pwm_down|dead|chkflt_data[3]~9COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[2]~15\,
	cin0 => \pwm_down|dead|chkflt_data[3]~9\,
	cin1 => \pwm_down|dead|chkflt_data[3]~9COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(4),
	cout0 => \pwm_down|dead|chkflt_data[4]~17\,
	cout1 => \pwm_down|dead|chkflt_data[4]~17COUT1_38\);

-- Location: LC_X13_Y4_N7
\pwm_down|dead|chkflt_data[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(5) = DFFEAS((\pwm_down|dead|chkflt_data\(5) $ (((!\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[4]~17\) # (\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[4]~17COUT1_38\)))), 
-- GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[5]~7\ = CARRY(((!\pwm_down|dead|chkflt_data[4]~17\) # (!\pwm_down|dead|chkflt_data\(5))))
-- \pwm_down|dead|chkflt_data[5]~7COUT1_39\ = CARRY(((!\pwm_down|dead|chkflt_data[4]~17COUT1_38\) # (!\pwm_down|dead|chkflt_data\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[2]~15\,
	cin0 => \pwm_down|dead|chkflt_data[4]~17\,
	cin1 => \pwm_down|dead|chkflt_data[4]~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(5),
	cout0 => \pwm_down|dead|chkflt_data[5]~7\,
	cout1 => \pwm_down|dead|chkflt_data[5]~7COUT1_39\);

-- Location: LC_X13_Y4_N8
\pwm_down|dead|chkflt_data[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(6) = DFFEAS(\pwm_down|dead|chkflt_data\(6) $ ((((!(!\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[5]~7\) # (\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[5]~7COUT1_39\))))), 
-- GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[6]~5\ = CARRY((\pwm_down|dead|chkflt_data\(6) & ((!\pwm_down|dead|chkflt_data[5]~7\))))
-- \pwm_down|dead|chkflt_data[6]~5COUT1_40\ = CARRY((\pwm_down|dead|chkflt_data\(6) & ((!\pwm_down|dead|chkflt_data[5]~7COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(6),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[2]~15\,
	cin0 => \pwm_down|dead|chkflt_data[5]~7\,
	cin1 => \pwm_down|dead|chkflt_data[5]~7COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(6),
	cout0 => \pwm_down|dead|chkflt_data[6]~5\,
	cout1 => \pwm_down|dead|chkflt_data[6]~5COUT1_40\);

-- Location: LC_X13_Y4_N9
\pwm_down|dead|chkflt_data[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(7) = DFFEAS((\pwm_down|dead|chkflt_data\(7) $ (((!\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[6]~5\) # (\pwm_down|dead|chkflt_data[2]~15\ & \pwm_down|dead|chkflt_data[6]~5COUT1_40\)))), GLOBAL(\clk~combout\), 
-- VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[7]~19\ = CARRY(((!\pwm_down|dead|chkflt_data[6]~5COUT1_40\) # (!\pwm_down|dead|chkflt_data\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(7),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[2]~15\,
	cin0 => \pwm_down|dead|chkflt_data[6]~5\,
	cin1 => \pwm_down|dead|chkflt_data[6]~5COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(7),
	cout => \pwm_down|dead|chkflt_data[7]~19\);

-- Location: LC_X14_Y4_N0
\pwm_down|dead|chkflt_data[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(8) = DFFEAS((\pwm_down|dead|chkflt_data\(8) $ ((!\pwm_down|dead|chkflt_data[7]~19\))), GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[8]~21\ = CARRY(((\pwm_down|dead|chkflt_data\(8) & !\pwm_down|dead|chkflt_data[7]~19\)))
-- \pwm_down|dead|chkflt_data[8]~21COUT1_41\ = CARRY(((\pwm_down|dead|chkflt_data\(8) & !\pwm_down|dead|chkflt_data[7]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(8),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[7]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(8),
	cout0 => \pwm_down|dead|chkflt_data[8]~21\,
	cout1 => \pwm_down|dead|chkflt_data[8]~21COUT1_41\);

-- Location: LC_X14_Y4_N1
\pwm_down|dead|chkflt_data[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(9) = DFFEAS((\pwm_down|dead|chkflt_data\(9) $ (((!\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[8]~21\) # (\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[8]~21COUT1_41\)))), 
-- GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[9]~23\ = CARRY(((!\pwm_down|dead|chkflt_data[8]~21\) # (!\pwm_down|dead|chkflt_data\(9))))
-- \pwm_down|dead|chkflt_data[9]~23COUT1_42\ = CARRY(((!\pwm_down|dead|chkflt_data[8]~21COUT1_41\) # (!\pwm_down|dead|chkflt_data\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[7]~19\,
	cin0 => \pwm_down|dead|chkflt_data[8]~21\,
	cin1 => \pwm_down|dead|chkflt_data[8]~21COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(9),
	cout0 => \pwm_down|dead|chkflt_data[9]~23\,
	cout1 => \pwm_down|dead|chkflt_data[9]~23COUT1_42\);

-- Location: LC_X14_Y4_N2
\pwm_down|dead|chkflt_data[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(10) = DFFEAS((\pwm_down|dead|chkflt_data\(10) $ ((!(!\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[9]~23\) # (\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[9]~23COUT1_42\)))), 
-- GLOBAL(\clk~combout\), VCC, , , \~GND~combout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[10]~1\ = CARRY(((\pwm_down|dead|chkflt_data\(10) & !\pwm_down|dead|chkflt_data[9]~23\)))
-- \pwm_down|dead|chkflt_data[10]~1COUT1_43\ = CARRY(((\pwm_down|dead|chkflt_data\(10) & !\pwm_down|dead|chkflt_data[9]~23COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[7]~19\,
	cin0 => \pwm_down|dead|chkflt_data[9]~23\,
	cin1 => \pwm_down|dead|chkflt_data[9]~23COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(10),
	cout0 => \pwm_down|dead|chkflt_data[10]~1\,
	cout1 => \pwm_down|dead|chkflt_data[10]~1COUT1_43\);

-- Location: LC_X14_Y4_N3
\pwm_down|dead|chkflt_data[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(11) = DFFEAS(\pwm_down|dead|chkflt_data\(11) $ (((((!\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[10]~1\) # (\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[10]~1COUT1_43\))))), 
-- GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[11]~3\ = CARRY(((!\pwm_down|dead|chkflt_data[10]~1\)) # (!\pwm_down|dead|chkflt_data\(11)))
-- \pwm_down|dead|chkflt_data[11]~3COUT1_44\ = CARRY(((!\pwm_down|dead|chkflt_data[10]~1COUT1_43\)) # (!\pwm_down|dead|chkflt_data\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[7]~19\,
	cin0 => \pwm_down|dead|chkflt_data[10]~1\,
	cin1 => \pwm_down|dead|chkflt_data[10]~1COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(11),
	cout0 => \pwm_down|dead|chkflt_data[11]~3\,
	cout1 => \pwm_down|dead|chkflt_data[11]~3COUT1_44\);

-- Location: LC_X13_Y5_N5
\pwm_down|dead|always5~27\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~27_combout\ = ((!\pwm_down|dead|chkflt_data\(10) & ((!\pwm_down|dead|chkflt_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(10),
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~27_combout\);

-- Location: LC_X14_Y4_N4
\pwm_down|dead|chkflt_data[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(12) = DFFEAS(\pwm_down|dead|chkflt_data\(12) $ ((((!(!\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[11]~3\) # (\pwm_down|dead|chkflt_data[7]~19\ & \pwm_down|dead|chkflt_data[11]~3COUT1_44\))))), 
-- GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[12]~27\ = CARRY((\pwm_down|dead|chkflt_data\(12) & ((!\pwm_down|dead|chkflt_data[11]~3COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(12),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[7]~19\,
	cin0 => \pwm_down|dead|chkflt_data[11]~3\,
	cin1 => \pwm_down|dead|chkflt_data[11]~3COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(12),
	cout => \pwm_down|dead|chkflt_data[12]~27\);

-- Location: LC_X14_Y4_N5
\pwm_down|dead|chkflt_data[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(13) = DFFEAS(\pwm_down|dead|chkflt_data\(13) $ ((((\pwm_down|dead|chkflt_data[12]~27\)))), GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[13]~25\ = CARRY(((!\pwm_down|dead|chkflt_data[12]~27\)) # (!\pwm_down|dead|chkflt_data\(13)))
-- \pwm_down|dead|chkflt_data[13]~25COUT1_45\ = CARRY(((!\pwm_down|dead|chkflt_data[12]~27\)) # (!\pwm_down|dead|chkflt_data\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(13),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[12]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(13),
	cout0 => \pwm_down|dead|chkflt_data[13]~25\,
	cout1 => \pwm_down|dead|chkflt_data[13]~25COUT1_45\);

-- Location: LC_X14_Y4_N6
\pwm_down|dead|chkflt_data[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(14) = DFFEAS(\pwm_down|dead|chkflt_data\(14) $ ((((!(!\pwm_down|dead|chkflt_data[12]~27\ & \pwm_down|dead|chkflt_data[13]~25\) # (\pwm_down|dead|chkflt_data[12]~27\ & \pwm_down|dead|chkflt_data[13]~25COUT1_45\))))), 
-- GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)
-- \pwm_down|dead|chkflt_data[14]~29\ = CARRY((\pwm_down|dead|chkflt_data\(14) & ((!\pwm_down|dead|chkflt_data[13]~25\))))
-- \pwm_down|dead|chkflt_data[14]~29COUT1_46\ = CARRY((\pwm_down|dead|chkflt_data\(14) & ((!\pwm_down|dead|chkflt_data[13]~25COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(14),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[12]~27\,
	cin0 => \pwm_down|dead|chkflt_data[13]~25\,
	cin1 => \pwm_down|dead|chkflt_data[13]~25COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(14),
	cout0 => \pwm_down|dead|chkflt_data[14]~29\,
	cout1 => \pwm_down|dead|chkflt_data[14]~29COUT1_46\);

-- Location: LC_X14_Y4_N7
\pwm_down|dead|chkflt_data[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data\(15) = DFFEAS((\pwm_down|dead|chkflt_data\(15) $ (((!\pwm_down|dead|chkflt_data[12]~27\ & \pwm_down|dead|chkflt_data[14]~29\) # (\pwm_down|dead|chkflt_data[12]~27\ & \pwm_down|dead|chkflt_data[14]~29COUT1_46\)))), 
-- GLOBAL(\clk~combout\), VCC, , , \pwm_down|down_deal|chkflt~regout\, , , \pwm_down|dead|chkflt_data[7]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|chkflt_data\(15),
	datac => \pwm_down|down_deal|chkflt~regout\,
	aclr => GND,
	sload => \pwm_down|dead|chkflt_data[7]~33_combout\,
	cin => \pwm_down|dead|chkflt_data[12]~27\,
	cin0 => \pwm_down|dead|chkflt_data[14]~29\,
	cin1 => \pwm_down|dead|chkflt_data[14]~29COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|chkflt_data\(15));

-- Location: LC_X14_Y4_N8
\pwm_down|dead|chkflt_data[7]~32\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data[7]~32_combout\ = (\pwm_down|dead|chkflt_data\(13) & (\pwm_down|dead|chkflt_data\(15) & (\pwm_down|dead|chkflt_data\(12) & \pwm_down|dead|chkflt_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(13),
	datab => \pwm_down|dead|chkflt_data\(15),
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|chkflt_data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|chkflt_data[7]~32_combout\);

-- Location: LC_X14_Y4_N9
\pwm_down|dead|chkflt_data[7]~33\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|chkflt_data[7]~33_combout\ = ((\pwm_down|dead|chkflt_data\(11) & (!\pwm_down|dead|always5~27_combout\ & \pwm_down|dead|chkflt_data[7]~32_combout\))) # (!\pwm_down|down_deal|chkflt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(11),
	datab => \pwm_down|dead|always5~27_combout\,
	datac => \pwm_down|down_deal|chkflt~regout\,
	datad => \pwm_down|dead|chkflt_data[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|chkflt_data[7]~33_combout\);

-- Location: LC_X15_Y5_N7
\pwm_down|dead|Equal7~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal7~0_combout\ = ((!\pwm_down|dead|chkflt_data\(8) & (!\pwm_down|dead|chkflt_data\(7) & \pwm_down|dead|chkflt_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(8),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|chkflt_data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal7~0_combout\);

-- Location: LC_X14_Y5_N5
\pwm_down|dead|Equal4~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal4~0_combout\ = (\pwm_down|dead|chkflt_data\(13) & (!\pwm_down|dead|chkflt_data\(5) & (!\pwm_down|dead|chkflt_data\(4) & \pwm_down|dead|chkflt_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(13),
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \pwm_down|dead|chkflt_data\(4),
	datad => \pwm_down|dead|chkflt_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal4~0_combout\);

-- Location: LC_X13_Y4_N1
\pwm_down|dead|LessThan4~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan4~2_combout\ = (!\pwm_down|dead|chkflt_data\(1) & (((!\pwm_down|dead|chkflt_data\(2) & !\pwm_down|dead|chkflt_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(1),
	datac => \pwm_down|dead|chkflt_data\(2),
	datad => \pwm_down|dead|chkflt_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan4~2_combout\);

-- Location: LC_X14_Y5_N2
\pwm_down|dead|Equal4~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal4~1_combout\ = (\pwm_down|dead|chkflt_data\(3) & (((\pwm_down|dead|Equal4~0_combout\ & \pwm_down|dead|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(3),
	datac => \pwm_down|dead|Equal4~0_combout\,
	datad => \pwm_down|dead|LessThan4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal4~1_combout\);

-- Location: LC_X15_Y5_N3
\pwm_down|dead|Equal6~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal6~1_combout\ = (!\pwm_down|dead|chkflt_data\(12) & (\pwm_down|dead|chkflt_data\(15) & (\pwm_down|dead|chkflt_data\(10) & \pwm_down|dead|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(12),
	datab => \pwm_down|dead|chkflt_data\(15),
	datac => \pwm_down|dead|chkflt_data\(10),
	datad => \pwm_down|dead|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal6~1_combout\);

-- Location: LC_X15_Y5_N4
\pwm_down|dead|igbt_rst[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|igbt_rst\(3) = DFFEAS((\pwm_down|dead|chkflt_data\(14) & (\pwm_down|dead|chkflt_data\(9) & (\pwm_down|dead|Equal7~0_combout\ & \pwm_down|dead|Equal6~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(14),
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|dead|Equal7~0_combout\,
	datad => \pwm_down|dead|Equal6~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|igbt_rst\(3));

-- Location: LC_X12_Y5_N7
\pwm_up|sign_deal|comb~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|comb~0_combout\ = (((\pwm_down|dead|igbt_rst\(3)) # (\init|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|igbt_rst\(3),
	datad => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|comb~0_combout\);

-- Location: LC_X12_Y5_N4
\pwm_up|sign_deal|t4|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|count\(1) = DFFEAS((!\pwm_up|sign_deal|t4|count\(2) & (\pwm_up|sign_deal|t4|in1_dly\(2) & (\pwm_up|sign_deal|t4|count\(1) $ (\pwm_up|sign_deal|t4|count\(0))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t4|count\(2),
	datab => \pwm_up|sign_deal|t4|in1_dly\(2),
	datac => \pwm_up|sign_deal|t4|count\(1),
	datad => \pwm_up|sign_deal|t4|count\(0),
	aclr => \pwm_up|sign_deal|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|count\(1));

-- Location: LC_X12_Y5_N3
\pwm_up|sign_deal|t4|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|count\(2) = DFFEAS((\pwm_up|sign_deal|t4|count\(2) & ((\pwm_up|sign_deal|t4|in1_dly\(2)) # ((!\pwm_up|sign_deal|t4|count\(1) & !\pwm_up|sign_deal|t4|count\(0))))) # (!\pwm_up|sign_deal|t4|count\(2) & (\pwm_up|sign_deal|t4|in1_dly\(2) 
-- & (\pwm_up|sign_deal|t4|count\(1) & \pwm_up|sign_deal|t4|count\(0)))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c88a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t4|count\(2),
	datab => \pwm_up|sign_deal|t4|in1_dly\(2),
	datac => \pwm_up|sign_deal|t4|count\(1),
	datad => \pwm_up|sign_deal|t4|count\(0),
	aclr => \pwm_up|sign_deal|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|count\(2));

-- Location: LC_X12_Y5_N9
\pwm_up|sign_deal|t4|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|count\(0) = DFFEAS(((\pwm_up|sign_deal|t4|in1_dly\(2) & (!\pwm_up|sign_deal|t4|count\(0) & !\pwm_up|sign_deal|t4|count\(2)))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t4|in1_dly\(2),
	datac => \pwm_up|sign_deal|t4|count\(0),
	datad => \pwm_up|sign_deal|t4|count\(2),
	aclr => \pwm_up|sign_deal|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t4|count\(0));

-- Location: LC_X12_Y5_N6
\pwm_up|sign_deal|t4|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t4|Equal0~0_combout\ = ((!\pwm_up|sign_deal|t4|count\(0) & (!\pwm_up|sign_deal|t4|count\(1) & \pwm_up|sign_deal|t4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|t4|count\(0),
	datac => \pwm_up|sign_deal|t4|count\(1),
	datad => \pwm_up|sign_deal|t4|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|t4|Equal0~0_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr3,
	combout => \tr3~combout\);

-- Location: LC_X6_Y10_N4
\pwm_up|sign_deal|t3|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|in1_dly\(0) = DFFEAS((((!\tr3~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \tr3~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|in1_dly\(0));

-- Location: LC_X6_Y10_N0
\pwm_up|sign_deal|t3|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t3|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t3|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|in1_dly\(1));

-- Location: LC_X11_Y5_N3
\pwm_up|sign_deal|t3|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|in1_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t3|in1_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t3|in1_dly\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|in1_dly\(2));

-- Location: LC_X14_Y7_N8
\pwm_down|dead|always5~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~3_combout\ = ((\pwm_down|dead|chkflt_data\(9) & (\pwm_down|dead|chkflt_data\(7) & \pwm_down|dead|chkflt_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|chkflt_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~3_combout\);

-- Location: LC_X15_Y5_N2
\pwm_down|dead|igbt_rst[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|igbt_rst\(2) = DFFEAS((!\pwm_down|dead|chkflt_data\(14) & (\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|always5~3_combout\ & \pwm_down|dead|Equal6~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|chkflt_data\(14),
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|always5~3_combout\,
	datad => \pwm_down|dead|Equal6~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|igbt_rst\(2));

-- Location: LC_X11_Y5_N0
\pwm_up|sign_deal|comb~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|comb~1_combout\ = (((\init|LessThan2~3_combout\) # (\pwm_down|dead|igbt_rst\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \init|LessThan2~3_combout\,
	datad => \pwm_down|dead|igbt_rst\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|comb~1_combout\);

-- Location: LC_X11_Y5_N2
\pwm_up|sign_deal|t3|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|count\(1) = DFFEAS((!\pwm_up|sign_deal|t3|count\(2) & (\pwm_up|sign_deal|t3|in1_dly\(2) & (\pwm_up|sign_deal|t3|count\(0) $ (\pwm_up|sign_deal|t3|count\(1))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t3|count\(0),
	datab => \pwm_up|sign_deal|t3|count\(2),
	datac => \pwm_up|sign_deal|t3|count\(1),
	datad => \pwm_up|sign_deal|t3|in1_dly\(2),
	aclr => \pwm_up|sign_deal|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|count\(1));

-- Location: LC_X11_Y5_N1
\pwm_up|sign_deal|t3|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|count\(2) = DFFEAS((\pwm_up|sign_deal|t3|count\(0) & (\pwm_up|sign_deal|t3|in1_dly\(2) & ((\pwm_up|sign_deal|t3|count\(2)) # (\pwm_up|sign_deal|t3|count\(1))))) # (!\pwm_up|sign_deal|t3|count\(0) & (\pwm_up|sign_deal|t3|count\(2) & 
-- ((\pwm_up|sign_deal|t3|in1_dly\(2)) # (!\pwm_up|sign_deal|t3|count\(1))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t3|count\(0),
	datab => \pwm_up|sign_deal|t3|count\(2),
	datac => \pwm_up|sign_deal|t3|count\(1),
	datad => \pwm_up|sign_deal|t3|in1_dly\(2),
	aclr => \pwm_up|sign_deal|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|count\(2));

-- Location: LC_X11_Y5_N8
\pwm_up|sign_deal|t3|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|count\(0) = DFFEAS((!\pwm_up|sign_deal|t3|count\(0) & (!\pwm_up|sign_deal|t3|count\(2) & ((\pwm_up|sign_deal|t3|in1_dly\(2))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t3|count\(0),
	datab => \pwm_up|sign_deal|t3|count\(2),
	datad => \pwm_up|sign_deal|t3|in1_dly\(2),
	aclr => \pwm_up|sign_deal|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t3|count\(0));

-- Location: LC_X11_Y5_N9
\pwm_up|sign_deal|t3|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t3|Equal0~0_combout\ = (!\pwm_up|sign_deal|t3|count\(0) & (!\pwm_up|sign_deal|t3|count\(1) & ((\pwm_up|sign_deal|t3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t3|count\(0),
	datab => \pwm_up|sign_deal|t3|count\(1),
	datad => \pwm_up|sign_deal|t3|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|t3|Equal0~0_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr2,
	combout => \tr2~combout\);

-- Location: LC_X15_Y3_N6
\pwm_up|sign_deal|t2|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|in1_dly\(0) = DFFEAS((((!\tr2~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \tr2~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|in1_dly\(0));

-- Location: LC_X15_Y3_N4
\pwm_up|sign_deal|t2|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t2|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t2|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|in1_dly\(1));

-- Location: LC_X15_Y3_N9
\pwm_up|sign_deal|t2|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|in1_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t2|in1_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t2|in1_dly\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|in1_dly\(2));

-- Location: LC_X15_Y5_N5
\pwm_down|dead|Equal5~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal5~0_combout\ = (!\pwm_down|dead|chkflt_data\(7) & (!\pwm_down|dead|chkflt_data\(9) & (\pwm_down|dead|chkflt_data\(8) & \pwm_down|dead|chkflt_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(7),
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|dead|chkflt_data\(8),
	datad => \pwm_down|dead|chkflt_data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal5~0_combout\);

-- Location: LC_X15_Y5_N9
\pwm_down|dead|Equal4~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal4~2_combout\ = (!\pwm_down|dead|chkflt_data\(10) & (!\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|chkflt_data\(12) & !\pwm_down|dead|chkflt_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(10),
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|chkflt_data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal4~2_combout\);

-- Location: LC_X15_Y5_N0
\pwm_down|dead|igbt_rst[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|igbt_rst\(1) = DFFEAS(((\pwm_down|dead|Equal4~1_combout\ & (\pwm_down|dead|Equal5~0_combout\ & \pwm_down|dead|Equal4~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|Equal4~1_combout\,
	datac => \pwm_down|dead|Equal5~0_combout\,
	datad => \pwm_down|dead|Equal4~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|igbt_rst\(1));

-- Location: LC_X15_Y3_N8
\pwm_up|sign_deal|comb~2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|comb~2_combout\ = (((\pwm_down|dead|igbt_rst\(1)) # (\init|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|igbt_rst\(1),
	datad => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|comb~2_combout\);

-- Location: LC_X15_Y3_N5
\pwm_up|sign_deal|t2|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|count\(1) = DFFEAS((!\pwm_up|sign_deal|t2|count\(2) & (\pwm_up|sign_deal|t2|in1_dly\(2) & (\pwm_up|sign_deal|t2|count\(1) $ (\pwm_up|sign_deal|t2|count\(0))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~2_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t2|count\(2),
	datab => \pwm_up|sign_deal|t2|in1_dly\(2),
	datac => \pwm_up|sign_deal|t2|count\(1),
	datad => \pwm_up|sign_deal|t2|count\(0),
	aclr => \pwm_up|sign_deal|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|count\(1));

-- Location: LC_X15_Y3_N3
\pwm_up|sign_deal|t2|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|count\(2) = DFFEAS((\pwm_up|sign_deal|t2|count\(2) & ((\pwm_up|sign_deal|t2|in1_dly\(2)) # ((!\pwm_up|sign_deal|t2|count\(1) & !\pwm_up|sign_deal|t2|count\(0))))) # (!\pwm_up|sign_deal|t2|count\(2) & (\pwm_up|sign_deal|t2|in1_dly\(2) 
-- & (\pwm_up|sign_deal|t2|count\(1) & \pwm_up|sign_deal|t2|count\(0)))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~2_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c88a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t2|count\(2),
	datab => \pwm_up|sign_deal|t2|in1_dly\(2),
	datac => \pwm_up|sign_deal|t2|count\(1),
	datad => \pwm_up|sign_deal|t2|count\(0),
	aclr => \pwm_up|sign_deal|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|count\(2));

-- Location: LC_X15_Y3_N1
\pwm_up|sign_deal|t2|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|count\(0) = DFFEAS((!\pwm_up|sign_deal|t2|count\(2) & (\pwm_up|sign_deal|t2|in1_dly\(2) & ((!\pwm_up|sign_deal|t2|count\(0))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~2_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t2|count\(2),
	datab => \pwm_up|sign_deal|t2|in1_dly\(2),
	datad => \pwm_up|sign_deal|t2|count\(0),
	aclr => \pwm_up|sign_deal|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t2|count\(0));

-- Location: LC_X15_Y3_N7
\pwm_up|sign_deal|t2|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t2|Equal0~0_combout\ = ((!\pwm_up|sign_deal|t2|count\(0) & (!\pwm_up|sign_deal|t2|count\(1) & \pwm_up|sign_deal|t2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|t2|count\(0),
	datac => \pwm_up|sign_deal|t2|count\(1),
	datad => \pwm_up|sign_deal|t2|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|t2|Equal0~0_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr1,
	combout => \tr1~combout\);

-- Location: LC_X12_Y3_N2
\pwm_up|sign_deal|t1|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|in1_dly\(0) = DFFEAS((((!\tr1~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \tr1~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|in1_dly\(0));

-- Location: LC_X12_Y3_N7
\pwm_up|sign_deal|t1|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|in1_dly\(1) = DFFEAS((((\pwm_up|sign_deal|t1|in1_dly\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|sign_deal|t1|in1_dly\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|in1_dly\(1));

-- Location: LC_X12_Y3_N9
\pwm_up|sign_deal|t1|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|in1_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|t1|in1_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|t1|in1_dly\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|in1_dly\(2));

-- Location: LC_X15_Y5_N6
\pwm_down|dead|Equal4~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal4~3_combout\ = (\pwm_down|dead|chkflt_data\(7) & (\pwm_down|dead|chkflt_data\(9) & (!\pwm_down|dead|chkflt_data\(8) & !\pwm_down|dead|chkflt_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(7),
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|dead|chkflt_data\(8),
	datad => \pwm_down|dead|chkflt_data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal4~3_combout\);

-- Location: LC_X15_Y5_N1
\pwm_down|dead|igbt_rst[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|igbt_rst\(0) = DFFEAS(((\pwm_down|dead|Equal4~1_combout\ & (\pwm_down|dead|Equal4~3_combout\ & \pwm_down|dead|Equal4~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|Equal4~1_combout\,
	datac => \pwm_down|dead|Equal4~3_combout\,
	datad => \pwm_down|dead|Equal4~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|igbt_rst\(0));

-- Location: LC_X12_Y3_N0
\pwm_up|sign_deal|comb~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|comb~3_combout\ = ((\init|LessThan2~3_combout\) # ((\pwm_down|dead|igbt_rst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \init|LessThan2~3_combout\,
	datad => \pwm_down|dead|igbt_rst\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|comb~3_combout\);

-- Location: LC_X12_Y3_N3
\pwm_up|sign_deal|t1|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|count\(1) = DFFEAS((\pwm_up|sign_deal|t1|in1_dly\(2) & (!\pwm_up|sign_deal|t1|count\(2) & (\pwm_up|sign_deal|t1|count\(1) $ (\pwm_up|sign_deal|t1|count\(0))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~3_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0048",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t1|count\(1),
	datab => \pwm_up|sign_deal|t1|in1_dly\(2),
	datac => \pwm_up|sign_deal|t1|count\(0),
	datad => \pwm_up|sign_deal|t1|count\(2),
	aclr => \pwm_up|sign_deal|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|count\(1));

-- Location: LC_X12_Y3_N8
\pwm_up|sign_deal|t1|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|count\(2) = DFFEAS((\pwm_up|sign_deal|t1|count\(1) & (\pwm_up|sign_deal|t1|in1_dly\(2) & ((\pwm_up|sign_deal|t1|count\(0)) # (\pwm_up|sign_deal|t1|count\(2))))) # (!\pwm_up|sign_deal|t1|count\(1) & (\pwm_up|sign_deal|t1|count\(2) & 
-- ((\pwm_up|sign_deal|t1|in1_dly\(2)) # (!\pwm_up|sign_deal|t1|count\(0))))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~3_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t1|count\(1),
	datab => \pwm_up|sign_deal|t1|in1_dly\(2),
	datac => \pwm_up|sign_deal|t1|count\(0),
	datad => \pwm_up|sign_deal|t1|count\(2),
	aclr => \pwm_up|sign_deal|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|count\(2));

-- Location: LC_X12_Y3_N6
\pwm_up|sign_deal|t1|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|count\(0) = DFFEAS(((\pwm_up|sign_deal|t1|in1_dly\(2) & (!\pwm_up|sign_deal|t1|count\(0) & !\pwm_up|sign_deal|t1|count\(2)))), GLOBAL(\clk~combout\), !\pwm_up|sign_deal|comb~3_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t1|in1_dly\(2),
	datac => \pwm_up|sign_deal|t1|count\(0),
	datad => \pwm_up|sign_deal|t1|count\(2),
	aclr => \pwm_up|sign_deal|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t1|count\(0));

-- Location: LC_X11_Y5_N5
\pwm_up|sign_deal|t1|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t1|Equal0~0_combout\ = ((!\pwm_up|sign_deal|t1|count\(0) & (!\pwm_up|sign_deal|t1|count\(1) & \pwm_up|sign_deal|t1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|t1|count\(0),
	datac => \pwm_up|sign_deal|t1|count\(1),
	datad => \pwm_up|sign_deal|t1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|t1|Equal0~0_combout\);

-- Location: LC_X11_Y5_N6
\pwm_down|down_deal|always8~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always8~0_combout\ = (!\pwm_up|sign_deal|t4|Equal0~0_combout\ & (!\pwm_up|sign_deal|t3|Equal0~0_combout\ & (!\pwm_up|sign_deal|t2|Equal0~0_combout\ & !\pwm_up|sign_deal|t1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t4|Equal0~0_combout\,
	datab => \pwm_up|sign_deal|t3|Equal0~0_combout\,
	datac => \pwm_up|sign_deal|t2|Equal0~0_combout\,
	datad => \pwm_up|sign_deal|t1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always8~0_combout\);

-- Location: LC_X11_Y5_N7
\pwm_up|up_sign|reg_flt[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|fault\ = (\pwm_up|sign_deal|call_fault~combout\) # (((!\pwm_down|down_deal|always8~0_combout\) # (!\pwm_up|sign_deal|TEM_f|Equal0~0_combout\)) # (!\pwm_up|sign_deal|ov_f|Equal0~0_combout\))
-- \pwm_up|up_sign|reg_flt\(0) = DFFEAS(\pwm_up|sign_deal|fault\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_fault~combout\,
	datab => \pwm_up|sign_deal|ov_f|Equal0~0_combout\,
	datac => \pwm_up|sign_deal|TEM_f|Equal0~0_combout\,
	datad => \pwm_down|down_deal|always8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|fault\,
	regout => \pwm_up|up_sign|reg_flt\(0));

-- Location: LC_X12_Y6_N1
\pwm_down|down_deal|always9~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always9~1_combout\ = (\pwm_down|down_deal|always6~4\ & (\pwm_down|down_deal|always9~0\ & (\pwm_down|down_deal|always6~6\ & \pwm_down|down_deal|always6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|always6~4\,
	datab => \pwm_down|down_deal|always9~0\,
	datac => \pwm_down|down_deal|always6~6\,
	datad => \pwm_down|down_deal|always6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always9~1_combout\);

-- Location: LC_X12_Y6_N5
\pwm_down|down_deal|always6~5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always6~5_combout\ = (\pwm_down|down_deal|always6~3\ & (\pwm_down|down_deal|always6~4\ & (\pwm_down|down_deal|always6~2\ & \pwm_down|down_deal|always6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|always6~3\,
	datab => \pwm_down|down_deal|always6~4\,
	datac => \pwm_down|down_deal|always6~2\,
	datad => \pwm_down|down_deal|always6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always6~5_combout\);

-- Location: LC_X12_Y6_N6
\pwm_down|down_deal|start~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|start~0_combout\ = (!\pwm_down|down_deal|Lockn~regout\ & (!\pwm_up|sign_deal|fault\ & (!\pwm_down|down_deal|always9~1_combout\ & !\pwm_down|down_deal|always6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|Lockn~regout\,
	datab => \pwm_up|sign_deal|fault\,
	datac => \pwm_down|down_deal|always9~1_combout\,
	datad => \pwm_down|down_deal|always6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|start~0_combout\);

-- Location: LC_X12_Y6_N7
\pwm_down|down_deal|start\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|start~regout\ = DFFEAS(((\pwm_down|down_deal|start~0_combout\ & ((\pwm_down|down_deal|start~regout\) # (\pwm_down|down_deal|always6~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|start~regout\,
	datac => \pwm_down|down_deal|always6~8_combout\,
	datad => \pwm_down|down_deal|start~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|start~regout\);

-- Location: LC_X12_Y6_N2
\pwm_down|down_deal|always8~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always8~1_combout\ = (((!\pwm_down|down_deal|start~regout\ & \pwm_down|down_deal|always9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|down_deal|start~regout\,
	datad => \pwm_down|down_deal|always9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always8~1_combout\);

-- Location: LC_X13_Y5_N6
\pwm_down|dead|always5~28\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~28_combout\ = ((!\pwm_down|dead|chkflt_data\(10) & ((\pwm_down|dead|chkflt_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(10),
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~28_combout\);

-- Location: LC_X14_Y5_N6
\pwm_down|dead|LessThan7~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan7~1_combout\ = (!\pwm_down|dead|chkflt_data\(3) & (!\pwm_down|dead|chkflt_data\(5) & (!\pwm_down|dead|chkflt_data\(4) & !\pwm_down|dead|chkflt_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(3),
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \pwm_down|dead|chkflt_data\(4),
	datad => \pwm_down|dead|chkflt_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan7~1_combout\);

-- Location: LC_X13_Y5_N3
\pwm_down|dead|always5~29\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~29_combout\ = (\pwm_down|dead|LessThan7~1_combout\ & (\pwm_down|dead|chkflt_data\(11) & (!\pwm_down|dead|chkflt_data\(8) & !\pwm_down|dead|chkflt_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan7~1_combout\,
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(8),
	datad => \pwm_down|dead|chkflt_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~29_combout\);

-- Location: LC_X13_Y5_N4
\pwm_down|dead|Equal8~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal8~0_combout\ = (\pwm_down|dead|always5~28_combout\ & (\pwm_down|dead|LessThan4~2_combout\ & (\pwm_down|dead|chkflt_data[7]~32_combout\ & \pwm_down|dead|always5~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~28_combout\,
	datab => \pwm_down|dead|LessThan4~2_combout\,
	datac => \pwm_down|dead|chkflt_data[7]~32_combout\,
	datad => \pwm_down|dead|always5~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal8~0_combout\);

-- Location: LC_X12_Y6_N4
\pwm_down|down_deal|chkflt\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|chkflt~regout\ = DFFEAS((\pwm_down|down_deal|chkflt~regout\ & (((\pwm_down|down_deal|always8~1_combout\ & !\pwm_down|down_deal|always8~0_combout\)) # (!\pwm_down|dead|Equal8~0_combout\))) # (!\pwm_down|down_deal|chkflt~regout\ & 
-- (\pwm_down|down_deal|always8~1_combout\ & (!\pwm_down|down_deal|always8~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|chkflt~regout\,
	datab => \pwm_down|down_deal|always8~1_combout\,
	datac => \pwm_down|down_deal|always8~0_combout\,
	datad => \pwm_down|dead|Equal8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|chkflt~regout\);

-- Location: LC_X12_Y6_N8
\pwm_down|down_deal|rst\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|rst~regout\ = DFFEAS((\pwm_down|down_deal|chkflt~regout\ & ((\pwm_down|dead|Equal8~0_combout\) # ((\pwm_down|down_deal|always8~1_combout\ & \pwm_down|down_deal|always8~0_combout\)))) # (!\pwm_down|down_deal|chkflt~regout\ & 
-- (\pwm_down|down_deal|always8~1_combout\ & (\pwm_down|down_deal|always8~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|chkflt~regout\,
	datab => \pwm_down|down_deal|always8~1_combout\,
	datac => \pwm_down|down_deal|always8~0_combout\,
	datad => \pwm_down|dead|Equal8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|rst~regout\);

-- Location: LC_X11_Y7_N0
\pwm_down|down_deal|recv_para~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|recv_para~0_combout\ = (\pwm_down|des|recv_done~regout\ & ((\pwm_down|down_deal|Equal7~0\) # ((\pwm_down|down_deal|Equal0~7_combout\) # (\pwm_down|down_deal|Equal9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|recv_done~regout\,
	datab => \pwm_down|down_deal|Equal7~0\,
	datac => \pwm_down|down_deal|Equal0~7_combout\,
	datad => \pwm_down|down_deal|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|recv_para~0_combout\);

-- Location: LC_X11_Y7_N7
\pwm_up|sign_deal|ready\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|ready~regout\ = DFFEAS((!\pwm_down|down_deal|rst~regout\ & ((\pwm_down|down_deal|start~regout\) # ((\pwm_up|sign_deal|ready~regout\) # (\pwm_down|down_deal|recv_para~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|rst~regout\,
	datab => \pwm_down|down_deal|start~regout\,
	datac => \pwm_up|sign_deal|ready~regout\,
	datad => \pwm_down|down_deal|recv_para~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|ready~regout\);

-- Location: LC_X13_Y1_N2
\pwm_up|sign_deal|t_data[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(0) = DFFEAS(((!\pwm_up|sign_deal|t_data\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[0]~15\ = CARRY(((\pwm_up|sign_deal|t_data\(0))))
-- \pwm_up|sign_deal|t_data[0]~15COUT1_35\ = CARRY(((\pwm_up|sign_deal|t_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(0),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(0),
	cout0 => \pwm_up|sign_deal|t_data[0]~15\,
	cout1 => \pwm_up|sign_deal|t_data[0]~15COUT1_35\);

-- Location: LC_X13_Y1_N3
\pwm_up|sign_deal|t_data[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(1) = DFFEAS(\pwm_up|sign_deal|t_data\(1) $ ((((\pwm_up|sign_deal|t_data[0]~15\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[1]~11\ = CARRY(((!\pwm_up|sign_deal|t_data[0]~15\)) # (!\pwm_up|sign_deal|t_data\(1)))
-- \pwm_up|sign_deal|t_data[1]~11COUT1_36\ = CARRY(((!\pwm_up|sign_deal|t_data[0]~15COUT1_35\)) # (!\pwm_up|sign_deal|t_data\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(1),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin0 => \pwm_up|sign_deal|t_data[0]~15\,
	cin1 => \pwm_up|sign_deal|t_data[0]~15COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(1),
	cout0 => \pwm_up|sign_deal|t_data[1]~11\,
	cout1 => \pwm_up|sign_deal|t_data[1]~11COUT1_36\);

-- Location: LC_X13_Y1_N4
\pwm_up|sign_deal|t_data[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(2) = DFFEAS(\pwm_up|sign_deal|t_data\(2) $ ((((!\pwm_up|sign_deal|t_data[1]~11\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[2]~13\ = CARRY((\pwm_up|sign_deal|t_data\(2) & ((!\pwm_up|sign_deal|t_data[1]~11COUT1_36\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(2),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin0 => \pwm_up|sign_deal|t_data[1]~11\,
	cin1 => \pwm_up|sign_deal|t_data[1]~11COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(2),
	cout => \pwm_up|sign_deal|t_data[2]~13\);

-- Location: LC_X13_Y1_N5
\pwm_up|sign_deal|t_data[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(3) = DFFEAS(\pwm_up|sign_deal|t_data\(3) $ ((((\pwm_up|sign_deal|t_data[2]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[3]~19\ = CARRY(((!\pwm_up|sign_deal|t_data[2]~13\)) # (!\pwm_up|sign_deal|t_data\(3)))
-- \pwm_up|sign_deal|t_data[3]~19COUT1_37\ = CARRY(((!\pwm_up|sign_deal|t_data[2]~13\)) # (!\pwm_up|sign_deal|t_data\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(3),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[2]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(3),
	cout0 => \pwm_up|sign_deal|t_data[3]~19\,
	cout1 => \pwm_up|sign_deal|t_data[3]~19COUT1_37\);

-- Location: LC_X13_Y1_N6
\pwm_up|sign_deal|t_data[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(4) = DFFEAS(\pwm_up|sign_deal|t_data\(4) $ ((((!(!\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[3]~19\) # (\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[3]~19COUT1_37\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[4]~21\ = CARRY((\pwm_up|sign_deal|t_data\(4) & ((!\pwm_up|sign_deal|t_data[3]~19\))))
-- \pwm_up|sign_deal|t_data[4]~21COUT1_38\ = CARRY((\pwm_up|sign_deal|t_data\(4) & ((!\pwm_up|sign_deal|t_data[3]~19COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(4),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[2]~13\,
	cin0 => \pwm_up|sign_deal|t_data[3]~19\,
	cin1 => \pwm_up|sign_deal|t_data[3]~19COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(4),
	cout0 => \pwm_up|sign_deal|t_data[4]~21\,
	cout1 => \pwm_up|sign_deal|t_data[4]~21COUT1_38\);

-- Location: LC_X13_Y1_N7
\pwm_up|sign_deal|t_data[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(5) = DFFEAS((\pwm_up|sign_deal|t_data\(5) $ (((!\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[4]~21\) # (\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[4]~21COUT1_38\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[5]~23\ = CARRY(((!\pwm_up|sign_deal|t_data[4]~21\) # (!\pwm_up|sign_deal|t_data\(5))))
-- \pwm_up|sign_deal|t_data[5]~23COUT1_39\ = CARRY(((!\pwm_up|sign_deal|t_data[4]~21COUT1_38\) # (!\pwm_up|sign_deal|t_data\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(5),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[2]~13\,
	cin0 => \pwm_up|sign_deal|t_data[4]~21\,
	cin1 => \pwm_up|sign_deal|t_data[4]~21COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(5),
	cout0 => \pwm_up|sign_deal|t_data[5]~23\,
	cout1 => \pwm_up|sign_deal|t_data[5]~23COUT1_39\);

-- Location: LC_X13_Y1_N8
\pwm_up|sign_deal|t_data[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(6) = DFFEAS(\pwm_up|sign_deal|t_data\(6) $ ((((!(!\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[5]~23\) # (\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[5]~23COUT1_39\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[6]~17\ = CARRY((\pwm_up|sign_deal|t_data\(6) & ((!\pwm_up|sign_deal|t_data[5]~23\))))
-- \pwm_up|sign_deal|t_data[6]~17COUT1_40\ = CARRY((\pwm_up|sign_deal|t_data\(6) & ((!\pwm_up|sign_deal|t_data[5]~23COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(6),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[2]~13\,
	cin0 => \pwm_up|sign_deal|t_data[5]~23\,
	cin1 => \pwm_up|sign_deal|t_data[5]~23COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(6),
	cout0 => \pwm_up|sign_deal|t_data[6]~17\,
	cout1 => \pwm_up|sign_deal|t_data[6]~17COUT1_40\);

-- Location: LC_X13_Y1_N9
\pwm_up|sign_deal|t_data[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(7) = DFFEAS((\pwm_up|sign_deal|t_data\(7) $ (((!\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[6]~17\) # (\pwm_up|sign_deal|t_data[2]~13\ & \pwm_up|sign_deal|t_data[6]~17COUT1_40\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[7]~1\ = CARRY(((!\pwm_up|sign_deal|t_data[6]~17COUT1_40\) # (!\pwm_up|sign_deal|t_data\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(7),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[2]~13\,
	cin0 => \pwm_up|sign_deal|t_data[6]~17\,
	cin1 => \pwm_up|sign_deal|t_data[6]~17COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(7),
	cout => \pwm_up|sign_deal|t_data[7]~1\);

-- Location: LC_X14_Y1_N0
\pwm_up|sign_deal|t_data[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(8) = DFFEAS((\pwm_up|sign_deal|t_data\(8) $ ((!\pwm_up|sign_deal|t_data[7]~1\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[8]~3\ = CARRY(((\pwm_up|sign_deal|t_data\(8) & !\pwm_up|sign_deal|t_data[7]~1\)))
-- \pwm_up|sign_deal|t_data[8]~3COUT1_41\ = CARRY(((\pwm_up|sign_deal|t_data\(8) & !\pwm_up|sign_deal|t_data[7]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(8),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[7]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(8),
	cout0 => \pwm_up|sign_deal|t_data[8]~3\,
	cout1 => \pwm_up|sign_deal|t_data[8]~3COUT1_41\);

-- Location: LC_X14_Y1_N1
\pwm_up|sign_deal|t_data[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(9) = DFFEAS((\pwm_up|sign_deal|t_data\(9) $ (((!\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[8]~3\) # (\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[8]~3COUT1_41\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[9]~5\ = CARRY(((!\pwm_up|sign_deal|t_data[8]~3\) # (!\pwm_up|sign_deal|t_data\(9))))
-- \pwm_up|sign_deal|t_data[9]~5COUT1_42\ = CARRY(((!\pwm_up|sign_deal|t_data[8]~3COUT1_41\) # (!\pwm_up|sign_deal|t_data\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[7]~1\,
	cin0 => \pwm_up|sign_deal|t_data[8]~3\,
	cin1 => \pwm_up|sign_deal|t_data[8]~3COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(9),
	cout0 => \pwm_up|sign_deal|t_data[9]~5\,
	cout1 => \pwm_up|sign_deal|t_data[9]~5COUT1_42\);

-- Location: LC_X14_Y1_N2
\pwm_up|sign_deal|t_data[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(10) = DFFEAS((\pwm_up|sign_deal|t_data\(10) $ ((!(!\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[9]~5\) # (\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[9]~5COUT1_42\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[10]~25\ = CARRY(((\pwm_up|sign_deal|t_data\(10) & !\pwm_up|sign_deal|t_data[9]~5\)))
-- \pwm_up|sign_deal|t_data[10]~25COUT1_43\ = CARRY(((\pwm_up|sign_deal|t_data\(10) & !\pwm_up|sign_deal|t_data[9]~5COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(10),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[7]~1\,
	cin0 => \pwm_up|sign_deal|t_data[9]~5\,
	cin1 => \pwm_up|sign_deal|t_data[9]~5COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(10),
	cout0 => \pwm_up|sign_deal|t_data[10]~25\,
	cout1 => \pwm_up|sign_deal|t_data[10]~25COUT1_43\);

-- Location: LC_X14_Y1_N3
\pwm_up|sign_deal|t_data[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(11) = DFFEAS(\pwm_up|sign_deal|t_data\(11) $ (((((!\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[10]~25\) # (\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[10]~25COUT1_43\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[11]~7\ = CARRY(((!\pwm_up|sign_deal|t_data[10]~25\)) # (!\pwm_up|sign_deal|t_data\(11)))
-- \pwm_up|sign_deal|t_data[11]~7COUT1_44\ = CARRY(((!\pwm_up|sign_deal|t_data[10]~25COUT1_43\)) # (!\pwm_up|sign_deal|t_data\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(11),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[7]~1\,
	cin0 => \pwm_up|sign_deal|t_data[10]~25\,
	cin1 => \pwm_up|sign_deal|t_data[10]~25COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(11),
	cout0 => \pwm_up|sign_deal|t_data[11]~7\,
	cout1 => \pwm_up|sign_deal|t_data[11]~7COUT1_44\);

-- Location: LC_X14_Y1_N4
\pwm_up|sign_deal|t_data[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(12) = DFFEAS(\pwm_up|sign_deal|t_data\(12) $ ((((!(!\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[11]~7\) # (\pwm_up|sign_deal|t_data[7]~1\ & \pwm_up|sign_deal|t_data[11]~7COUT1_44\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[12]~9\ = CARRY((\pwm_up|sign_deal|t_data\(12) & ((!\pwm_up|sign_deal|t_data[11]~7COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(12),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[7]~1\,
	cin0 => \pwm_up|sign_deal|t_data[11]~7\,
	cin1 => \pwm_up|sign_deal|t_data[11]~7COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(12),
	cout => \pwm_up|sign_deal|t_data[12]~9\);

-- Location: LC_X14_Y1_N5
\pwm_up|sign_deal|t_data[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(13) = DFFEAS(\pwm_up|sign_deal|t_data\(13) $ ((((\pwm_up|sign_deal|t_data[12]~9\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[13]~29\ = CARRY(((!\pwm_up|sign_deal|t_data[12]~9\)) # (!\pwm_up|sign_deal|t_data\(13)))
-- \pwm_up|sign_deal|t_data[13]~29COUT1_45\ = CARRY(((!\pwm_up|sign_deal|t_data[12]~9\)) # (!\pwm_up|sign_deal|t_data\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(13),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[12]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(13),
	cout0 => \pwm_up|sign_deal|t_data[13]~29\,
	cout1 => \pwm_up|sign_deal|t_data[13]~29COUT1_45\);

-- Location: LC_X14_Y1_N6
\pwm_up|sign_deal|t_data[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(14) = DFFEAS(\pwm_up|sign_deal|t_data\(14) $ ((((!(!\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[13]~29\) # (\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[13]~29COUT1_45\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[14]~31\ = CARRY((\pwm_up|sign_deal|t_data\(14) & ((!\pwm_up|sign_deal|t_data[13]~29\))))
-- \pwm_up|sign_deal|t_data[14]~31COUT1_46\ = CARRY((\pwm_up|sign_deal|t_data\(14) & ((!\pwm_up|sign_deal|t_data[13]~29COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t_data\(14),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[12]~9\,
	cin0 => \pwm_up|sign_deal|t_data[13]~29\,
	cin1 => \pwm_up|sign_deal|t_data[13]~29COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(14),
	cout0 => \pwm_up|sign_deal|t_data[14]~31\,
	cout1 => \pwm_up|sign_deal|t_data[14]~31COUT1_46\);

-- Location: LC_X14_Y1_N7
\pwm_up|sign_deal|t_data[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(15) = DFFEAS((\pwm_up|sign_deal|t_data\(15) $ (((!\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[14]~31\) # (\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[14]~31COUT1_46\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )
-- \pwm_up|sign_deal|t_data[15]~27\ = CARRY(((!\pwm_up|sign_deal|t_data[14]~31\) # (!\pwm_up|sign_deal|t_data\(15))))
-- \pwm_up|sign_deal|t_data[15]~27COUT1_47\ = CARRY(((!\pwm_up|sign_deal|t_data[14]~31COUT1_46\) # (!\pwm_up|sign_deal|t_data\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|t_data\(15),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[12]~9\,
	cin0 => \pwm_up|sign_deal|t_data[14]~31\,
	cin1 => \pwm_up|sign_deal|t_data[14]~31COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(15),
	cout0 => \pwm_up|sign_deal|t_data[15]~27\,
	cout1 => \pwm_up|sign_deal|t_data[15]~27COUT1_47\);

-- Location: LC_X14_Y1_N8
\pwm_up|sign_deal|t_data[16]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|t_data\(16) = DFFEAS((((!\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[15]~27\) # (\pwm_up|sign_deal|t_data[12]~9\ & \pwm_up|sign_deal|t_data[15]~27COUT1_47\) $ (!\pwm_up|sign_deal|t_data\(16)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , \pwm_up|sign_deal|LessThan1~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|sign_deal|t_data\(16),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|sign_deal|LessThan1~1_combout\,
	cin => \pwm_up|sign_deal|t_data[12]~9\,
	cin0 => \pwm_up|sign_deal|t_data[15]~27\,
	cin1 => \pwm_up|sign_deal|t_data[15]~27COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|t_data\(16));

-- Location: LC_X14_Y2_N2
\pwm_up|sign_deal|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~0_combout\ = ((!\pwm_up|sign_deal|t_data\(8) & (!\pwm_up|sign_deal|t_data\(9) & !\pwm_up|sign_deal|t_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|t_data\(8),
	datac => \pwm_up|sign_deal|t_data\(9),
	datad => \pwm_up|sign_deal|t_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~0_combout\);

-- Location: LC_X14_Y1_N9
\pwm_up|sign_deal|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~1_combout\ = (((\pwm_up|sign_deal|t_data\(12) & \pwm_up|sign_deal|t_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|sign_deal|t_data\(12),
	datad => \pwm_up|sign_deal|t_data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~1_combout\);

-- Location: LC_X14_Y2_N8
\pwm_up|sign_deal|LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|LessThan1~0_combout\ = (((\pwm_up|sign_deal|Equal0~0_combout\ & !\pwm_up|sign_deal|t_data\(10))) # (!\pwm_up|sign_deal|t_data\(13))) # (!\pwm_up|sign_deal|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|Equal0~0_combout\,
	datab => \pwm_up|sign_deal|t_data\(10),
	datac => \pwm_up|sign_deal|Equal0~1_combout\,
	datad => \pwm_up|sign_deal|t_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|LessThan1~0_combout\);

-- Location: LC_X14_Y2_N9
\pwm_up|sign_deal|LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|LessThan1~1_combout\ = (\pwm_up|sign_deal|t_data\(16) & ((\pwm_up|sign_deal|t_data\(14)) # ((\pwm_up|sign_deal|t_data\(15)) # (!\pwm_up|sign_deal|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t_data\(14),
	datab => \pwm_up|sign_deal|t_data\(16),
	datac => \pwm_up|sign_deal|t_data\(15),
	datad => \pwm_up|sign_deal|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|LessThan1~1_combout\);

-- Location: LC_X14_Y2_N6
\pwm_up|sign_deal|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~5_combout\ = (!\pwm_up|sign_deal|t_data\(14) & (\pwm_up|sign_deal|t_data\(10) & (\pwm_up|sign_deal|t_data\(15) & !\pwm_up|sign_deal|t_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t_data\(14),
	datab => \pwm_up|sign_deal|t_data\(10),
	datac => \pwm_up|sign_deal|t_data\(15),
	datad => \pwm_up|sign_deal|t_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~5_combout\);

-- Location: LC_X13_Y1_N1
\pwm_up|sign_deal|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~4_combout\ = (!\pwm_up|sign_deal|t_data\(4) & (!\pwm_up|sign_deal|t_data\(5) & (!\pwm_up|sign_deal|t_data\(3) & \pwm_up|sign_deal|t_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t_data\(4),
	datab => \pwm_up|sign_deal|t_data\(5),
	datac => \pwm_up|sign_deal|t_data\(3),
	datad => \pwm_up|sign_deal|t_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~4_combout\);

-- Location: LC_X13_Y1_N0
\pwm_up|sign_deal|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~2_combout\ = (((!\pwm_up|sign_deal|t_data\(2) & !\pwm_up|sign_deal|t_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|sign_deal|t_data\(2),
	datad => \pwm_up|sign_deal|t_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~2_combout\);

-- Location: LC_X14_Y2_N3
\pwm_up|sign_deal|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~3_combout\ = (\pwm_up|sign_deal|Equal0~2_combout\ & (!\pwm_up|sign_deal|t_data\(0) & (\pwm_up|sign_deal|Equal0~1_combout\ & \pwm_up|sign_deal|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|Equal0~2_combout\,
	datab => \pwm_up|sign_deal|t_data\(0),
	datac => \pwm_up|sign_deal|Equal0~1_combout\,
	datad => \pwm_up|sign_deal|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~3_combout\);

-- Location: LC_X14_Y2_N4
\pwm_up|sign_deal|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Equal0~6_combout\ = (\pwm_up|sign_deal|Equal0~5_combout\ & (!\pwm_up|sign_deal|t_data\(16) & (\pwm_up|sign_deal|Equal0~4_combout\ & \pwm_up|sign_deal|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|Equal0~5_combout\,
	datab => \pwm_up|sign_deal|t_data\(16),
	datac => \pwm_up|sign_deal|Equal0~4_combout\,
	datad => \pwm_up|sign_deal|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Equal0~6_combout\);

-- Location: LC_X11_Y7_N3
\pwm_down|down_deal|recv_para~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|recv_para~1_combout\ = (((\pwm_down|down_deal|Equal0~7_combout\) # (\pwm_down|down_deal|Equal7~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|down_deal|Equal0~7_combout\,
	datad => \pwm_down|down_deal|Equal7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|recv_para~1_combout\);

-- Location: LC_X11_Y7_N4
\pwm_up|sign_deal|call_count2[0]~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2[0]~3_combout\ = (!\pwm_down|down_deal|Lockn~regout\ & (((!\pwm_down|down_deal|Equal9~3_combout\ & !\pwm_down|down_deal|recv_para~1_combout\)) # (!\pwm_down|des|recv_done~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0507",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|des|recv_done~regout\,
	datab => \pwm_down|down_deal|Equal9~3_combout\,
	datac => \pwm_down|down_deal|Lockn~regout\,
	datad => \pwm_down|down_deal|recv_para~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|call_count2[0]~3_combout\);

-- Location: LC_X11_Y7_N5
\pwm_up|sign_deal|connect\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|connect~regout\ = DFFEAS((\pwm_up|sign_deal|ready~regout\ & (((\pwm_up|sign_deal|connect~regout\ & !\pwm_up|sign_deal|Equal0~6_combout\)) # (!\pwm_up|sign_deal|call_count2[0]~3_combout\))) # (!\pwm_up|sign_deal|ready~regout\ & 
-- (\pwm_up|sign_deal|connect~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|connect~regout\,
	datab => \pwm_up|sign_deal|ready~regout\,
	datac => \pwm_up|sign_deal|Equal0~6_combout\,
	datad => \pwm_up|sign_deal|call_count2[0]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|connect~regout\);

-- Location: LC_X11_Y7_N8
\pwm_up|sign_deal|call_count2~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2~0_combout\ = (\pwm_up|sign_deal|ready~regout\ & (((!\pwm_up|sign_deal|connect~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|ready~regout\,
	datac => \pwm_up|sign_deal|connect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|call_count2~0_combout\);

-- Location: LC_X11_Y7_N1
\pwm_up|sign_deal|call_count2[0]~2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2[0]~2_combout\ = ((!\pwm_down|down_deal|Lockn~regout\ & (\pwm_up|sign_deal|Equal0~6_combout\ & !\pwm_down|down_deal|recv_para~0_combout\))) # (!\pwm_up|sign_deal|ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5575",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|ready~regout\,
	datab => \pwm_down|down_deal|Lockn~regout\,
	datac => \pwm_up|sign_deal|Equal0~6_combout\,
	datad => \pwm_down|down_deal|recv_para~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|call_count2[0]~2_combout\);

-- Location: LC_X11_Y7_N2
\pwm_up|sign_deal|call_count2[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2\(0) = DFFEAS((!\pwm_up|sign_deal|connect~regout\ & (!\pwm_up|sign_deal|call_count2\(2) & (\pwm_up|sign_deal|ready~regout\ & !\pwm_up|sign_deal|call_count2\(0)))), GLOBAL(\clk~combout\), VCC, , 
-- \pwm_up|sign_deal|call_count2[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|connect~regout\,
	datab => \pwm_up|sign_deal|call_count2\(2),
	datac => \pwm_up|sign_deal|ready~regout\,
	datad => \pwm_up|sign_deal|call_count2\(0),
	aclr => GND,
	ena => \pwm_up|sign_deal|call_count2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count2\(0));

-- Location: LC_X11_Y7_N6
\pwm_up|sign_deal|call_count2[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2\(1) = DFFEAS((\pwm_up|sign_deal|call_count2~0_combout\ & (!\pwm_up|sign_deal|call_count2\(2) & (\pwm_up|sign_deal|call_count2\(0) $ (\pwm_up|sign_deal|call_count2\(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \pwm_up|sign_deal|call_count2[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0028",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count2~0_combout\,
	datab => \pwm_up|sign_deal|call_count2\(0),
	datac => \pwm_up|sign_deal|call_count2\(1),
	datad => \pwm_up|sign_deal|call_count2\(2),
	aclr => GND,
	ena => \pwm_up|sign_deal|call_count2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count2\(1));

-- Location: LC_X11_Y7_N9
\pwm_up|sign_deal|call_count2[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count2\(2) = DFFEAS((\pwm_up|sign_deal|call_count2~0_combout\ & ((\pwm_up|sign_deal|call_count2\(2)) # ((\pwm_up|sign_deal|call_count2\(0) & \pwm_up|sign_deal|call_count2\(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \pwm_up|sign_deal|call_count2[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count2~0_combout\,
	datab => \pwm_up|sign_deal|call_count2\(0),
	datac => \pwm_up|sign_deal|call_count2\(1),
	datad => \pwm_up|sign_deal|call_count2\(2),
	aclr => GND,
	ena => \pwm_up|sign_deal|call_count2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count2\(2));

-- Location: LC_X9_Y8_N9
\pwm_up|sign_deal|duan2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|duan2~regout\ = DFFEAS((!\pwm_down|down_deal|rst~regout\ & ((\pwm_up|sign_deal|duan2~regout\) # ((\pwm_up|sign_deal|call_count2\(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5454",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|rst~regout\,
	datab => \pwm_up|sign_deal|duan2~regout\,
	datac => \pwm_up|sign_deal|call_count2\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|duan2~regout\);

-- Location: LC_X9_Y10_N6
\pwm_up|sign_deal|rcvd_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|rcvd_dly\(0) = DFFEAS((((\rcvd~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rcvd~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|rcvd_dly\(0));

-- Location: LC_X9_Y10_N8
\pwm_up|sign_deal|rcvd_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|rcvd_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|rcvd_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|rcvd_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|rcvd_dly\(1));

-- Location: LC_X9_Y10_N9
\pwm_up|sign_deal|rcvd_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|rcvd_dly\(2) = DFFEAS((((\pwm_up|sign_deal|rcvd_dly\(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|sign_deal|rcvd_dly\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|rcvd_dly\(2));

-- Location: LC_X9_Y10_N2
\pwm_up|sign_deal|rcvd_dly[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1[2]~0\ = ((\pwm_up|sign_deal|ready~regout\ & (\pwm_up|sign_deal|rcvd_dly\(2) $ (!L1_rcvd_dly[3]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|rcvd_dly\(2),
	datac => \pwm_up|sign_deal|rcvd_dly\(2),
	datad => \pwm_up|sign_deal|ready~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|call_count1[2]~0\,
	regout => \pwm_up|sign_deal|rcvd_dly\(3));

-- Location: LC_X9_Y9_N2
\pwm_up|sign_deal|Add0~85\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~85_combout\ = ((!\pwm_up|sign_deal|call_count1\(0)))
-- \pwm_up|sign_deal|Add0~87\ = CARRY(((\pwm_up|sign_deal|call_count1\(0))))
-- \pwm_up|sign_deal|Add0~87COUT1_93\ = CARRY(((\pwm_up|sign_deal|call_count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~85_combout\,
	cout0 => \pwm_up|sign_deal|Add0~87\,
	cout1 => \pwm_up|sign_deal|Add0~87COUT1_93\);

-- Location: LC_X10_Y9_N9
\pwm_up|sign_deal|call_count1[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(0) = DFFEAS((!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|Add0~85_combout\ & (\pwm_up|sign_deal|LessThan3~1_combout\ & \pwm_up|sign_deal|call_count1[2]~0\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count1\(15),
	datab => \pwm_up|sign_deal|Add0~85_combout\,
	datac => \pwm_up|sign_deal|LessThan3~1_combout\,
	datad => \pwm_up|sign_deal|call_count1[2]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(0));

-- Location: LC_X9_Y9_N3
\pwm_up|sign_deal|Add0~79\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~79_combout\ = (\pwm_up|sign_deal|call_count1\(1) $ ((\pwm_up|sign_deal|Add0~87\)))
-- \pwm_up|sign_deal|Add0~81\ = CARRY(((!\pwm_up|sign_deal|Add0~87\) # (!\pwm_up|sign_deal|call_count1\(1))))
-- \pwm_up|sign_deal|Add0~81COUT1_94\ = CARRY(((!\pwm_up|sign_deal|Add0~87COUT1_93\) # (!\pwm_up|sign_deal|call_count1\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(1),
	cin0 => \pwm_up|sign_deal|Add0~87\,
	cin1 => \pwm_up|sign_deal|Add0~87COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~79_combout\,
	cout0 => \pwm_up|sign_deal|Add0~81\,
	cout1 => \pwm_up|sign_deal|Add0~81COUT1_94\);

-- Location: LC_X9_Y8_N8
\pwm_up|sign_deal|call_count1[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(1) = DFFEAS((!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & \pwm_up|sign_deal|Add0~79_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count1\(15),
	datab => \pwm_up|sign_deal|LessThan3~1_combout\,
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~79_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(1));

-- Location: LC_X9_Y9_N4
\pwm_up|sign_deal|Add0~73\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~73_combout\ = (\pwm_up|sign_deal|call_count1\(2) $ ((!\pwm_up|sign_deal|Add0~81\)))
-- \pwm_up|sign_deal|Add0~75\ = CARRY(((\pwm_up|sign_deal|call_count1\(2) & !\pwm_up|sign_deal|Add0~81COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(2),
	cin0 => \pwm_up|sign_deal|Add0~81\,
	cin1 => \pwm_up|sign_deal|Add0~81COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~73_combout\,
	cout => \pwm_up|sign_deal|Add0~75\);

-- Location: LC_X9_Y8_N1
\pwm_up|sign_deal|call_count1[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(2) = DFFEAS((\pwm_up|sign_deal|Add0~73_combout\ & (\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & !\pwm_up|sign_deal|call_count1\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|Add0~73_combout\,
	datab => \pwm_up|sign_deal|LessThan3~1_combout\,
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|call_count1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(2));

-- Location: LC_X9_Y9_N5
\pwm_up|sign_deal|Add0~67\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~67_combout\ = (\pwm_up|sign_deal|call_count1\(3) $ ((\pwm_up|sign_deal|Add0~75\)))
-- \pwm_up|sign_deal|Add0~69\ = CARRY(((!\pwm_up|sign_deal|Add0~75\) # (!\pwm_up|sign_deal|call_count1\(3))))
-- \pwm_up|sign_deal|Add0~69COUT1_95\ = CARRY(((!\pwm_up|sign_deal|Add0~75\) # (!\pwm_up|sign_deal|call_count1\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(3),
	cin => \pwm_up|sign_deal|Add0~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~67_combout\,
	cout0 => \pwm_up|sign_deal|Add0~69\,
	cout1 => \pwm_up|sign_deal|Add0~69COUT1_95\);

-- Location: LC_X10_Y9_N8
\pwm_up|sign_deal|call_count1[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(3) = DFFEAS((\pwm_up|sign_deal|Add0~67_combout\ & (!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|LessThan3~1_combout\ & \pwm_up|sign_deal|call_count1[2]~0\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|Add0~67_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|LessThan3~1_combout\,
	datad => \pwm_up|sign_deal|call_count1[2]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(3));

-- Location: LC_X9_Y9_N6
\pwm_up|sign_deal|Add0~61\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~61_combout\ = (\pwm_up|sign_deal|call_count1\(4) $ ((!(!\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~69\) # (\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~69COUT1_95\))))
-- \pwm_up|sign_deal|Add0~63\ = CARRY(((\pwm_up|sign_deal|call_count1\(4) & !\pwm_up|sign_deal|Add0~69\)))
-- \pwm_up|sign_deal|Add0~63COUT1_96\ = CARRY(((\pwm_up|sign_deal|call_count1\(4) & !\pwm_up|sign_deal|Add0~69COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(4),
	cin => \pwm_up|sign_deal|Add0~75\,
	cin0 => \pwm_up|sign_deal|Add0~69\,
	cin1 => \pwm_up|sign_deal|Add0~69COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~61_combout\,
	cout0 => \pwm_up|sign_deal|Add0~63\,
	cout1 => \pwm_up|sign_deal|Add0~63COUT1_96\);

-- Location: LC_X9_Y9_N1
\pwm_up|sign_deal|call_count1[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(4) = DFFEAS((\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & (\pwm_up|sign_deal|Add0~61_combout\ & !\pwm_up|sign_deal|call_count1\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1[2]~0\,
	datac => \pwm_up|sign_deal|Add0~61_combout\,
	datad => \pwm_up|sign_deal|call_count1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(4));

-- Location: LC_X9_Y9_N7
\pwm_up|sign_deal|Add0~55\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~55_combout\ = (\pwm_up|sign_deal|call_count1\(5) $ (((!\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~63\) # (\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~63COUT1_96\))))
-- \pwm_up|sign_deal|Add0~57\ = CARRY(((!\pwm_up|sign_deal|Add0~63\) # (!\pwm_up|sign_deal|call_count1\(5))))
-- \pwm_up|sign_deal|Add0~57COUT1_97\ = CARRY(((!\pwm_up|sign_deal|Add0~63COUT1_96\) # (!\pwm_up|sign_deal|call_count1\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(5),
	cin => \pwm_up|sign_deal|Add0~75\,
	cin0 => \pwm_up|sign_deal|Add0~63\,
	cin1 => \pwm_up|sign_deal|Add0~63COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~55_combout\,
	cout0 => \pwm_up|sign_deal|Add0~57\,
	cout1 => \pwm_up|sign_deal|Add0~57COUT1_97\);

-- Location: LC_X9_Y8_N0
\pwm_up|sign_deal|call_count1[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(5) = DFFEAS((\pwm_up|sign_deal|Add0~55_combout\ & (\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & !\pwm_up|sign_deal|call_count1\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|Add0~55_combout\,
	datab => \pwm_up|sign_deal|LessThan3~1_combout\,
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|call_count1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(5));

-- Location: LC_X9_Y9_N8
\pwm_up|sign_deal|Add0~49\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~49_combout\ = (\pwm_up|sign_deal|call_count1\(6) $ ((!(!\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~57\) # (\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~57COUT1_97\))))
-- \pwm_up|sign_deal|Add0~51\ = CARRY(((\pwm_up|sign_deal|call_count1\(6) & !\pwm_up|sign_deal|Add0~57\)))
-- \pwm_up|sign_deal|Add0~51COUT1_98\ = CARRY(((\pwm_up|sign_deal|call_count1\(6) & !\pwm_up|sign_deal|Add0~57COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(6),
	cin => \pwm_up|sign_deal|Add0~75\,
	cin0 => \pwm_up|sign_deal|Add0~57\,
	cin1 => \pwm_up|sign_deal|Add0~57COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~49_combout\,
	cout0 => \pwm_up|sign_deal|Add0~51\,
	cout1 => \pwm_up|sign_deal|Add0~51COUT1_98\);

-- Location: LC_X9_Y8_N6
\pwm_up|sign_deal|call_count1[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(6) = DFFEAS((!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & \pwm_up|sign_deal|Add0~49_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count1\(15),
	datab => \pwm_up|sign_deal|LessThan3~1_combout\,
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~49_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(6));

-- Location: LC_X9_Y9_N9
\pwm_up|sign_deal|Add0~44\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~44_combout\ = (\pwm_up|sign_deal|call_count1\(7) $ (((!\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~51\) # (\pwm_up|sign_deal|Add0~75\ & \pwm_up|sign_deal|Add0~51COUT1_98\))))
-- \pwm_up|sign_deal|Add0~46\ = CARRY(((!\pwm_up|sign_deal|Add0~51COUT1_98\) # (!\pwm_up|sign_deal|call_count1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(7),
	cin => \pwm_up|sign_deal|Add0~75\,
	cin0 => \pwm_up|sign_deal|Add0~51\,
	cin1 => \pwm_up|sign_deal|Add0~51COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~44_combout\,
	cout => \pwm_up|sign_deal|Add0~46\);

-- Location: LC_X9_Y9_N0
\pwm_up|sign_deal|call_count1[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(7) = DFFEAS((\pwm_up|sign_deal|LessThan3~1_combout\ & (\pwm_up|sign_deal|Add0~44_combout\ & (\pwm_up|sign_deal|call_count1[2]~0\ & !\pwm_up|sign_deal|call_count1\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|Add0~44_combout\,
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|call_count1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(7));

-- Location: LC_X10_Y9_N0
\pwm_up|sign_deal|Add0~6\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~6_combout\ = \pwm_up|sign_deal|call_count1\(8) $ ((((!\pwm_up|sign_deal|Add0~46\))))
-- \pwm_up|sign_deal|Add0~8\ = CARRY((\pwm_up|sign_deal|call_count1\(8) & ((!\pwm_up|sign_deal|Add0~46\))))
-- \pwm_up|sign_deal|Add0~8COUT1_99\ = CARRY((\pwm_up|sign_deal|call_count1\(8) & ((!\pwm_up|sign_deal|Add0~46\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|call_count1\(8),
	cin => \pwm_up|sign_deal|Add0~46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~6_combout\,
	cout0 => \pwm_up|sign_deal|Add0~8\,
	cout1 => \pwm_up|sign_deal|Add0~8COUT1_99\);

-- Location: LC_X10_Y8_N3
\pwm_up|sign_deal|call_count1[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(8) = DFFEAS((\pwm_up|sign_deal|call_count1[2]~0\ & (((\pwm_up|sign_deal|call_count1\(15)) # (\pwm_up|sign_deal|Add0~6_combout\)) # (!\pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(8));

-- Location: LC_X10_Y9_N1
\pwm_up|sign_deal|Add0~11\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~11_combout\ = \pwm_up|sign_deal|call_count1\(9) $ (((((!\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~8\) # (\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~8COUT1_99\)))))
-- \pwm_up|sign_deal|Add0~13\ = CARRY(((!\pwm_up|sign_deal|Add0~8\)) # (!\pwm_up|sign_deal|call_count1\(9)))
-- \pwm_up|sign_deal|Add0~13COUT1_100\ = CARRY(((!\pwm_up|sign_deal|Add0~8COUT1_99\)) # (!\pwm_up|sign_deal|call_count1\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|call_count1\(9),
	cin => \pwm_up|sign_deal|Add0~46\,
	cin0 => \pwm_up|sign_deal|Add0~8\,
	cin1 => \pwm_up|sign_deal|Add0~8COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~11_combout\,
	cout0 => \pwm_up|sign_deal|Add0~13\,
	cout1 => \pwm_up|sign_deal|Add0~13COUT1_100\);

-- Location: LC_X10_Y8_N6
\pwm_up|sign_deal|call_count1[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(9) = DFFEAS((\pwm_up|sign_deal|call_count1[2]~0\ & (((\pwm_up|sign_deal|call_count1\(15)) # (\pwm_up|sign_deal|Add0~11_combout\)) # (!\pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(9));

-- Location: LC_X10_Y9_N2
\pwm_up|sign_deal|Add0~16\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~16_combout\ = (\pwm_up|sign_deal|call_count1\(10) $ ((!(!\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~13\) # (\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~13COUT1_100\))))
-- \pwm_up|sign_deal|Add0~18\ = CARRY(((\pwm_up|sign_deal|call_count1\(10) & !\pwm_up|sign_deal|Add0~13\)))
-- \pwm_up|sign_deal|Add0~18COUT1_101\ = CARRY(((\pwm_up|sign_deal|call_count1\(10) & !\pwm_up|sign_deal|Add0~13COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(10),
	cin => \pwm_up|sign_deal|Add0~46\,
	cin0 => \pwm_up|sign_deal|Add0~13\,
	cin1 => \pwm_up|sign_deal|Add0~13COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~16_combout\,
	cout0 => \pwm_up|sign_deal|Add0~18\,
	cout1 => \pwm_up|sign_deal|Add0~18COUT1_101\);

-- Location: LC_X10_Y8_N7
\pwm_up|sign_deal|call_count1[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(10) = DFFEAS((\pwm_up|sign_deal|LessThan3~1_combout\ & (!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|call_count1[2]~0\ & \pwm_up|sign_deal|Add0~16_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(10));

-- Location: LC_X10_Y9_N3
\pwm_up|sign_deal|Add0~22\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~22_combout\ = (\pwm_up|sign_deal|call_count1\(11) $ (((!\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~18\) # (\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~18COUT1_101\))))
-- \pwm_up|sign_deal|Add0~24\ = CARRY(((!\pwm_up|sign_deal|Add0~18\) # (!\pwm_up|sign_deal|call_count1\(11))))
-- \pwm_up|sign_deal|Add0~24COUT1_102\ = CARRY(((!\pwm_up|sign_deal|Add0~18COUT1_101\) # (!\pwm_up|sign_deal|call_count1\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(11),
	cin => \pwm_up|sign_deal|Add0~46\,
	cin0 => \pwm_up|sign_deal|Add0~18\,
	cin1 => \pwm_up|sign_deal|Add0~18COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~22_combout\,
	cout0 => \pwm_up|sign_deal|Add0~24\,
	cout1 => \pwm_up|sign_deal|Add0~24COUT1_102\);

-- Location: LC_X10_Y8_N1
\pwm_up|sign_deal|call_count1[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(11) = DFFEAS((\pwm_up|sign_deal|call_count1[2]~0\ & (((\pwm_up|sign_deal|call_count1\(15)) # (\pwm_up|sign_deal|Add0~22_combout\)) # (!\pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~22_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(11));

-- Location: LC_X10_Y9_N4
\pwm_up|sign_deal|Add0~27\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~27_combout\ = \pwm_up|sign_deal|call_count1\(12) $ ((((!(!\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~24\) # (\pwm_up|sign_deal|Add0~46\ & \pwm_up|sign_deal|Add0~24COUT1_102\)))))
-- \pwm_up|sign_deal|Add0~29\ = CARRY((\pwm_up|sign_deal|call_count1\(12) & ((!\pwm_up|sign_deal|Add0~24COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|call_count1\(12),
	cin => \pwm_up|sign_deal|Add0~46\,
	cin0 => \pwm_up|sign_deal|Add0~24\,
	cin1 => \pwm_up|sign_deal|Add0~24COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~27_combout\,
	cout => \pwm_up|sign_deal|Add0~29\);

-- Location: LC_X10_Y8_N0
\pwm_up|sign_deal|call_count1[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(12) = DFFEAS((\pwm_up|sign_deal|call_count1[2]~0\ & (!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|Add0~27_combout\ & \pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|call_count1[2]~0\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|Add0~27_combout\,
	datad => \pwm_up|sign_deal|LessThan3~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(12));

-- Location: LC_X10_Y9_N5
\pwm_up|sign_deal|Add0~33\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~33_combout\ = (\pwm_up|sign_deal|call_count1\(13) $ ((\pwm_up|sign_deal|Add0~29\)))
-- \pwm_up|sign_deal|Add0~35\ = CARRY(((!\pwm_up|sign_deal|Add0~29\) # (!\pwm_up|sign_deal|call_count1\(13))))
-- \pwm_up|sign_deal|Add0~35COUT1_103\ = CARRY(((!\pwm_up|sign_deal|Add0~29\) # (!\pwm_up|sign_deal|call_count1\(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(13),
	cin => \pwm_up|sign_deal|Add0~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~33_combout\,
	cout0 => \pwm_up|sign_deal|Add0~35\,
	cout1 => \pwm_up|sign_deal|Add0~35COUT1_103\);

-- Location: LC_X10_Y9_N6
\pwm_up|sign_deal|Add0~39\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~39_combout\ = (\pwm_up|sign_deal|call_count1\(14) $ ((!(!\pwm_up|sign_deal|Add0~29\ & \pwm_up|sign_deal|Add0~35\) # (\pwm_up|sign_deal|Add0~29\ & \pwm_up|sign_deal|Add0~35COUT1_103\))))
-- \pwm_up|sign_deal|Add0~41\ = CARRY(((\pwm_up|sign_deal|call_count1\(14) & !\pwm_up|sign_deal|Add0~35\)))
-- \pwm_up|sign_deal|Add0~41COUT1_104\ = CARRY(((\pwm_up|sign_deal|call_count1\(14) & !\pwm_up|sign_deal|Add0~35COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|call_count1\(14),
	cin => \pwm_up|sign_deal|Add0~29\,
	cin0 => \pwm_up|sign_deal|Add0~35\,
	cin1 => \pwm_up|sign_deal|Add0~35COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~39_combout\,
	cout0 => \pwm_up|sign_deal|Add0~41\,
	cout1 => \pwm_up|sign_deal|Add0~41COUT1_104\);

-- Location: LC_X10_Y8_N2
\pwm_up|sign_deal|call_count1[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(14) = DFFEAS((\pwm_up|sign_deal|call_count1[2]~0\ & (((\pwm_up|sign_deal|call_count1\(15)) # (\pwm_up|sign_deal|Add0~39_combout\)) # (!\pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~39_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(14));

-- Location: LC_X10_Y9_N7
\pwm_up|sign_deal|Add0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|Add0~0_combout\ = (((!\pwm_up|sign_deal|Add0~29\ & \pwm_up|sign_deal|Add0~41\) # (\pwm_up|sign_deal|Add0~29\ & \pwm_up|sign_deal|Add0~41COUT1_104\) $ (\pwm_up|sign_deal|call_count1\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_up|sign_deal|call_count1\(15),
	cin => \pwm_up|sign_deal|Add0~29\,
	cin0 => \pwm_up|sign_deal|Add0~41\,
	cin1 => \pwm_up|sign_deal|Add0~41COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|Add0~0_combout\);

-- Location: LC_X10_Y8_N5
\pwm_up|sign_deal|call_count1[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(15) = DFFEAS((\pwm_up|sign_deal|LessThan3~1_combout\ & (!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|call_count1[2]~0\ & \pwm_up|sign_deal|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(15));

-- Location: LC_X10_Y8_N8
\pwm_up|sign_deal|call_count1[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_count1\(13) = DFFEAS((\pwm_up|sign_deal|LessThan3~1_combout\ & (!\pwm_up|sign_deal|call_count1\(15) & (\pwm_up|sign_deal|call_count1[2]~0\ & \pwm_up|sign_deal|Add0~33_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|LessThan3~1_combout\,
	datab => \pwm_up|sign_deal|call_count1\(15),
	datac => \pwm_up|sign_deal|call_count1[2]~0\,
	datad => \pwm_up|sign_deal|Add0~33_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|call_count1\(13));

-- Location: LC_X10_Y8_N9
\pwm_up|sign_deal|LessThan3~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|LessThan3~0_combout\ = ((!\pwm_up|sign_deal|call_count1\(10) & ((!\pwm_up|sign_deal|call_count1\(8)) # (!\pwm_up|sign_deal|call_count1\(9))))) # (!\pwm_up|sign_deal|call_count1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "373f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|call_count1\(9),
	datab => \pwm_up|sign_deal|call_count1\(11),
	datac => \pwm_up|sign_deal|call_count1\(10),
	datad => \pwm_up|sign_deal|call_count1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|LessThan3~0_combout\);

-- Location: LC_X10_Y8_N4
\pwm_up|sign_deal|LessThan3~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|LessThan3~1_combout\ = ((!\pwm_up|sign_deal|call_count1\(13) & (\pwm_up|sign_deal|LessThan3~0_combout\ & !\pwm_up|sign_deal|call_count1\(12)))) # (!\pwm_up|sign_deal|call_count1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|call_count1\(13),
	datab => \pwm_up|sign_deal|LessThan3~0_combout\,
	datac => \pwm_up|sign_deal|call_count1\(12),
	datad => \pwm_up|sign_deal|call_count1\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|LessThan3~1_combout\);

-- Location: LC_X9_Y8_N5
\pwm_up|sign_deal|duan1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|duan1~regout\ = DFFEAS((!\pwm_down|down_deal|rst~regout\ & (((\pwm_up|sign_deal|duan1~regout\) # (\pwm_up|sign_deal|call_count1\(15))) # (!\pwm_up|sign_deal|LessThan3~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|rst~regout\,
	datab => \pwm_up|sign_deal|LessThan3~1_combout\,
	datac => \pwm_up|sign_deal|duan1~regout\,
	datad => \pwm_up|sign_deal|call_count1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|duan1~regout\);

-- Location: LC_X8_Y5_N6
\pwm_up|sign_deal|call_fault\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|call_fault~combout\ = (((\pwm_up|sign_deal|duan2~regout\) # (\pwm_up|sign_deal|duan1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|sign_deal|duan2~regout\,
	datad => \pwm_up|sign_deal|duan1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|call_fault~combout\);

-- Location: LC_X8_Y8_N3
\pwm_up|up_sign|reg_flt[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector28~7\ = (!\pwm_up|up_sign|sta.000~regout\ & ((\pwm_up|up_sign|Equal0~3_combout\) # ((!\pwm_up|up_sign|reg_flt\(2) & M1_reg_flt[1]))))
-- \pwm_up|up_sign|reg_flt\(1) = DFFEAS(\pwm_up|up_sign|Selector28~7\, GLOBAL(\clk~combout\), VCC, , , \pwm_up|up_sign|reg_flt\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.000~regout\,
	datab => \pwm_up|up_sign|reg_flt\(2),
	datac => \pwm_up|up_sign|reg_flt\(0),
	datad => \pwm_up|up_sign|Equal0~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector28~7\,
	regout => \pwm_up|up_sign|reg_flt\(1));

-- Location: LC_X13_Y2_N1
\pwm_up|up_sign|MSEND_BYTE|Add0~25\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~25_combout\ = ((!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0)))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~27\ = CARRY(((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0))))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~27COUT1_31\ = CARRY(((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~25_combout\,
	cout0 => \pwm_up|up_sign|MSEND_BYTE|Add0~27\,
	cout1 => \pwm_up|up_sign|MSEND_BYTE|Add0~27COUT1_31\);

-- Location: LC_X12_Y2_N2
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|Add0~25_combout\)))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0),
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|Add0~25_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0));

-- Location: LC_X13_Y2_N2
\pwm_up|up_sign|MSEND_BYTE|Add0~10\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~10_combout\ = (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1) $ ((\pwm_up|up_sign|MSEND_BYTE|Add0~27\)))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~12\ = CARRY(((!\pwm_up|up_sign|MSEND_BYTE|Add0~27\) # (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1))))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~12COUT1_32\ = CARRY(((!\pwm_up|up_sign|MSEND_BYTE|Add0~27COUT1_31\) # (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1),
	cin0 => \pwm_up|up_sign|MSEND_BYTE|Add0~27\,
	cin1 => \pwm_up|up_sign|MSEND_BYTE|Add0~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~10_combout\,
	cout0 => \pwm_up|up_sign|MSEND_BYTE|Add0~12\,
	cout1 => \pwm_up|up_sign|MSEND_BYTE|Add0~12COUT1_32\);

-- Location: LC_X13_Y2_N0
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|Add0~10_combout\)))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1),
	datad => \pwm_up|up_sign|MSEND_BYTE|Add0~10_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1));

-- Location: LC_X13_Y2_N3
\pwm_up|up_sign|MSEND_BYTE|Add0~5\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~5_combout\ = \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2) $ ((((!\pwm_up|up_sign|MSEND_BYTE|Add0~12\))))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~7\ = CARRY((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2) & ((!\pwm_up|up_sign|MSEND_BYTE|Add0~12\))))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~7COUT1_33\ = CARRY((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2) & ((!\pwm_up|up_sign|MSEND_BYTE|Add0~12COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2),
	cin0 => \pwm_up|up_sign|MSEND_BYTE|Add0~12\,
	cin1 => \pwm_up|up_sign|MSEND_BYTE|Add0~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~5_combout\,
	cout0 => \pwm_up|up_sign|MSEND_BYTE|Add0~7\,
	cout1 => \pwm_up|up_sign|MSEND_BYTE|Add0~7COUT1_33\);

-- Location: LC_X13_Y2_N8
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((!\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ & \pwm_up|up_sign|MSEND_BYTE|Add0~5_combout\)))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2),
	datab => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|Add0~5_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2));

-- Location: LC_X13_Y2_N4
\pwm_up|up_sign|MSEND_BYTE|Add0~15\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~15_combout\ = \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3) $ ((((\pwm_up|up_sign|MSEND_BYTE|Add0~7\))))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~17\ = CARRY(((!\pwm_up|up_sign|MSEND_BYTE|Add0~7COUT1_33\)) # (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3),
	cin0 => \pwm_up|up_sign|MSEND_BYTE|Add0~7\,
	cin1 => \pwm_up|up_sign|MSEND_BYTE|Add0~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~15_combout\,
	cout => \pwm_up|up_sign|MSEND_BYTE|Add0~17\);

-- Location: LC_X12_Y2_N8
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|Add0~15_combout\))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|Add0~15_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3));

-- Location: LC_X13_Y2_N5
\pwm_up|up_sign|MSEND_BYTE|Add0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~0_combout\ = (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4) $ ((!\pwm_up|up_sign|MSEND_BYTE|Add0~17\)))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~2\ = CARRY(((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4) & !\pwm_up|up_sign|MSEND_BYTE|Add0~17\)))
-- \pwm_up|up_sign|MSEND_BYTE|Add0~2COUT1_34\ = CARRY(((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4) & !\pwm_up|up_sign|MSEND_BYTE|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4),
	cin => \pwm_up|up_sign|MSEND_BYTE|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~0_combout\,
	cout0 => \pwm_up|up_sign|MSEND_BYTE|Add0~2\,
	cout1 => \pwm_up|up_sign|MSEND_BYTE|Add0~2COUT1_34\);

-- Location: LC_X13_Y2_N9
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|Add0~0_combout\))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Add0~0_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4),
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4));

-- Location: LC_X13_Y2_N6
\pwm_up|up_sign|MSEND_BYTE|Add0~20\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Add0~20_combout\ = (((!\pwm_up|up_sign|MSEND_BYTE|Add0~17\ & \pwm_up|up_sign|MSEND_BYTE|Add0~2\) # (\pwm_up|up_sign|MSEND_BYTE|Add0~17\ & \pwm_up|up_sign|MSEND_BYTE|Add0~2COUT1_34\) $ (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5),
	cin => \pwm_up|up_sign|MSEND_BYTE|Add0~17\,
	cin0 => \pwm_up|up_sign|MSEND_BYTE|Add0~2\,
	cin1 => \pwm_up|up_sign|MSEND_BYTE|Add0~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Add0~20_combout\);

-- Location: LC_X12_Y2_N5
\pwm_up|up_sign|MSEND_BYTE|bits_cnt[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (((\pwm_up|up_sign|MSEND_BYTE|Add0~20_combout\ & !\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\)))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5),
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Add0~20_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5));

-- Location: LC_X13_Y2_N7
\pwm_up|up_sign|MSEND_BYTE|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4) & (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1) & !\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(4),
	datac => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(1),
	datad => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\);

-- Location: LC_X12_Y2_N4
\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\ = (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3) & (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0) & (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5) & \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3),
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0),
	datac => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\);

-- Location: LC_X10_Y4_N7
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\ = DFFEAS((((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & !\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\);

-- Location: LC_X10_Y4_N9
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\ = ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\) # ((Q1_cur_sta.S_LD2RSR)))
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR~regout\ = DFFEAS(\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR~regout\);

-- Location: LC_X10_Y4_N8
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND~regout\);

-- Location: LC_X10_Y4_N4
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1~regout\ = DFFEAS((((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_SEND~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1~regout\);

-- Location: LC_X10_Y4_N3
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_1~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\);

-- Location: LC_X10_Y4_N5
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ = DFFEAS((((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\ & \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_CHECK~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_DONE~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\);

-- Location: LC_X8_Y8_N0
\pwm_up|up_sign|sta.101~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.101~0_combout\ = (\pwm_up|up_sign|sta.000~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\)) # (!\pwm_up|up_sign|sta.000~regout\ & (((\pwm_up|up_sign|comb~0\ & !\pwm_up|up_sign|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2272",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|sta.000~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|comb~0\,
	datad => \pwm_up|up_sign|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|sta.101~0_combout\);

-- Location: LC_X9_Y7_N8
\pwm_up|up_sign|Selector28~6\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector28~6_combout\ = (((\pwm_up|up_sign|sta.000~regout\ & \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|sta.000~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector28~6_combout\);

-- Location: LC_X9_Y7_N3
\pwm_up|up_sign|Selector26~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector26~1_combout\ = (\pwm_up|up_sign|reg_flt\(2)) # (((\pwm_up|up_sign|sta.000~regout\) # (!\pwm_up|up_sign|reg_flt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|reg_flt\(2),
	datac => \pwm_up|up_sign|sta.000~regout\,
	datad => \pwm_up|up_sign|reg_flt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector26~1_combout\);

-- Location: LC_X8_Y7_N3
\pwm_up|up_sign|Selector26~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector26~0_combout\ = ((!\pwm_up|up_sign|sta.001~regout\ & (!\pwm_up|up_sign|sta.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|sta.001~regout\,
	datac => \pwm_up|up_sign|sta.100~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector26~0_combout\);

-- Location: LC_X8_Y7_N2
\pwm_up|up_sign|sta.001\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.001~regout\ = DFFEAS((!\pwm_up|up_sign|Selector26~1_combout\ & (\pwm_up|up_sign|Selector26~0_combout\ & ((\pwm_up|up_sign|Selector28~7\) # (\pwm_up|up_sign|Selector28~6_combout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|Selector28~7\,
	datab => \pwm_up|up_sign|Selector28~6_combout\,
	datac => \pwm_up|up_sign|Selector26~1_combout\,
	datad => \pwm_up|up_sign|Selector26~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|sta.001~regout\);

-- Location: LC_X8_Y8_N2
\pwm_up|up_sign|sta.100\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.100~regout\ = DFFEAS((\pwm_up|up_sign|Selector28~7\ & (!\pwm_up|up_sign|sta.001~regout\ & (\pwm_up|up_sign|comb~0\ & !\pwm_up|up_sign|sta.100~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|Selector28~7\,
	datab => \pwm_up|up_sign|sta.001~regout\,
	datac => \pwm_up|up_sign|comb~0\,
	datad => \pwm_up|up_sign|sta.100~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|sta.100~regout\);

-- Location: LC_X8_Y7_N7
\pwm_up|up_sign|sta.010\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.010~regout\ = DFFEAS((!\pwm_up|up_sign|sta.100~regout\ & ((\pwm_up|up_sign|sta.001~regout\) # ((\pwm_up|up_sign|sta.101~0_combout\ & \pwm_up|up_sign|sta.010~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~0_combout\,
	datab => \pwm_up|up_sign|sta.010~regout\,
	datac => \pwm_up|up_sign|sta.100~regout\,
	datad => \pwm_up|up_sign|sta.001~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|sta.010~regout\);

-- Location: LC_X8_Y8_N4
\pwm_up|up_sign|sta.101\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.101~regout\ = DFFEAS((\pwm_up|up_sign|sta.100~regout\) # ((\pwm_up|up_sign|sta.101~regout\ & (\pwm_up|up_sign|sta.101~0_combout\ & !\pwm_up|up_sign|sta.001~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datab => \pwm_up|up_sign|sta.100~regout\,
	datac => \pwm_up|up_sign|sta.101~0_combout\,
	datad => \pwm_up|up_sign|sta.001~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|sta.101~regout\);

-- Location: LC_X8_Y8_N7
\pwm_up|up_sign|sta.110\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data[17]~2\ = (\pwm_up|up_sign|Selector28~7\) # ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|sta.101~regout\) # (M1_sta.110))))
-- \pwm_up|up_sign|sta.110~regout\ = DFFEAS(\pwm_up|up_sign|send_data[17]~2\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\, \pwm_up|up_sign|sta.101~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|sta.101~regout\,
	datad => \pwm_up|up_sign|Selector28~7\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|send_data[17]~2\,
	regout => \pwm_up|up_sign|sta.110~regout\);

-- Location: LC_X8_Y8_N5
\pwm_up|up_sign|sta.111\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector25~0\ = (\pwm_up|up_sign|sta.000~regout\ & (\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|sta.010~regout\) # (M1_sta.111)))) # (!\pwm_up|up_sign|sta.000~regout\ & ((\pwm_up|up_sign|sta.010~regout\) # 
-- ((M1_sta.111))))
-- \pwm_up|up_sign|sta.111~regout\ = DFFEAS(\pwm_up|up_sign|Selector25~0\, GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\, \pwm_up|up_sign|sta.110~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc54",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.000~regout\,
	datab => \pwm_up|up_sign|sta.010~regout\,
	datac => \pwm_up|up_sign|sta.110~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => VCC,
	ena => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector25~0\,
	regout => \pwm_up|up_sign|sta.111~regout\);

-- Location: LC_X8_Y8_N6
\pwm_up|up_sign|sta.000\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|sta.000~regout\ = DFFEAS((!\pwm_up|up_sign|Selector25~0\ & ((\pwm_up|up_sign|sta.000~regout\) # ((\pwm_up|up_sign|Equal0~3_combout\) # (!\pwm_up|up_sign|comb~0\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.000~regout\,
	datab => \pwm_up|up_sign|Equal0~3_combout\,
	datac => \pwm_up|up_sign|comb~0\,
	datad => \pwm_up|up_sign|Selector25~0\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|sta.000~regout\);

-- Location: LC_X8_Y7_N0
\pwm_up|up_sign|Selector0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector0~0_combout\ = (\pwm_up|up_sign|sta.110~regout\) # ((\pwm_up|up_sign|send_start~regout\ & ((\pwm_up|up_sign|sta.010~regout\) # (\pwm_up|up_sign|sta.101~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|send_start~regout\,
	datab => \pwm_up|up_sign|sta.110~regout\,
	datac => \pwm_up|up_sign|sta.010~regout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector0~0_combout\);

-- Location: LC_X8_Y7_N6
\pwm_up|up_sign|send_start\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_start~regout\ = DFFEAS(((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|sta.111~regout\) # (\pwm_up|up_sign|Selector0~0_combout\)))) # (!\pwm_up|up_sign|Selector26~0_combout\), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0eff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.111~regout\,
	datab => \pwm_up|up_sign|Selector0~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datad => \pwm_up|up_sign|Selector26~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_start~regout\);

-- Location: LC_X9_Y6_N7
\pwm_up|up_sign|MSEND_BYTE|Selector0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\) # ((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\ & !\pwm_up|up_sign|send_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\);

-- Location: LC_X9_Y6_N9
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\ = DFFEAS((((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\);

-- Location: LC_X9_Y6_N5
\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ = DFFEAS((((\pwm_up|up_sign|send_start~regout\ & !\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\);

-- Location: LC_X9_Y6_N2
\pwm_up|up_sign|MSEND_BYTE|rsr~2\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\ = (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\);

-- Location: LC_X9_Y6_N0
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\ = (\pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\) # ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\) # ((!\pwm_up|up_sign|send_start~regout\ & !\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|nxt_sta.S_SEND\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\);

-- Location: LC_X10_Y7_N0
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0) = DFFEAS(((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0));

-- Location: LC_X10_Y7_N9
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0),
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1));

-- Location: LC_X10_Y7_N4
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1) & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2));

-- Location: LC_X10_Y7_N7
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3));

-- Location: LC_X10_Y7_N8
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3) & (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datab => \pwm_up|up_sign|send_start~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3),
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4));

-- Location: LC_X10_Y7_N1
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5));

-- Location: LC_X10_Y7_N2
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5),
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6));

-- Location: LC_X10_Y7_N3
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6) & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7));

-- Location: LC_X10_Y7_N5
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8));

-- Location: LC_X12_Y2_N6
\pwm_up|up_sign|MSEND_BYTE|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ = (\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3) & (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0) & (!\pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5) & \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(3),
	datab => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(0),
	datac => \pwm_up|up_sign|MSEND_BYTE|bits_cnt\(5),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\);

-- Location: LC_X9_Y7_N1
\pwm_up|up_sign|send_data[17]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(17) = DFFEAS(((!\pwm_up|up_sign|sta.101~regout\ & ((\pwm_up|up_sign|reg_flt\(2)) # (!\pwm_up|up_sign|reg_flt\(1))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|send_data[17]~2\, VCC, , , 
-- \pwm_up|up_sign|sta.110~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|reg_flt\(2),
	datab => \pwm_up|up_sign|reg_flt\(1),
	datac => VCC,
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(17));

-- Location: LC_X10_Y5_N9
\pwm_up|up_sign|send_data[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(13) = DFFEAS((\pwm_up|sign_deal|t3|count\(2) & (!\pwm_up|up_sign|sta.000~regout\ & (!\pwm_up|sign_deal|t3|count\(1) & !\pwm_up|sign_deal|t3|count\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t3|count\(2),
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|sign_deal|t3|count\(1),
	datad => \pwm_up|sign_deal|t3|count\(0),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(13));

-- Location: LC_X10_Y5_N2
\pwm_up|up_sign|send_data[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(12) = DFFEAS((!\pwm_up|sign_deal|t4|count\(0) & (!\pwm_up|up_sign|sta.000~regout\ & (!\pwm_up|sign_deal|t4|count\(1) & \pwm_up|sign_deal|t4|count\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t4|count\(0),
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|sign_deal|t4|count\(1),
	datad => \pwm_up|sign_deal|t4|count\(2),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(12));

-- Location: LC_X1_Y10_N5
\ad|ad_time[0]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(0) = DFFEAS((!\ad|ad_time\(0)), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[0]~19\ = CARRY((\ad|ad_time\(0)))
-- \ad|ad_time[0]~19COUT1_23\ = CARRY((\ad|ad_time\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(0),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(0),
	cout0 => \ad|ad_time[0]~19\,
	cout1 => \ad|ad_time[0]~19COUT1_23\);

-- Location: LC_X1_Y10_N6
\ad|ad_time[1]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(1) = DFFEAS(\ad|ad_time\(1) $ ((((\ad|ad_time[0]~19\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[1]~21\ = CARRY(((!\ad|ad_time[0]~19\)) # (!\ad|ad_time\(1)))
-- \ad|ad_time[1]~21COUT1_24\ = CARRY(((!\ad|ad_time[0]~19COUT1_23\)) # (!\ad|ad_time\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(1),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin0 => \ad|ad_time[0]~19\,
	cin1 => \ad|ad_time[0]~19COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(1),
	cout0 => \ad|ad_time[1]~21\,
	cout1 => \ad|ad_time[1]~21COUT1_24\);

-- Location: LC_X1_Y10_N7
\ad|ad_time[2]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(2) = DFFEAS((\ad|ad_time\(2) $ ((!\ad|ad_time[1]~21\))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[2]~17\ = CARRY(((\ad|ad_time\(2) & !\ad|ad_time[1]~21\)))
-- \ad|ad_time[2]~17COUT1_25\ = CARRY(((\ad|ad_time\(2) & !\ad|ad_time[1]~21COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_time\(2),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin0 => \ad|ad_time[1]~21\,
	cin1 => \ad|ad_time[1]~21COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(2),
	cout0 => \ad|ad_time[2]~17\,
	cout1 => \ad|ad_time[2]~17COUT1_25\);

-- Location: LC_X1_Y10_N8
\ad|ad_time[3]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(3) = DFFEAS(\ad|ad_time\(3) $ ((((\ad|ad_time[2]~17\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[3]~15\ = CARRY(((!\ad|ad_time[2]~17\)) # (!\ad|ad_time\(3)))
-- \ad|ad_time[3]~15COUT1_26\ = CARRY(((!\ad|ad_time[2]~17COUT1_25\)) # (!\ad|ad_time\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(3),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin0 => \ad|ad_time[2]~17\,
	cin1 => \ad|ad_time[2]~17COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(3),
	cout0 => \ad|ad_time[3]~15\,
	cout1 => \ad|ad_time[3]~15COUT1_26\);

-- Location: LC_X1_Y10_N9
\ad|ad_time[4]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(4) = DFFEAS((\ad|ad_time\(4) $ ((!\ad|ad_time[3]~15\))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[4]~11\ = CARRY(((\ad|ad_time\(4) & !\ad|ad_time[3]~15COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_time\(4),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin0 => \ad|ad_time[3]~15\,
	cin1 => \ad|ad_time[3]~15COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(4),
	cout => \ad|ad_time[4]~11\);

-- Location: LC_X2_Y10_N0
\ad|ad_time[5]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(5) = DFFEAS((\ad|ad_time\(5) $ ((\ad|ad_time[4]~11\))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[5]~13\ = CARRY(((!\ad|ad_time[4]~11\) # (!\ad|ad_time\(5))))
-- \ad|ad_time[5]~13COUT1_27\ = CARRY(((!\ad|ad_time[4]~11\) # (!\ad|ad_time\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_time\(5),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[4]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(5),
	cout0 => \ad|ad_time[5]~13\,
	cout1 => \ad|ad_time[5]~13COUT1_27\);

-- Location: LC_X2_Y10_N1
\ad|ad_time[6]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(6) = DFFEAS((\ad|ad_time\(6) $ ((!(!\ad|ad_time[4]~11\ & \ad|ad_time[5]~13\) # (\ad|ad_time[4]~11\ & \ad|ad_time[5]~13COUT1_27\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[6]~9\ = CARRY(((\ad|ad_time\(6) & !\ad|ad_time[5]~13\)))
-- \ad|ad_time[6]~9COUT1_28\ = CARRY(((\ad|ad_time\(6) & !\ad|ad_time[5]~13COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_time\(6),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[4]~11\,
	cin0 => \ad|ad_time[5]~13\,
	cin1 => \ad|ad_time[5]~13COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(6),
	cout0 => \ad|ad_time[6]~9\,
	cout1 => \ad|ad_time[6]~9COUT1_28\);

-- Location: LC_X2_Y10_N2
\ad|ad_time[7]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(7) = DFFEAS((\ad|ad_time\(7) $ (((!\ad|ad_time[4]~11\ & \ad|ad_time[6]~9\) # (\ad|ad_time[4]~11\ & \ad|ad_time[6]~9COUT1_28\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[7]~7\ = CARRY(((!\ad|ad_time[6]~9\) # (!\ad|ad_time\(7))))
-- \ad|ad_time[7]~7COUT1_29\ = CARRY(((!\ad|ad_time[6]~9COUT1_28\) # (!\ad|ad_time\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_time\(7),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[4]~11\,
	cin0 => \ad|ad_time[6]~9\,
	cin1 => \ad|ad_time[6]~9COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(7),
	cout0 => \ad|ad_time[7]~7\,
	cout1 => \ad|ad_time[7]~7COUT1_29\);

-- Location: LC_X2_Y10_N3
\ad|ad_time[8]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(8) = DFFEAS(\ad|ad_time\(8) $ ((((!(!\ad|ad_time[4]~11\ & \ad|ad_time[7]~7\) # (\ad|ad_time[4]~11\ & \ad|ad_time[7]~7COUT1_29\))))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[8]~5\ = CARRY((\ad|ad_time\(8) & ((!\ad|ad_time[7]~7\))))
-- \ad|ad_time[8]~5COUT1_30\ = CARRY((\ad|ad_time\(8) & ((!\ad|ad_time[7]~7COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(8),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[4]~11\,
	cin0 => \ad|ad_time[7]~7\,
	cin1 => \ad|ad_time[7]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(8),
	cout0 => \ad|ad_time[8]~5\,
	cout1 => \ad|ad_time[8]~5COUT1_30\);

-- Location: LC_X2_Y10_N4
\ad|ad_time[9]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(9) = DFFEAS(\ad|ad_time\(9) $ (((((!\ad|ad_time[4]~11\ & \ad|ad_time[8]~5\) # (\ad|ad_time[4]~11\ & \ad|ad_time[8]~5COUT1_30\))))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )
-- \ad|ad_time[9]~3\ = CARRY(((!\ad|ad_time[8]~5COUT1_30\)) # (!\ad|ad_time\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(9),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[4]~11\,
	cin0 => \ad|ad_time[8]~5\,
	cin1 => \ad|ad_time[8]~5COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(9),
	cout => \ad|ad_time[9]~3\);

-- Location: LC_X1_Y10_N0
\ad|always5~1\ : maxii_lcell
-- Equation(s):
-- \ad|always5~1_combout\ = (\ad|ad_time\(2) & ((\ad|ad_time\(1)) # ((\ad|ad_time\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(1),
	datab => \ad|ad_time\(2),
	datac => \ad|ad_time\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|always5~1_combout\);

-- Location: LC_X1_Y10_N1
\ad|always5~0\ : maxii_lcell
-- Equation(s):
-- \ad|always5~0_combout\ = (((\ad|ad_time\(5) & \ad|ad_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|ad_time\(5),
	datad => \ad|ad_time\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|always5~0_combout\);

-- Location: LC_X1_Y10_N2
\ad|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan0~0_combout\ = (\ad|Equal0~2_combout\ & (((!\ad|ad_time\(3) & !\ad|always5~1_combout\)) # (!\ad|always5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(3),
	datab => \ad|always5~1_combout\,
	datac => \ad|Equal0~2_combout\,
	datad => \ad|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan0~0_combout\);

-- Location: LC_X2_Y10_N5
\ad|ad_time[10]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_time\(10) = DFFEAS(\ad|ad_time\(10) $ ((((!\ad|ad_time[9]~3\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_time\(10),
	aclr => GND,
	sclr => \ad|LessThan0~1_combout\,
	cin => \ad|ad_time[9]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_time\(10));

-- Location: LC_X2_Y10_N7
\ad|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan0~1_combout\ = (\ad|ad_time\(10) & ((\ad|ad_time\(9)) # ((!\ad|LessThan0~0_combout\ & \ad|ad_time\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(9),
	datab => \ad|LessThan0~0_combout\,
	datac => \ad|ad_time\(10),
	datad => \ad|ad_time\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan0~1_combout\);

-- Location: LC_X1_Y8_N9
\ad|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \ad|Equal0~2_combout\ = (!\ad|ad_time\(6) & (((!\ad|ad_time\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(6),
	datac => \ad|ad_time\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal0~2_combout\);

-- Location: LC_X1_Y10_N3
\ad|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \ad|Equal0~3_combout\ = (!\ad|ad_time\(1) & (!\ad|ad_time\(2) & (!\ad|ad_time\(0) & !\ad|ad_time\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(1),
	datab => \ad|ad_time\(2),
	datac => \ad|ad_time\(0),
	datad => \ad|ad_time\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal0~3_combout\);

-- Location: LC_X1_Y8_N7
\ad|LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan1~0_combout\ = (\ad|ad_time\(5) & (((\ad|ad_time\(4)) # (!\ad|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(5),
	datac => \ad|Equal0~3_combout\,
	datad => \ad|ad_time\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan1~0_combout\);

-- Location: LC_X2_Y10_N6
\ad|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \ad|Equal0~4_combout\ = (((\ad|ad_time\(9) & \ad|ad_time\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|ad_time\(9),
	datad => \ad|ad_time\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal0~4_combout\);

-- Location: LC_X1_Y8_N2
\ad|LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan1~1_combout\ = (\ad|ad_time\(10)) # ((\ad|Equal0~4_combout\ & ((\ad|LessThan1~0_combout\) # (!\ad|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Equal0~2_combout\,
	datab => \ad|ad_time\(10),
	datac => \ad|LessThan1~0_combout\,
	datad => \ad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan1~1_combout\);

-- Location: LC_X4_Y6_N7
\ad|sta[0]\ : maxii_lcell
-- Equation(s):
-- \ad|sta\(0) = DFFEAS(((\ad|LessThan1~1_combout\ & ((!\ad|sta[0]~0_combout\) # (!\ad|sta\(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|LessThan1~1_combout\,
	datac => \ad|sta\(0),
	datad => \ad|sta[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|sta\(0));

-- Location: LC_X2_Y8_N9
\ad|sta[0]~0\ : maxii_lcell
-- Equation(s):
-- \ad|sta[0]~0_combout\ = (((!\ad|sta\(0)) # (!\ad|sta\(1))) # (!\ad|sta\(3))) # (!\ad|sta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|sta\(3),
	datac => \ad|sta\(1),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|sta[0]~0_combout\);

-- Location: LC_X4_Y6_N5
\ad|sta[1]\ : maxii_lcell
-- Equation(s):
-- \ad|sta\(1) = DFFEAS((\ad|LessThan1~1_combout\ & ((\ad|sta\(1) $ (\ad|sta\(0))) # (!\ad|sta[0]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|sta[0]~0_combout\,
	datac => \ad|sta\(0),
	datad => \ad|LessThan1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|sta\(1));

-- Location: LC_X4_Y8_N6
\ad|Add1~1\ : maxii_lcell
-- Equation(s):
-- \ad|Add1~1_combout\ = ((\ad|sta\(1) & (\ad|sta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|sta\(1),
	datac => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add1~1_combout\);

-- Location: LC_X4_Y6_N9
\ad|sta[2]\ : maxii_lcell
-- Equation(s):
-- \ad|sta\(2) = DFFEAS((\ad|LessThan1~1_combout\ & ((\ad|Add1~1_combout\ $ (\ad|sta\(2))) # (!\ad|sta[0]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add1~1_combout\,
	datab => \ad|sta\(2),
	datac => \ad|LessThan1~1_combout\,
	datad => \ad|sta[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|sta\(2));

-- Location: LC_X2_Y8_N8
\ad|Add1~0\ : maxii_lcell
-- Equation(s):
-- \ad|Add1~0_combout\ = (\ad|sta\(2) & (((\ad|sta\(1) & \ad|sta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datac => \ad|sta\(1),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add1~0_combout\);

-- Location: LC_X2_Y8_N2
\ad|sta[3]\ : maxii_lcell
-- Equation(s):
-- \ad|sta\(3) = DFFEAS((\ad|LessThan1~1_combout\ & ((\ad|Add1~0_combout\ $ (\ad|sta\(3))) # (!\ad|sta[0]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add1~0_combout\,
	datab => \ad|sta\(3),
	datac => \ad|sta[0]~0_combout\,
	datad => \ad|LessThan1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|sta\(3));

-- Location: LC_X7_Y7_N7
\ad|Equal1~1\ : maxii_lcell
-- Equation(s):
-- \ad|Equal1~1_combout\ = (((!\ad|sta\(2) & !\ad|sta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|sta\(2),
	datad => \ad|sta\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal1~1_combout\);

-- Location: LC_X8_Y6_N4
\ad|Add2~5\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~5_combout\ = ((\ad|sta\(1) & (\ad|sta\(2) & \ad|adc_sum\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|sta\(1),
	datac => \ad|sta\(2),
	datad => \ad|adc_sum\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~5_combout\);

-- Location: LC_X7_Y7_N9
\ad|Add2~6\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~6_combout\ = ((\ad|adc_sum\(13)) # ((\ad|sta\(2) & \ad|sta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datac => \ad|adc_sum\(13),
	datad => \ad|sta\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~6_combout\);

-- Location: LC_X7_Y7_N4
\ad|adc_sum[3]~0\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum[3]~0_combout\ = (((\ad|sta\(2)) # (\ad|sta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|sta\(2),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_sum[3]~0_combout\);

-- Location: LC_X4_Y6_N0
\ad|Add2~21\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~21_combout\ = ((\ad|sta\(2)) # ((\ad|sta\(0) & \ad|sta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|sta\(0),
	datac => \ad|sta\(1),
	datad => \ad|sta\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~21_combout\);

-- Location: LC_X4_Y6_N4
\ad|Add2~22\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~22_combout\ = (((\ad|sta\(1) & !\ad|sta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|sta\(1),
	datad => \ad|sta\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~22_combout\);

-- Location: LC_X1_Y8_N5
\ad|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \ad|Equal0~6_combout\ = (\ad|Equal0~3_combout\ & (!\ad|ad_time\(7) & (!\ad|ad_time\(6) & !\ad|ad_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Equal0~3_combout\,
	datab => \ad|ad_time\(7),
	datac => \ad|ad_time\(6),
	datad => \ad|ad_time\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal0~6_combout\);

-- Location: LC_X1_Y8_N0
\ad|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \ad|Equal0~5_combout\ = (\ad|ad_time\(5) & (!\ad|ad_time\(10) & (\ad|Equal0~6_combout\ & \ad|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(5),
	datab => \ad|ad_time\(10),
	datac => \ad|Equal0~6_combout\,
	datad => \ad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal0~5_combout\);

-- Location: LC_X6_Y7_N2
\ad|adc_data3[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux16~2\ = ((\ad|sta\(0) & ((B1_adc_data3[10]))) # (!\ad|sta\(0) & (\ad|adc_data2\(10))))
-- \ad|adc_data3\(10) = DFFEAS(\ad|Mux16~2\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|adc_data2\(10),
	datac => \ad|adc_data2\(10),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux16~2\,
	regout => \ad|adc_data3\(10));

-- Location: LC_X7_Y7_N3
\ad|adc_data1[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~32\ = (\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\) # ((\ad|Add2~31_combout\)))) # (!\ad|Add2~21_combout\ & (!\ad|Add2~22_combout\ & (B1_adc_data1[10])))
-- \ad|adc_data1\(10) = DFFEAS(\ad|Add2~32\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_out\(10),
	datad => \ad|Add2~31_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~32\,
	regout => \ad|adc_data1\(10));

-- Location: LC_X7_Y7_N5
\ad|adc_data2[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~33\ = (\ad|Add2~22_combout\ & ((\ad|Add2~32\ & (\ad|adc_data3\(10))) # (!\ad|Add2~32\ & ((B1_adc_data2[10]))))) # (!\ad|Add2~22_combout\ & (((\ad|Add2~32\))))
-- \ad|adc_data2\(10) = DFFEAS(\ad|Add2~33\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data3\(10),
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_data1\(10),
	datad => \ad|Add2~32\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~33\,
	regout => \ad|adc_data2\(10));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ad_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ad_in,
	combout => \ad_in~combout\);

-- Location: LC_X1_Y10_N4
\ad|always5~2\ : maxii_lcell
-- Equation(s):
-- \ad|always5~2_combout\ = (\ad|ad_time\(6)) # ((\ad|ad_time\(3) & (\ad|always5~0_combout\ & \ad|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(3),
	datab => \ad|always5~0_combout\,
	datac => \ad|always5~1_combout\,
	datad => \ad|ad_time\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|always5~2_combout\);

-- Location: LC_X2_Y10_N8
\ad|always5~3\ : maxii_lcell
-- Equation(s):
-- \ad|always5~3_combout\ = (\ad|ad_time\(9) & ((\ad|ad_time\(8)) # ((\ad|always5~2_combout\ & \ad|ad_time\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(8),
	datab => \ad|always5~2_combout\,
	datac => \ad|ad_time\(9),
	datad => \ad|ad_time\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|always5~3_combout\);

-- Location: LC_X2_Y10_N9
\ad|always5~4\ : maxii_lcell
-- Equation(s):
-- \ad|always5~4_combout\ = (!\ad|ad_time\(9) & (((!\ad|ad_time\(5) & !\ad|ad_time\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|ad_time\(9),
	datac => \ad|ad_time\(5),
	datad => \ad|ad_time\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|always5~4_combout\);

-- Location: LC_X1_Y8_N8
\ad|cs_n\ : maxii_lcell
-- Equation(s):
-- \ad|cs_n~regout\ = DFFEAS((\ad|always5~3_combout\) # ((\ad|ad_time\(10)) # ((\ad|Equal0~6_combout\ & \ad|always5~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|always5~3_combout\,
	datab => \ad|ad_time\(10),
	datac => \ad|Equal0~6_combout\,
	datad => \ad|always5~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|cs_n~regout\);

-- Location: LC_X8_Y10_N4
\ad|cs_n~_wirecell\ : maxii_lcell
-- Equation(s):
-- \ad|cs_n~_wirecell_combout\ = (((!\ad|cs_n~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|cs_n~_wirecell_combout\);

-- Location: LC_X8_Y10_N3
\ad|ad_count[4]~2\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count[4]~2_combout\ = ((\ad|ad_count\(4)) # ((\ad|cs_n~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|ad_count\(4),
	datad => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|ad_count[4]~2_combout\);

-- Location: LC_X7_Y10_N2
\ad|clk_div[0]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(0) = DFFEAS(((!\ad|clk_div\(0))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )
-- \ad|clk_div[0]~5\ = CARRY(((\ad|clk_div\(0))))
-- \ad|clk_div[0]~5COUT1_15\ = CARRY(((\ad|clk_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|clk_div\(0),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(0),
	cout0 => \ad|clk_div[0]~5\,
	cout1 => \ad|clk_div[0]~5COUT1_15\);

-- Location: LC_X7_Y10_N3
\ad|clk_div[1]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(1) = DFFEAS(\ad|clk_div\(1) $ ((((\ad|clk_div[0]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )
-- \ad|clk_div[1]~7\ = CARRY(((!\ad|clk_div[0]~5\)) # (!\ad|clk_div\(1)))
-- \ad|clk_div[1]~7COUT1_16\ = CARRY(((!\ad|clk_div[0]~5COUT1_15\)) # (!\ad|clk_div\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|clk_div\(1),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	cin0 => \ad|clk_div[0]~5\,
	cin1 => \ad|clk_div[0]~5COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(1),
	cout0 => \ad|clk_div[1]~7\,
	cout1 => \ad|clk_div[1]~7COUT1_16\);

-- Location: LC_X7_Y10_N4
\ad|clk_div[2]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(2) = DFFEAS(\ad|clk_div\(2) $ ((((!\ad|clk_div[1]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )
-- \ad|clk_div[2]~3\ = CARRY((\ad|clk_div\(2) & ((!\ad|clk_div[1]~7COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|clk_div\(2),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	cin0 => \ad|clk_div[1]~7\,
	cin1 => \ad|clk_div[1]~7COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(2),
	cout => \ad|clk_div[2]~3\);

-- Location: LC_X7_Y10_N5
\ad|clk_div[3]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(3) = DFFEAS(\ad|clk_div\(3) $ ((((\ad|clk_div[2]~3\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )
-- \ad|clk_div[3]~9\ = CARRY(((!\ad|clk_div[2]~3\)) # (!\ad|clk_div\(3)))
-- \ad|clk_div[3]~9COUT1_17\ = CARRY(((!\ad|clk_div[2]~3\)) # (!\ad|clk_div\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|clk_div\(3),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	cin => \ad|clk_div[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(3),
	cout0 => \ad|clk_div[3]~9\,
	cout1 => \ad|clk_div[3]~9COUT1_17\);

-- Location: LC_X7_Y10_N0
\ad|clk_div[2]~12\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div[2]~12_combout\ = (!\ad|clk_div\(3) & (((!\ad|clk_div\(1)) # (!\ad|clk_div\(0))) # (!\ad|clk_div\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|clk_div\(2),
	datab => \ad|clk_div\(0),
	datac => \ad|clk_div\(3),
	datad => \ad|clk_div\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|clk_div[2]~12_combout\);

-- Location: LC_X7_Y10_N6
\ad|clk_div[4]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(4) = DFFEAS(\ad|clk_div\(4) $ ((((!(!\ad|clk_div[2]~3\ & \ad|clk_div[3]~9\) # (\ad|clk_div[2]~3\ & \ad|clk_div[3]~9COUT1_17\))))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )
-- \ad|clk_div[4]~1\ = CARRY((\ad|clk_div\(4) & ((!\ad|clk_div[3]~9\))))
-- \ad|clk_div[4]~1COUT1_18\ = CARRY((\ad|clk_div\(4) & ((!\ad|clk_div[3]~9COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|clk_div\(4),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	cin => \ad|clk_div[2]~3\,
	cin0 => \ad|clk_div[3]~9\,
	cin1 => \ad|clk_div[3]~9COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(4),
	cout0 => \ad|clk_div[4]~1\,
	cout1 => \ad|clk_div[4]~1COUT1_18\);

-- Location: LC_X7_Y10_N7
\ad|clk_div[5]\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div\(5) = DFFEAS((\ad|clk_div\(5) $ (((!\ad|clk_div[2]~3\ & \ad|clk_div[4]~1\) # (\ad|clk_div[2]~3\ & \ad|clk_div[4]~1COUT1_18\)))), GLOBAL(\clk~combout\), VCC, , , , , \ad|clk_div[2]~13_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|clk_div\(5),
	aclr => GND,
	sclr => \ad|clk_div[2]~13_combout\,
	cin => \ad|clk_div[2]~3\,
	cin0 => \ad|clk_div[4]~1\,
	cin1 => \ad|clk_div[4]~1COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|clk_div\(5));

-- Location: LC_X8_Y10_N0
\ad|clk_div[2]~13\ : maxii_lcell
-- Equation(s):
-- \ad|clk_div[2]~13_combout\ = (\ad|cs_n~regout\) # ((\ad|clk_div\(5) & ((\ad|clk_div\(4)) # (!\ad|clk_div[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|clk_div[2]~12_combout\,
	datab => \ad|cs_n~regout\,
	datac => \ad|clk_div\(4),
	datad => \ad|clk_div\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|clk_div[2]~13_combout\);

-- Location: LC_X7_Y10_N8
\ad|Equal2~0\ : maxii_lcell
-- Equation(s):
-- \ad|Equal2~0_combout\ = ((\ad|clk_div\(0) & (!\ad|clk_div\(3) & \ad|clk_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|clk_div\(0),
	datac => \ad|clk_div\(3),
	datad => \ad|clk_div\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal2~0_combout\);

-- Location: LC_X7_Y10_N9
\ad|Equal3~0\ : maxii_lcell
-- Equation(s):
-- \ad|Equal3~0_combout\ = (((\ad|clk_div\(4)) # (!\ad|Equal2~0_combout\)) # (!\ad|clk_div\(5))) # (!\ad|clk_div\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|clk_div\(2),
	datab => \ad|clk_div\(5),
	datac => \ad|clk_div\(4),
	datad => \ad|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal3~0_combout\);

-- Location: LC_X8_Y10_N1
\ad|ad_count[4]~3\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count[4]~3_combout\ = (((\ad|cs_n~regout\) # (!\ad|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ad|Equal3~0_combout\,
	datad => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|ad_count[4]~3_combout\);

-- Location: LC_X8_Y10_N5
\ad|ad_count[0]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count\(0) = DFFEAS((!\ad|ad_count\(0)), GLOBAL(\clk~combout\), VCC, , \ad|ad_count[4]~3_combout\, \~GND~combout\, , , \ad|ad_count[4]~2_combout\)
-- \ad|ad_count[0]~11\ = CARRY((\ad|ad_count\(0)))
-- \ad|ad_count[0]~11COUT1_13\ = CARRY((\ad|ad_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_count\(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ad|ad_count[4]~2_combout\,
	ena => \ad|ad_count[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_count\(0),
	cout0 => \ad|ad_count[0]~11\,
	cout1 => \ad|ad_count[0]~11COUT1_13\);

-- Location: LC_X8_Y10_N6
\ad|ad_count[1]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count\(1) = DFFEAS(\ad|ad_count\(1) $ ((((\ad|ad_count[0]~11\)))), GLOBAL(\clk~combout\), VCC, , \ad|ad_count[4]~3_combout\, \~GND~combout\, , , \ad|ad_count[4]~2_combout\)
-- \ad|ad_count[1]~9\ = CARRY(((!\ad|ad_count[0]~11\)) # (!\ad|ad_count\(1)))
-- \ad|ad_count[1]~9COUT1_14\ = CARRY(((!\ad|ad_count[0]~11COUT1_13\)) # (!\ad|ad_count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_count\(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ad|ad_count[4]~2_combout\,
	ena => \ad|ad_count[4]~3_combout\,
	cin0 => \ad|ad_count[0]~11\,
	cin1 => \ad|ad_count[0]~11COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_count\(1),
	cout0 => \ad|ad_count[1]~9\,
	cout1 => \ad|ad_count[1]~9COUT1_14\);

-- Location: LC_X8_Y10_N7
\ad|ad_count[2]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count\(2) = DFFEAS((\ad|ad_count\(2) $ ((!\ad|ad_count[1]~9\))), GLOBAL(\clk~combout\), VCC, , \ad|ad_count[4]~3_combout\, \~GND~combout\, , , \ad|ad_count[4]~2_combout\)
-- \ad|ad_count[2]~7\ = CARRY(((\ad|ad_count\(2) & !\ad|ad_count[1]~9\)))
-- \ad|ad_count[2]~7COUT1_15\ = CARRY(((\ad|ad_count\(2) & !\ad|ad_count[1]~9COUT1_14\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|ad_count\(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ad|ad_count[4]~2_combout\,
	ena => \ad|ad_count[4]~3_combout\,
	cin0 => \ad|ad_count[1]~9\,
	cin1 => \ad|ad_count[1]~9COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_count\(2),
	cout0 => \ad|ad_count[2]~7\,
	cout1 => \ad|ad_count[2]~7COUT1_15\);

-- Location: LC_X8_Y10_N8
\ad|ad_count[3]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count\(3) = DFFEAS(\ad|ad_count\(3) $ ((((\ad|ad_count[2]~7\)))), GLOBAL(\clk~combout\), VCC, , \ad|ad_count[4]~3_combout\, \~GND~combout\, , , \ad|ad_count[4]~2_combout\)
-- \ad|ad_count[3]~5\ = CARRY(((!\ad|ad_count[2]~7\)) # (!\ad|ad_count\(3)))
-- \ad|ad_count[3]~5COUT1_16\ = CARRY(((!\ad|ad_count[2]~7COUT1_15\)) # (!\ad|ad_count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|ad_count\(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ad|ad_count[4]~2_combout\,
	ena => \ad|ad_count[4]~3_combout\,
	cin0 => \ad|ad_count[2]~7\,
	cin1 => \ad|ad_count[2]~7COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_count\(3),
	cout0 => \ad|ad_count[3]~5\,
	cout1 => \ad|ad_count[3]~5COUT1_16\);

-- Location: LC_X8_Y10_N9
\ad|ad_count[4]\ : maxii_lcell
-- Equation(s):
-- \ad|ad_count\(4) = DFFEAS(((\ad|ad_count[3]~5\ $ (!\ad|ad_count\(4)))), GLOBAL(\clk~combout\), VCC, , \ad|ad_count[4]~3_combout\, \ad|cs_n~_wirecell_combout\, , , \ad|ad_count[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|cs_n~_wirecell_combout\,
	datad => \ad|ad_count\(4),
	aclr => GND,
	sload => \ad|ad_count[4]~2_combout\,
	ena => \ad|ad_count[4]~3_combout\,
	cin0 => \ad|ad_count[3]~5\,
	cin1 => \ad|ad_count[3]~5COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|ad_count\(4));

-- Location: LC_X7_Y10_N1
\ad|Equal2~1\ : maxii_lcell
-- Equation(s):
-- \ad|Equal2~1_combout\ = (!\ad|clk_div\(2) & (!\ad|clk_div\(5) & (\ad|clk_div\(4) & \ad|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|clk_div\(2),
	datab => \ad|clk_div\(5),
	datac => \ad|clk_div\(4),
	datad => \ad|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal2~1_combout\);

-- Location: LC_X7_Y8_N8
\ad|rsr[0]~0\ : maxii_lcell
-- Equation(s):
-- \ad|rsr[0]~0_combout\ = ((!\ad|ad_count\(4) & ((\ad|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|ad_count\(4),
	datad => \ad|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|rsr[0]~0_combout\);

-- Location: LC_X5_Y4_N3
\ad|rsr[0]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad_in~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad_in~combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(0));

-- Location: LC_X5_Y4_N9
\ad|rsr[1]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(1) = DFFEAS((((\ad|rsr\(0)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(0),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(1));

-- Location: LC_X5_Y4_N2
\ad|rsr[2]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad|rsr\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(1),
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(2));

-- Location: LC_X5_Y4_N8
\ad|rsr[3]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(3) = DFFEAS((((\ad|rsr\(2)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(2),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(3));

-- Location: LC_X5_Y4_N4
\ad|rsr[4]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(4) = DFFEAS((((\ad|rsr\(3)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(3),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(4));

-- Location: LC_X5_Y4_N7
\ad|rsr[5]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad|rsr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(4),
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(5));

-- Location: LC_X1_Y6_N2
\ad|rsr[6]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad|rsr\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(5),
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(6));

-- Location: LC_X1_Y6_N4
\ad|rsr[7]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(7) = DFFEAS((((\ad|rsr\(6)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(6),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(7));

-- Location: LC_X1_Y6_N9
\ad|rsr[8]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad|rsr\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(7),
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(8));

-- Location: LC_X1_Y6_N6
\ad|rsr[9]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(9) = DFFEAS((((\ad|rsr\(8)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(8),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(9));

-- Location: LC_X1_Y6_N8
\ad|rsr[10]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, \ad|rsr\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(9),
	aclr => GND,
	sload => VCC,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(10));

-- Location: LC_X7_Y7_N6
\ad|adc_out[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux16~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & (\ad|adc_data1\(10))) # (!\ad|sta\(0) & ((B1_adc_out[10])))))
-- \ad|adc_out\(10) = DFFEAS(\ad|Mux16~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data1\(10),
	datab => \ad|sta\(2),
	datac => \ad|rsr\(10),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux16~0\,
	regout => \ad|adc_out\(10));

-- Location: LC_X7_Y7_N0
\ad|adc_data4[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux16~1\ = (\ad|sta\(2) & ((\ad|Mux16~0\ & (\ad|adc_data5\(10))) # (!\ad|Mux16~0\ & ((B1_adc_data4[10]))))) # (!\ad|sta\(2) & (((\ad|Mux16~0\))))
-- \ad|adc_data4\(10) = DFFEAS(\ad|Mux16~1\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data5\(10),
	datab => \ad|sta\(2),
	datac => \ad|adc_data3\(10),
	datad => \ad|Mux16~0\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux16~1\,
	regout => \ad|adc_data4\(10));

-- Location: LC_X7_Y7_N2
\ad|adc_data5[10]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~30\ = (\ad|sta\(1) & (((\ad|sta\(0))))) # (!\ad|sta\(1) & ((\ad|sta\(0) & ((B1_adc_data5[10]))) # (!\ad|sta\(0) & (\ad|adc_data4\(10)))))
-- \ad|adc_data5\(10) = DFFEAS(\ad|Add2~30\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data4\(10),
	datab => \ad|sta\(1),
	datac => \ad|adc_data4\(10),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~30\,
	regout => \ad|adc_data5\(10));

-- Location: LC_X1_Y6_N0
\ad|rsr[11]\ : maxii_lcell
-- Equation(s):
-- \ad|rsr\(11) = DFFEAS((((\ad|rsr\(10)))), GLOBAL(\clk~combout\), VCC, , \ad|rsr[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(10),
	aclr => GND,
	ena => \ad|rsr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|rsr\(11));

-- Location: LC_X1_Y6_N3
\ad|adc_out[11]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(11),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(11));

-- Location: LC_X6_Y5_N4
\ad|adc_data1[11]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux15~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & ((B1_adc_data1[11]))) # (!\ad|sta\(0) & (\ad|adc_out\(11)))))
-- \ad|adc_data1\(11) = DFFEAS(\ad|Mux15~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(2),
	datab => \ad|adc_out\(11),
	datac => \ad|adc_out\(11),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux15~0\,
	regout => \ad|adc_data1\(11));

-- Location: LC_X6_Y5_N1
\ad|adc_data2[11]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~23\ = (\ad|Add2~22_combout\ & (((B1_adc_data2[11]) # (\ad|Add2~21_combout\)))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(11) & ((!\ad|Add2~21_combout\))))
-- \ad|adc_data2\(11) = DFFEAS(\ad|Add2~23\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~22_combout\,
	datab => \ad|adc_data1\(11),
	datac => \ad|adc_data1\(11),
	datad => \ad|Add2~21_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~23\,
	regout => \ad|adc_data2\(11));

-- Location: LC_X6_Y5_N3
\ad|adc_data4[11]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~19\ = (\ad|sta\(1) & (((\ad|sta\(0))) # (!\ad|adc_max\(11)))) # (!\ad|sta\(1) & (((B1_adc_data4[11] & !\ad|sta\(0)))))
-- \ad|adc_data4\(11) = DFFEAS(\ad|Add2~19\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(11),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(11),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~19\,
	regout => \ad|adc_data4\(11));

-- Location: LC_X6_Y5_N6
\ad|adc_data5[11]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~20\ = (\ad|sta\(0) & ((\ad|Add2~19\ & (!\ad|adc_min\(11))) # (!\ad|Add2~19\ & ((B1_adc_data5[11]))))) # (!\ad|sta\(0) & (((\ad|Add2~19\))))
-- \ad|adc_data5\(11) = DFFEAS(\ad|Add2~20\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(11),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(11),
	datad => \ad|Add2~19\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~20\,
	regout => \ad|adc_data5\(11));

-- Location: LC_X6_Y5_N2
\ad|Mux15~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux15~1_combout\ = (\ad|sta\(2) & ((\ad|Mux15~0\ & (\ad|adc_data5\(11))) # (!\ad|Mux15~0\ & ((\ad|adc_data4\(11)))))) # (!\ad|sta\(2) & (((\ad|Mux15~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(11),
	datab => \ad|sta\(2),
	datac => \ad|adc_data4\(11),
	datad => \ad|Mux15~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux15~1_combout\);

-- Location: LC_X6_Y9_N6
\ad|adc_min[10]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(10) = DFFEAS((\ad|sta\(1) & (\ad|Mux16~2\)) # (!\ad|sta\(1) & (((\ad|Mux16~1\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux16~2\,
	datab => \ad|Mux16~1\,
	datac => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(10));

-- Location: LC_X1_Y6_N7
\ad|adc_out[5]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(5),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(5));

-- Location: LC_X1_Y7_N5
\ad|adc_data1[5]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux21~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & ((B1_adc_data1[5]))) # (!\ad|sta\(0) & (\ad|adc_out\(5)))))
-- \ad|adc_data1\(5) = DFFEAS(\ad|Mux21~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(5),
	datab => \ad|sta\(2),
	datac => \ad|adc_out\(5),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux21~0\,
	regout => \ad|adc_data1\(5));

-- Location: LC_X1_Y7_N2
\ad|adc_data2[5]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~77\ = (\ad|Add2~21_combout\ & (((\ad|Add2~22_combout\)))) # (!\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\ & ((B1_adc_data2[5]))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(5)))))
-- \ad|adc_data2\(5) = DFFEAS(\ad|Add2~77\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data1\(5),
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_data1\(5),
	datad => \ad|Add2~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~77\,
	regout => \ad|adc_data2\(5));

-- Location: LC_X1_Y7_N7
\ad|adc_data4[5]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~75\ = (\ad|sta\(1) & (((\ad|sta\(0))) # (!\ad|adc_max\(5)))) # (!\ad|sta\(1) & (((B1_adc_data4[5] & !\ad|sta\(0)))))
-- \ad|adc_data4\(5) = DFFEAS(\ad|Add2~75\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(5),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(5),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~75\,
	regout => \ad|adc_data4\(5));

-- Location: LC_X1_Y7_N8
\ad|adc_data5[5]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~76\ = (\ad|sta\(0) & ((\ad|Add2~75\ & (!\ad|adc_min\(5))) # (!\ad|Add2~75\ & ((B1_adc_data5[5]))))) # (!\ad|sta\(0) & (((\ad|Add2~75\))))
-- \ad|adc_data5\(5) = DFFEAS(\ad|Add2~76\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_min\(5),
	datac => \ad|adc_data4\(5),
	datad => \ad|Add2~75\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~76\,
	regout => \ad|adc_data5\(5));

-- Location: LC_X1_Y7_N3
\ad|Mux21~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux21~1_combout\ = (\ad|Mux21~0\ & ((\ad|adc_data5\(5)) # ((!\ad|sta\(2))))) # (!\ad|Mux21~0\ & (((\ad|adc_data4\(5) & \ad|sta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(5),
	datab => \ad|adc_data4\(5),
	datac => \ad|Mux21~0\,
	datad => \ad|sta\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux21~1_combout\);

-- Location: LC_X4_Y7_N0
\ad|adc_max[5]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(5) = DFFEAS(((\ad|sta\(1) & (\ad|Mux21~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux21~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|Mux21~2_combout\,
	datac => \ad|Mux21~1_combout\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(5));

-- Location: LC_X1_Y7_N9
\ad|adc_data3[5]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~78\ = (\ad|Add2~21_combout\ & ((\ad|Add2~77\ & (B1_adc_data3[5])) # (!\ad|Add2~77\ & ((\ad|Add2~76\))))) # (!\ad|Add2~21_combout\ & (\ad|Add2~77\))
-- \ad|adc_data3\(5) = DFFEAS(\ad|Add2~78\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~77\,
	datac => \ad|adc_data2\(5),
	datad => \ad|Add2~76\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~78\,
	regout => \ad|adc_data3\(5));

-- Location: LC_X1_Y7_N6
\ad|Mux21~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux21~2_combout\ = ((\ad|sta\(0) & (\ad|adc_data3\(5))) # (!\ad|sta\(0) & ((\ad|adc_data2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data3\(5),
	datac => \ad|adc_data2\(5),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux21~2_combout\);

-- Location: LC_X2_Y9_N9
\ad|adc_min[5]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(5) = DFFEAS(((\ad|sta\(1) & (\ad|Mux21~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux21~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux21~2_combout\,
	datab => \ad|Mux21~1_combout\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(5));

-- Location: LC_X4_Y6_N3
\ad|adc_data1[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~122\ = (\ad|sta\(0) & ((\ad|sta\(2) & ((\ad|adc_sum\(0)))) # (!\ad|sta\(2) & (B1_adc_data1[0])))) # (!\ad|sta\(0) & (\ad|sta\(2)))
-- \ad|adc_data1\(0) = DFFEAS(\ad|Add2~122\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|sta\(2),
	datac => \ad|adc_out\(0),
	datad => \ad|adc_sum\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~122\,
	regout => \ad|adc_data1\(0));

-- Location: LC_X4_Y5_N0
\ad|adc_out[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux26~0\ = (\ad|sta\(0) & ((\ad|adc_data1\(0)) # ((\ad|sta\(2))))) # (!\ad|sta\(0) & (((B1_adc_out[0] & !\ad|sta\(2)))))
-- \ad|adc_out\(0) = DFFEAS(\ad|Mux26~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_data1\(0),
	datac => \ad|rsr\(0),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux26~0\,
	regout => \ad|adc_out\(0));

-- Location: LC_X2_Y8_N4
\ad|adc_data5[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~120\ = (\ad|sta\(2) & ((\ad|sta\(0) & (B1_adc_data5[0])) # (!\ad|sta\(0) & ((\ad|adc_sum\(0)))))) # (!\ad|sta\(2) & (\ad|sta\(0) & ((\ad|adc_sum\(0)))))
-- \ad|adc_data5\(0) = DFFEAS(\ad|Add2~120\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e680",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(2),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(0),
	datad => \ad|adc_sum\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~120\,
	regout => \ad|adc_data5\(0));

-- Location: LC_X2_Y8_N1
\ad|Add2~121\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~121_combout\ = (!\ad|sta\(3) & ((\ad|sta\(1) & (\ad|adc_sum\(0))) # (!\ad|sta\(1) & ((\ad|Add2~120\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(0),
	datab => \ad|sta\(3),
	datac => \ad|Add2~120\,
	datad => \ad|sta\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~121_combout\);

-- Location: LC_X4_Y6_N6
\ad|adc_data4[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~123\ = (\ad|sta\(1) & (\ad|sta\(0))) # (!\ad|sta\(1) & (\ad|Add2~122\ & ((\ad|sta\(0)) # (B1_adc_data4[0]))))
-- \ad|adc_data4\(0) = DFFEAS(\ad|Add2~123\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(0),
	datad => \ad|Add2~122\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~123\,
	regout => \ad|adc_data4\(0));

-- Location: LC_X5_Y6_N0
\ad|adc_data2[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~124\ = (\ad|Add2~123\ & (((\ad|sta\(2))))) # (!\ad|Add2~123\ & ((\ad|sta\(2) & (!\ad|adc_max\(0))) # (!\ad|sta\(2) & ((B1_adc_data2[0])))))
-- \ad|adc_data2\(0) = DFFEAS(\ad|Add2~124\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(0),
	datab => \ad|Add2~123\,
	datac => \ad|adc_data1\(0),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~124\,
	regout => \ad|adc_data2\(0));

-- Location: LC_X5_Y6_N1
\ad|adc_data3[0]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~125\ = (\ad|Add2~123\ & ((\ad|Add2~124\ & (!\ad|adc_min\(0))) # (!\ad|Add2~124\ & ((B1_adc_data3[0]))))) # (!\ad|Add2~123\ & (((\ad|Add2~124\))))
-- \ad|adc_data3\(0) = DFFEAS(\ad|Add2~125\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(0),
	datab => \ad|Add2~123\,
	datac => \ad|adc_data2\(0),
	datad => \ad|Add2~124\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~125\,
	regout => \ad|adc_data3\(0));

-- Location: LC_X5_Y6_N2
\ad|Add2~126\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~126_combout\ = (!\ad|sta\(3) & ((\ad|sta\(1) & ((\ad|Add2~125\))) # (!\ad|sta\(1) & (\ad|Add2~123\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|sta\(3),
	datac => \ad|Add2~123\,
	datad => \ad|Add2~125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~126_combout\);

-- Location: LC_X5_Y6_N3
\ad|Add2~129\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~129_cout0\ = CARRY((\ad|sta\(1) & (\ad|sta\(2))))
-- \ad|Add2~129COUT1_133\ = CARRY((\ad|sta\(1) & (\ad|sta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|sta\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~127\,
	cout0 => \ad|Add2~129_cout0\,
	cout1 => \ad|Add2~129COUT1_133\);

-- Location: LC_X5_Y6_N4
\ad|Add2~115\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~115_combout\ = \ad|Add2~121_combout\ $ (\ad|Add2~126_combout\ $ ((\ad|Add2~129_cout0\)))
-- \ad|Add2~117\ = CARRY((\ad|Add2~121_combout\ & (!\ad|Add2~126_combout\ & !\ad|Add2~129COUT1_133\)) # (!\ad|Add2~121_combout\ & ((!\ad|Add2~129COUT1_133\) # (!\ad|Add2~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~121_combout\,
	datab => \ad|Add2~126_combout\,
	cin0 => \ad|Add2~129_cout0\,
	cin1 => \ad|Add2~129COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~115_combout\,
	cout => \ad|Add2~117\);

-- Location: LC_X7_Y7_N1
\ad|Equal1~0\ : maxii_lcell
-- Equation(s):
-- \ad|Equal1~0_combout\ = (\ad|sta\(3) & (!\ad|sta\(1) & (!\ad|sta\(2) & !\ad|sta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(3),
	datab => \ad|sta\(1),
	datac => \ad|sta\(2),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Equal1~0_combout\);

-- Location: LC_X7_Y6_N4
\ad|adc_sum[0]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(0) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~115_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~115_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(0))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|adc_out\(0),
	datad => \ad|Add2~115_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(0));

-- Location: LC_X2_Y8_N6
\ad|Mux26~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux26~1_combout\ = (\ad|Mux26~0\ & ((\ad|adc_data5\(0)) # ((!\ad|sta\(2))))) # (!\ad|Mux26~0\ & (((\ad|adc_data4\(0) & \ad|sta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(0),
	datab => \ad|adc_data4\(0),
	datac => \ad|Mux26~0\,
	datad => \ad|sta\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux26~1_combout\);

-- Location: LC_X2_Y7_N3
\ad|adc_max[0]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(0) = DFFEAS(((\ad|sta\(1) & (\ad|Mux26~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux26~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux26~2_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux26~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(0));

-- Location: LC_X2_Y8_N0
\ad|Mux26~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux26~2_combout\ = ((\ad|sta\(0) & ((\ad|adc_data3\(0)))) # (!\ad|sta\(0) & (\ad|adc_data2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data2\(0),
	datac => \ad|adc_data3\(0),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux26~2_combout\);

-- Location: LC_X5_Y9_N2
\ad|adc_min[0]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(0) = DFFEAS(((\ad|sta\(1) & (\ad|Mux26~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux26~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|Mux26~2_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux26~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(0));

-- Location: LC_X2_Y6_N4
\ad|LessThan10~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~57_cout\ = CARRY((\ad|adc_data4\(0) & (!\ad|adc_min\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(0),
	datab => \ad|adc_min\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~55\,
	cout => \ad|LessThan10~57_cout\);

-- Location: LC_X3_Y8_N2
\ad|adc_data3[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux22~2\ = ((\ad|sta\(0) & ((B1_adc_data3[4]))) # (!\ad|sta\(0) & (\ad|adc_data2\(4))))
-- \ad|adc_data3\(4) = DFFEAS(\ad|Mux22~2\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|adc_data2\(4),
	datac => \ad|adc_data2\(4),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux22~2\,
	regout => \ad|adc_data3\(4));

-- Location: LC_X4_Y4_N9
\ad|adc_out[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux22~0\ = (\ad|sta\(0) & ((\ad|adc_data1\(4)) # ((\ad|sta\(2))))) # (!\ad|sta\(0) & (((B1_adc_out[4] & !\ad|sta\(2)))))
-- \ad|adc_out\(4) = DFFEAS(\ad|Mux22~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_data1\(4),
	datac => \ad|rsr\(4),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux22~0\,
	regout => \ad|adc_out\(4));

-- Location: LC_X3_Y8_N3
\ad|adc_data4[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~84\ = (\ad|sta\(0) & (((\ad|sta\(1))))) # (!\ad|sta\(0) & ((\ad|sta\(1) & (!\ad|adc_max\(4))) # (!\ad|sta\(1) & ((B1_adc_data4[4])))))
-- \ad|adc_data4\(4) = DFFEAS(\ad|Add2~84\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_max\(4),
	datac => \ad|adc_data3\(4),
	datad => \ad|sta\(1),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~84\,
	regout => \ad|adc_data4\(4));

-- Location: LC_X3_Y8_N1
\ad|adc_data5[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~85\ = (\ad|sta\(0) & ((\ad|Add2~84\ & (!\ad|adc_min\(4))) # (!\ad|Add2~84\ & ((B1_adc_data5[4]))))) # (!\ad|sta\(0) & (((\ad|Add2~84\))))
-- \ad|adc_data5\(4) = DFFEAS(\ad|Add2~85\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_min\(4),
	datac => \ad|adc_data4\(4),
	datad => \ad|Add2~84\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~85\,
	regout => \ad|adc_data5\(4));

-- Location: LC_X2_Y8_N5
\ad|Mux22~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux22~1_combout\ = (\ad|sta\(2) & ((\ad|Mux22~0\ & (\ad|adc_data5\(4))) # (!\ad|Mux22~0\ & ((\ad|adc_data4\(4)))))) # (!\ad|sta\(2) & (((\ad|Mux22~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(4),
	datab => \ad|sta\(2),
	datac => \ad|adc_data4\(4),
	datad => \ad|Mux22~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux22~1_combout\);

-- Location: LC_X2_Y9_N6
\ad|adc_min[4]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(4) = DFFEAS(((\ad|sta\(1) & ((\ad|Mux22~2\))) # (!\ad|sta\(1) & (\ad|Mux22~1_combout\))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|Mux22~1_combout\,
	datac => \ad|Mux22~2\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(4));

-- Location: LC_X4_Y6_N8
\ad|adc_data1[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~86\ = (\ad|Add2~22_combout\ & (\ad|Add2~21_combout\)) # (!\ad|Add2~22_combout\ & ((\ad|Add2~21_combout\ & ((\ad|Add2~85\))) # (!\ad|Add2~21_combout\ & (B1_adc_data1[4]))))
-- \ad|adc_data1\(4) = DFFEAS(\ad|Add2~86\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~22_combout\,
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_out\(4),
	datad => \ad|Add2~85\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~86\,
	regout => \ad|adc_data1\(4));

-- Location: LC_X4_Y6_N2
\ad|adc_data2[4]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~87\ = (\ad|Add2~22_combout\ & ((\ad|Add2~86\ & (\ad|adc_data3\(4))) # (!\ad|Add2~86\ & ((B1_adc_data2[4]))))) # (!\ad|Add2~22_combout\ & (((\ad|Add2~86\))))
-- \ad|adc_data2\(4) = DFFEAS(\ad|Add2~87\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~22_combout\,
	datab => \ad|adc_data3\(4),
	datac => \ad|adc_data1\(4),
	datad => \ad|Add2~86\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~87\,
	regout => \ad|adc_data2\(4));

-- Location: LC_X4_Y7_N3
\ad|adc_max[4]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(4) = DFFEAS((\ad|sta\(1) & (((\ad|Mux22~2\)))) # (!\ad|sta\(1) & (((\ad|Mux22~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datac => \ad|Mux22~2\,
	datad => \ad|Mux22~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(4));

-- Location: LC_X2_Y6_N3
\ad|adc_data4[3]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~93\ = (\ad|sta\(1) & ((\ad|sta\(0)) # ((!\ad|adc_max\(3))))) # (!\ad|sta\(1) & (!\ad|sta\(0) & (B1_adc_data4[3])))
-- \ad|adc_data4\(3) = DFFEAS(\ad|Add2~93\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98ba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|sta\(0),
	datac => \ad|adc_data3\(3),
	datad => \ad|adc_max\(3),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~93\,
	regout => \ad|adc_data4\(3));

-- Location: LC_X2_Y6_N2
\ad|adc_data5[3]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~94\ = (\ad|sta\(0) & ((\ad|Add2~93\ & (!\ad|adc_min\(3))) # (!\ad|Add2~93\ & ((B1_adc_data5[3]))))) # (!\ad|sta\(0) & (((\ad|Add2~93\))))
-- \ad|adc_data5\(3) = DFFEAS(\ad|Add2~94\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(3),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(3),
	datad => \ad|Add2~93\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~94\,
	regout => \ad|adc_data5\(3));

-- Location: LC_X5_Y4_N1
\ad|adc_out[3]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(3) = DFFEAS((((\ad|rsr\(3)))), GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|rsr\(3),
	aclr => GND,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(3));

-- Location: LC_X3_Y4_N3
\ad|adc_data1[3]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux23~0\ = (\ad|sta\(0) & (((B1_adc_data1[3]) # (\ad|sta\(2))))) # (!\ad|sta\(0) & (\ad|adc_out\(3) & ((!\ad|sta\(2)))))
-- \ad|adc_data1\(3) = DFFEAS(\ad|Mux23~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(3),
	datab => \ad|sta\(0),
	datac => \ad|adc_out\(3),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux23~0\,
	regout => \ad|adc_data1\(3));

-- Location: LC_X2_Y6_N1
\ad|Mux23~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux23~1_combout\ = (\ad|sta\(2) & ((\ad|Mux23~0\ & (\ad|adc_data5\(3))) # (!\ad|Mux23~0\ & ((\ad|adc_data4\(3)))))) # (!\ad|sta\(2) & (((\ad|Mux23~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|adc_data5\(3),
	datac => \ad|Mux23~0\,
	datad => \ad|adc_data4\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux23~1_combout\);

-- Location: LC_X2_Y7_N2
\ad|adc_max[3]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(3) = DFFEAS((\ad|sta\(1) & (((\ad|Mux23~2_combout\)))) # (!\ad|sta\(1) & (\ad|Mux23~1_combout\)), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|Mux23~1_combout\,
	datac => \ad|Mux23~2_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(3));

-- Location: LC_X6_Y7_N5
\ad|adc_data2[3]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~95\ = (\ad|Add2~21_combout\ & (((\ad|Add2~22_combout\)))) # (!\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\ & ((B1_adc_data2[3]))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(3)))))
-- \ad|adc_data2\(3) = DFFEAS(\ad|Add2~95\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data1\(3),
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_data1\(3),
	datad => \ad|Add2~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~95\,
	regout => \ad|adc_data2\(3));

-- Location: LC_X3_Y6_N7
\ad|adc_data3[3]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~96\ = (\ad|Add2~21_combout\ & ((\ad|Add2~95\ & ((B1_adc_data3[3]))) # (!\ad|Add2~95\ & (\ad|Add2~94\)))) # (!\ad|Add2~21_combout\ & (((\ad|Add2~95\))))
-- \ad|adc_data3\(3) = DFFEAS(\ad|Add2~96\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~94\,
	datac => \ad|adc_data2\(3),
	datad => \ad|Add2~95\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~96\,
	regout => \ad|adc_data3\(3));

-- Location: LC_X2_Y8_N7
\ad|Mux23~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux23~2_combout\ = ((\ad|sta\(0) & (\ad|adc_data3\(3))) # (!\ad|sta\(0) & ((\ad|adc_data2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data3\(3),
	datac => \ad|adc_data2\(3),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux23~2_combout\);

-- Location: LC_X5_Y9_N3
\ad|adc_min[3]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(3) = DFFEAS(((\ad|sta\(1) & (\ad|Mux23~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux23~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|Mux23~2_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux23~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(3));

-- Location: LC_X3_Y8_N0
\ad|adc_data3[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux24~2\ = ((\ad|sta\(0) & ((B1_adc_data3[2]))) # (!\ad|sta\(0) & (\ad|adc_data2\(2))))
-- \ad|adc_data3\(2) = DFFEAS(\ad|Mux24~2\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|adc_data2\(2),
	datac => \ad|adc_data2\(2),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux24~2\,
	regout => \ad|adc_data3\(2));

-- Location: LC_X5_Y8_N0
\ad|adc_out[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux24~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & (\ad|adc_data1\(2))) # (!\ad|sta\(0) & ((B1_adc_out[2])))))
-- \ad|adc_out\(2) = DFFEAS(\ad|Mux24~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(2),
	datab => \ad|adc_data1\(2),
	datac => \ad|rsr\(2),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux24~0\,
	regout => \ad|adc_out\(2));

-- Location: LC_X5_Y8_N9
\ad|adc_data4[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~102\ = (\ad|sta\(1) & (((\ad|sta\(0))) # (!\ad|adc_max\(2)))) # (!\ad|sta\(1) & (((B1_adc_data4[2] & !\ad|sta\(0)))))
-- \ad|adc_data4\(2) = DFFEAS(\ad|Add2~102\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa72",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_max\(2),
	datac => \ad|adc_data3\(2),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~102\,
	regout => \ad|adc_data4\(2));

-- Location: LC_X5_Y8_N6
\ad|adc_data5[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~103\ = (\ad|sta\(0) & ((\ad|Add2~102\ & (!\ad|adc_min\(2))) # (!\ad|Add2~102\ & ((B1_adc_data5[2]))))) # (!\ad|sta\(0) & (((\ad|Add2~102\))))
-- \ad|adc_data5\(2) = DFFEAS(\ad|Add2~103\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(2),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(2),
	datad => \ad|Add2~102\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~103\,
	regout => \ad|adc_data5\(2));

-- Location: LC_X5_Y8_N7
\ad|adc_data1[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~104\ = (\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\) # ((\ad|Add2~103\)))) # (!\ad|Add2~21_combout\ & (!\ad|Add2~22_combout\ & (B1_adc_data1[2])))
-- \ad|adc_data1\(2) = DFFEAS(\ad|Add2~104\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_out\(2),
	datad => \ad|Add2~103\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~104\,
	regout => \ad|adc_data1\(2));

-- Location: LC_X5_Y8_N8
\ad|adc_data2[2]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~105\ = (\ad|Add2~22_combout\ & ((\ad|Add2~104\ & (\ad|adc_data3\(2))) # (!\ad|Add2~104\ & ((B1_adc_data2[2]))))) # (!\ad|Add2~22_combout\ & (((\ad|Add2~104\))))
-- \ad|adc_data2\(2) = DFFEAS(\ad|Add2~105\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data3\(2),
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_data1\(2),
	datad => \ad|Add2~104\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~105\,
	regout => \ad|adc_data2\(2));

-- Location: LC_X2_Y7_N0
\ad|adc_max[2]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(2) = DFFEAS((\ad|sta\(1) & (\ad|Mux24~2\)) # (!\ad|sta\(1) & (((\ad|Mux24~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|Mux24~2\,
	datad => \ad|Mux24~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(2));

-- Location: LC_X2_Y8_N3
\ad|Mux24~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux24~1_combout\ = (\ad|sta\(2) & ((\ad|Mux24~0\ & ((\ad|adc_data5\(2)))) # (!\ad|Mux24~0\ & (\ad|adc_data4\(2))))) # (!\ad|sta\(2) & (((\ad|Mux24~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|adc_data4\(2),
	datac => \ad|adc_data5\(2),
	datad => \ad|Mux24~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux24~1_combout\);

-- Location: LC_X5_Y9_N0
\ad|adc_min[2]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(2) = DFFEAS((\ad|sta\(1) & (((\ad|Mux24~2\)))) # (!\ad|sta\(1) & (\ad|Mux24~1_combout\)), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux24~1_combout\,
	datab => \ad|Mux24~2\,
	datac => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(2));

-- Location: LC_X5_Y4_N6
\ad|adc_out[1]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(1),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(1));

-- Location: LC_X3_Y4_N2
\ad|adc_data1[1]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux25~0\ = (\ad|sta\(0) & (((B1_adc_data1[1]) # (\ad|sta\(2))))) # (!\ad|sta\(0) & (\ad|adc_out\(1) & ((!\ad|sta\(2)))))
-- \ad|adc_data1\(1) = DFFEAS(\ad|Mux25~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(1),
	datab => \ad|sta\(0),
	datac => \ad|adc_out\(1),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux25~0\,
	regout => \ad|adc_data1\(1));

-- Location: LC_X3_Y9_N3
\ad|adc_data2[1]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~113\ = (\ad|Add2~21_combout\ & (((\ad|Add2~22_combout\)))) # (!\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\ & ((B1_adc_data2[1]))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(1)))))
-- \ad|adc_data2\(1) = DFFEAS(\ad|Add2~113\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|adc_data1\(1),
	datac => \ad|adc_data1\(1),
	datad => \ad|Add2~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~113\,
	regout => \ad|adc_data2\(1));

-- Location: LC_X3_Y9_N2
\ad|adc_data4[1]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~111\ = (\ad|sta\(1) & (((\ad|sta\(0))) # (!\ad|adc_max\(1)))) # (!\ad|sta\(1) & (((B1_adc_data4[1] & !\ad|sta\(0)))))
-- \ad|adc_data4\(1) = DFFEAS(\ad|Add2~111\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(1),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(1),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~111\,
	regout => \ad|adc_data4\(1));

-- Location: LC_X3_Y9_N0
\ad|adc_data5[1]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~112\ = (\ad|sta\(0) & ((\ad|Add2~111\ & (!\ad|adc_min\(1))) # (!\ad|Add2~111\ & ((B1_adc_data5[1]))))) # (!\ad|sta\(0) & (((\ad|Add2~111\))))
-- \ad|adc_data5\(1) = DFFEAS(\ad|Add2~112\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_min\(1),
	datac => \ad|adc_data4\(1),
	datad => \ad|Add2~111\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~112\,
	regout => \ad|adc_data5\(1));

-- Location: LC_X2_Y5_N0
\ad|Mux25~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux25~1_combout\ = (\ad|sta\(2) & ((\ad|Mux25~0\ & (\ad|adc_data5\(1))) # (!\ad|Mux25~0\ & ((\ad|adc_data4\(1)))))) # (!\ad|sta\(2) & (((\ad|Mux25~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|adc_data5\(1),
	datac => \ad|Mux25~0\,
	datad => \ad|adc_data4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux25~1_combout\);

-- Location: LC_X2_Y7_N1
\ad|adc_max[1]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(1) = DFFEAS((\ad|sta\(1) & (\ad|Mux25~2_combout\)) # (!\ad|sta\(1) & (((\ad|Mux25~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux25~2_combout\,
	datab => \ad|Mux25~1_combout\,
	datac => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(1));

-- Location: LC_X3_Y9_N1
\ad|adc_data3[1]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~114\ = (\ad|Add2~21_combout\ & ((\ad|Add2~113\ & ((B1_adc_data3[1]))) # (!\ad|Add2~113\ & (\ad|Add2~112\)))) # (!\ad|Add2~21_combout\ & (((\ad|Add2~113\))))
-- \ad|adc_data3\(1) = DFFEAS(\ad|Add2~114\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~112\,
	datac => \ad|adc_data2\(1),
	datad => \ad|Add2~113\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~114\,
	regout => \ad|adc_data3\(1));

-- Location: LC_X4_Y5_N1
\ad|Mux25~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux25~2_combout\ = ((\ad|sta\(0) & ((\ad|adc_data3\(1)))) # (!\ad|sta\(0) & (\ad|adc_data2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data2\(1),
	datac => \ad|adc_data3\(1),
	datad => \ad|sta\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux25~2_combout\);

-- Location: LC_X5_Y9_N1
\ad|adc_min[1]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(1) = DFFEAS((\ad|sta\(1) & (((\ad|Mux25~2_combout\)))) # (!\ad|sta\(1) & (((\ad|Mux25~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datac => \ad|Mux25~2_combout\,
	datad => \ad|Mux25~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(1));

-- Location: LC_X2_Y6_N5
\ad|LessThan10~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~52_cout0\ = CARRY((\ad|adc_min\(1) & ((!\ad|LessThan10~57_cout\) # (!\ad|adc_data4\(1)))) # (!\ad|adc_min\(1) & (!\ad|adc_data4\(1) & !\ad|LessThan10~57_cout\)))
-- \ad|LessThan10~52COUT1_61\ = CARRY((\ad|adc_min\(1) & ((!\ad|LessThan10~57_cout\) # (!\ad|adc_data4\(1)))) # (!\ad|adc_min\(1) & (!\ad|adc_data4\(1) & !\ad|LessThan10~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(1),
	datab => \ad|adc_data4\(1),
	cin => \ad|LessThan10~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~50\,
	cout0 => \ad|LessThan10~52_cout0\,
	cout1 => \ad|LessThan10~52COUT1_61\);

-- Location: LC_X2_Y6_N6
\ad|LessThan10~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~47_cout0\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data4\(2) & !\ad|LessThan10~52_cout0\)) # (!\ad|adc_min\(2) & ((\ad|adc_data4\(2)) # (!\ad|LessThan10~52_cout0\))))
-- \ad|LessThan10~47COUT1_62\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data4\(2) & !\ad|LessThan10~52COUT1_61\)) # (!\ad|adc_min\(2) & ((\ad|adc_data4\(2)) # (!\ad|LessThan10~52COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(2),
	datab => \ad|adc_data4\(2),
	cin => \ad|LessThan10~57_cout\,
	cin0 => \ad|LessThan10~52_cout0\,
	cin1 => \ad|LessThan10~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~45\,
	cout0 => \ad|LessThan10~47_cout0\,
	cout1 => \ad|LessThan10~47COUT1_62\);

-- Location: LC_X2_Y6_N7
\ad|LessThan10~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~42_cout0\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan10~47_cout0\) # (!\ad|adc_data4\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data4\(3) & !\ad|LessThan10~47_cout0\)))
-- \ad|LessThan10~42COUT1_63\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan10~47COUT1_62\) # (!\ad|adc_data4\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data4\(3) & !\ad|LessThan10~47COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(3),
	datab => \ad|adc_data4\(3),
	cin => \ad|LessThan10~57_cout\,
	cin0 => \ad|LessThan10~47_cout0\,
	cin1 => \ad|LessThan10~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~40\,
	cout0 => \ad|LessThan10~42_cout0\,
	cout1 => \ad|LessThan10~42COUT1_63\);

-- Location: LC_X2_Y6_N8
\ad|LessThan10~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~37_cout0\ = CARRY((\ad|adc_data4\(4) & ((!\ad|LessThan10~42_cout0\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data4\(4) & (!\ad|adc_min\(4) & !\ad|LessThan10~42_cout0\)))
-- \ad|LessThan10~37COUT1_64\ = CARRY((\ad|adc_data4\(4) & ((!\ad|LessThan10~42COUT1_63\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data4\(4) & (!\ad|adc_min\(4) & !\ad|LessThan10~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(4),
	datab => \ad|adc_min\(4),
	cin => \ad|LessThan10~57_cout\,
	cin0 => \ad|LessThan10~42_cout0\,
	cin1 => \ad|LessThan10~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~35\,
	cout0 => \ad|LessThan10~37_cout0\,
	cout1 => \ad|LessThan10~37COUT1_64\);

-- Location: LC_X2_Y6_N9
\ad|LessThan10~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~32_cout\ = CARRY((\ad|adc_min\(5) & ((!\ad|LessThan10~37COUT1_64\) # (!\ad|adc_data4\(5)))) # (!\ad|adc_min\(5) & (!\ad|adc_data4\(5) & !\ad|LessThan10~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(5),
	datab => \ad|adc_data4\(5),
	cin => \ad|LessThan10~57_cout\,
	cin0 => \ad|LessThan10~37_cout0\,
	cin1 => \ad|LessThan10~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~30\,
	cout => \ad|LessThan10~32_cout\);

-- Location: LC_X1_Y6_N5
\ad|adc_out[9]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(9),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(9));

-- Location: LC_X4_Y4_N8
\ad|adc_data1[9]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux17~0\ = (\ad|sta\(0) & ((\ad|sta\(2)) # ((B1_adc_data1[9])))) # (!\ad|sta\(0) & (!\ad|sta\(2) & ((\ad|adc_out\(9)))))
-- \ad|adc_data1\(9) = DFFEAS(\ad|Mux17~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|sta\(2),
	datac => \ad|adc_out\(9),
	datad => \ad|adc_out\(9),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux17~0\,
	regout => \ad|adc_data1\(9));

-- Location: LC_X3_Y6_N6
\ad|adc_data2[9]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~41\ = (\ad|Add2~21_combout\ & (((\ad|Add2~22_combout\)))) # (!\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\ & ((B1_adc_data2[9]))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(9)))))
-- \ad|adc_data2\(9) = DFFEAS(\ad|Add2~41\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data1\(9),
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_data1\(9),
	datad => \ad|Add2~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~41\,
	regout => \ad|adc_data2\(9));

-- Location: LC_X4_Y8_N9
\ad|Mux17~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux17~2_combout\ = ((\ad|sta\(0) & ((\ad|adc_data3\(9)))) # (!\ad|sta\(0) & (\ad|adc_data2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data2\(9),
	datac => \ad|sta\(0),
	datad => \ad|adc_data3\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux17~2_combout\);

-- Location: LC_X4_Y7_N2
\ad|adc_max[9]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(9) = DFFEAS((\ad|sta\(1) & (((\ad|Mux17~2_combout\)))) # (!\ad|sta\(1) & (((\ad|Mux17~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datac => \ad|Mux17~1_combout\,
	datad => \ad|Mux17~2_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(9));

-- Location: LC_X3_Y6_N8
\ad|adc_data4[9]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~39\ = (\ad|sta\(1) & ((\ad|sta\(0)) # ((!\ad|adc_max\(9))))) # (!\ad|sta\(1) & (!\ad|sta\(0) & (B1_adc_data4[9])))
-- \ad|adc_data4\(9) = DFFEAS(\ad|Add2~39\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98ba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|sta\(0),
	datac => \ad|adc_data3\(9),
	datad => \ad|adc_max\(9),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~39\,
	regout => \ad|adc_data4\(9));

-- Location: LC_X3_Y6_N9
\ad|adc_data5[9]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~40\ = (\ad|sta\(0) & ((\ad|Add2~39\ & (!\ad|adc_min\(9))) # (!\ad|Add2~39\ & ((B1_adc_data5[9]))))) # (!\ad|sta\(0) & (((\ad|Add2~39\))))
-- \ad|adc_data5\(9) = DFFEAS(\ad|Add2~40\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(9),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(9),
	datad => \ad|Add2~39\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~40\,
	regout => \ad|adc_data5\(9));

-- Location: LC_X4_Y6_N1
\ad|adc_data3[9]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~42\ = (\ad|Add2~21_combout\ & ((\ad|Add2~41\ & ((B1_adc_data3[9]))) # (!\ad|Add2~41\ & (\ad|Add2~40\)))) # (!\ad|Add2~21_combout\ & (((\ad|Add2~41\))))
-- \ad|adc_data3\(9) = DFFEAS(\ad|Add2~42\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~40\,
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_data2\(9),
	datad => \ad|Add2~41\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~42\,
	regout => \ad|adc_data3\(9));

-- Location: LC_X3_Y5_N8
\ad|Mux17~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux17~1_combout\ = (\ad|sta\(2) & ((\ad|Mux17~0\ & (\ad|adc_data5\(9))) # (!\ad|Mux17~0\ & ((\ad|adc_data4\(9)))))) # (!\ad|sta\(2) & (((\ad|Mux17~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(9),
	datab => \ad|adc_data4\(9),
	datac => \ad|sta\(2),
	datad => \ad|Mux17~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux17~1_combout\);

-- Location: LC_X2_Y9_N8
\ad|adc_min[9]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(9) = DFFEAS(((\ad|sta\(1) & ((\ad|Mux17~2_combout\))) # (!\ad|sta\(1) & (\ad|Mux17~1_combout\))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux17~1_combout\,
	datab => \ad|Mux17~2_combout\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(9));

-- Location: LC_X4_Y5_N2
\ad|adc_out[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux18~0\ = (\ad|sta\(0) & ((\ad|adc_data1\(8)) # ((\ad|sta\(2))))) # (!\ad|sta\(0) & (((B1_adc_out[8] & !\ad|sta\(2)))))
-- \ad|adc_out\(8) = DFFEAS(\ad|Mux18~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_data1\(8),
	datac => \ad|rsr\(8),
	datad => \ad|sta\(2),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux18~0\,
	regout => \ad|adc_out\(8));

-- Location: LC_X6_Y7_N8
\ad|adc_data3[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux18~2\ = ((\ad|sta\(0) & ((B1_adc_data3[8]))) # (!\ad|sta\(0) & (\ad|adc_data2\(8))))
-- \ad|adc_data3\(8) = DFFEAS(\ad|Mux18~2\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data2\(8),
	datac => \ad|adc_data2\(8),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux18~2\,
	regout => \ad|adc_data3\(8));

-- Location: LC_X5_Y7_N8
\ad|adc_max[8]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(8) = DFFEAS(((\ad|sta\(1) & ((\ad|Mux18~2\))) # (!\ad|sta\(1) & (\ad|Mux18~1_combout\))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|sta\(1),
	datac => \ad|Mux18~1_combout\,
	datad => \ad|Mux18~2\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(8));

-- Location: LC_X5_Y5_N8
\ad|adc_data4[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~48\ = (\ad|sta\(0) & (\ad|sta\(1))) # (!\ad|sta\(0) & ((\ad|sta\(1) & ((!\ad|adc_max\(8)))) # (!\ad|sta\(1) & (B1_adc_data4[8]))))
-- \ad|adc_data4\(8) = DFFEAS(\ad|Add2~48\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98dc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(8),
	datad => \ad|adc_max\(8),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~48\,
	regout => \ad|adc_data4\(8));

-- Location: LC_X5_Y5_N9
\ad|adc_data5[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~49\ = (\ad|sta\(0) & ((\ad|Add2~48\ & (!\ad|adc_min\(8))) # (!\ad|Add2~48\ & ((B1_adc_data5[8]))))) # (!\ad|sta\(0) & (((\ad|Add2~48\))))
-- \ad|adc_data5\(8) = DFFEAS(\ad|Add2~49\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(0),
	datab => \ad|adc_min\(8),
	datac => \ad|adc_data4\(8),
	datad => \ad|Add2~48\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~49\,
	regout => \ad|adc_data5\(8));

-- Location: LC_X4_Y5_N3
\ad|Mux18~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux18~1_combout\ = (\ad|sta\(2) & ((\ad|Mux18~0\ & ((\ad|adc_data5\(8)))) # (!\ad|Mux18~0\ & (\ad|adc_data4\(8))))) # (!\ad|sta\(2) & (((\ad|Mux18~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|adc_data4\(8),
	datac => \ad|adc_data5\(8),
	datad => \ad|Mux18~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux18~1_combout\);

-- Location: LC_X6_Y9_N9
\ad|adc_min[8]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(8) = DFFEAS((\ad|sta\(1) & (((\ad|Mux18~2\)))) # (!\ad|sta\(1) & (\ad|Mux18~1_combout\)), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux18~1_combout\,
	datab => \ad|Mux18~2\,
	datac => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(8));

-- Location: LC_X5_Y5_N6
\ad|adc_data1[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~50\ = (\ad|Add2~22_combout\ & (\ad|Add2~21_combout\)) # (!\ad|Add2~22_combout\ & ((\ad|Add2~21_combout\ & ((\ad|Add2~49\))) # (!\ad|Add2~21_combout\ & (B1_adc_data1[8]))))
-- \ad|adc_data1\(8) = DFFEAS(\ad|Add2~50\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~22_combout\,
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_out\(8),
	datad => \ad|Add2~49\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~50\,
	regout => \ad|adc_data1\(8));

-- Location: LC_X5_Y5_N7
\ad|adc_data2[8]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~51\ = (\ad|Add2~22_combout\ & ((\ad|Add2~50\ & (\ad|adc_data3\(8))) # (!\ad|Add2~50\ & ((B1_adc_data2[8]))))) # (!\ad|Add2~22_combout\ & (((\ad|Add2~50\))))
-- \ad|adc_data2\(8) = DFFEAS(\ad|Add2~51\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~22_combout\,
	datab => \ad|adc_data3\(8),
	datac => \ad|adc_data1\(8),
	datad => \ad|Add2~50\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~51\,
	regout => \ad|adc_data2\(8));

-- Location: LC_X1_Y6_N1
\ad|adc_out[7]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_out\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|rsr\(7),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_out\(7));

-- Location: LC_X6_Y7_N6
\ad|adc_data1[7]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux19~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & ((B1_adc_data1[7]))) # (!\ad|sta\(0) & (\ad|adc_out\(7)))))
-- \ad|adc_data1\(7) = DFFEAS(\ad|Mux19~0\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(2),
	datab => \ad|adc_out\(7),
	datac => \ad|adc_out\(7),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux19~0\,
	regout => \ad|adc_data1\(7));

-- Location: LC_X6_Y7_N3
\ad|adc_data2[7]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~59\ = (\ad|Add2~21_combout\ & (((\ad|Add2~22_combout\)))) # (!\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\ & ((B1_adc_data2[7]))) # (!\ad|Add2~22_combout\ & (\ad|adc_data1\(7)))))
-- \ad|adc_data2\(7) = DFFEAS(\ad|Add2~59\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|adc_data1\(7),
	datac => \ad|adc_data1\(7),
	datad => \ad|Add2~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~59\,
	regout => \ad|adc_data2\(7));

-- Location: LC_X6_Y7_N9
\ad|adc_data4[7]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~57\ = (\ad|sta\(1) & (((\ad|sta\(0))) # (!\ad|adc_max\(7)))) # (!\ad|sta\(1) & (((B1_adc_data4[7] & !\ad|sta\(0)))))
-- \ad|adc_data4\(7) = DFFEAS(\ad|Add2~57\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(7),
	datab => \ad|sta\(1),
	datac => \ad|adc_data3\(7),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~57\,
	regout => \ad|adc_data4\(7));

-- Location: LC_X6_Y7_N4
\ad|adc_data5[7]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~58\ = (\ad|sta\(0) & ((\ad|Add2~57\ & (!\ad|adc_min\(7))) # (!\ad|Add2~57\ & ((B1_adc_data5[7]))))) # (!\ad|sta\(0) & (((\ad|Add2~57\))))
-- \ad|adc_data5\(7) = DFFEAS(\ad|Add2~58\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(7),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(7),
	datad => \ad|Add2~57\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~58\,
	regout => \ad|adc_data5\(7));

-- Location: LC_X6_Y7_N7
\ad|Mux19~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux19~1_combout\ = (\ad|sta\(2) & ((\ad|Mux19~0\ & (\ad|adc_data5\(7))) # (!\ad|Mux19~0\ & ((\ad|adc_data4\(7)))))) # (!\ad|sta\(2) & (((\ad|Mux19~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(7),
	datab => \ad|adc_data4\(7),
	datac => \ad|sta\(2),
	datad => \ad|Mux19~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux19~1_combout\);

-- Location: LC_X5_Y7_N9
\ad|adc_max[7]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(7) = DFFEAS(((\ad|sta\(1) & (\ad|Mux19~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux19~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|sta\(1),
	datac => \ad|Mux19~2_combout\,
	datad => \ad|Mux19~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(7));

-- Location: LC_X6_Y7_N1
\ad|adc_data3[7]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~60\ = (\ad|Add2~59\ & (((B1_adc_data3[7])) # (!\ad|Add2~21_combout\))) # (!\ad|Add2~59\ & (\ad|Add2~21_combout\ & ((\ad|Add2~58\))))
-- \ad|adc_data3\(7) = DFFEAS(\ad|Add2~60\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~59\,
	datab => \ad|Add2~21_combout\,
	datac => \ad|adc_data2\(7),
	datad => \ad|Add2~58\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~60\,
	regout => \ad|adc_data3\(7));

-- Location: LC_X6_Y7_N0
\ad|Mux19~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux19~2_combout\ = ((\ad|sta\(0) & ((\ad|adc_data3\(7)))) # (!\ad|sta\(0) & (\ad|adc_data2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|sta\(0),
	datac => \ad|adc_data2\(7),
	datad => \ad|adc_data3\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux19~2_combout\);

-- Location: LC_X6_Y9_N7
\ad|adc_min[7]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(7) = DFFEAS(((\ad|sta\(1) & (\ad|Mux19~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux19~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux19~2_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux19~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(7));

-- Location: LC_X5_Y8_N2
\ad|adc_data3[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux20~2\ = ((\ad|sta\(0) & ((B1_adc_data3[6]))) # (!\ad|sta\(0) & (\ad|adc_data2\(6))))
-- \ad|adc_data3\(6) = DFFEAS(\ad|Mux20~2\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|adc_data2\(6),
	datac => \ad|adc_data2\(6),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux20~2\,
	regout => \ad|adc_data3\(6));

-- Location: LC_X5_Y8_N3
\ad|adc_data4[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~66\ = (\ad|sta\(0) & (((\ad|sta\(1))))) # (!\ad|sta\(0) & ((\ad|sta\(1) & (!\ad|adc_max\(6))) # (!\ad|sta\(1) & ((B1_adc_data4[6])))))
-- \ad|adc_data4\(6) = DFFEAS(\ad|Add2~66\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data3\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_max\(6),
	datab => \ad|sta\(0),
	datac => \ad|adc_data3\(6),
	datad => \ad|sta\(1),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~66\,
	regout => \ad|adc_data4\(6));

-- Location: LC_X5_Y8_N4
\ad|adc_data5[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~67\ = (\ad|sta\(0) & ((\ad|Add2~66\ & (!\ad|adc_min\(6))) # (!\ad|Add2~66\ & ((B1_adc_data5[6]))))) # (!\ad|sta\(0) & (((\ad|Add2~66\))))
-- \ad|adc_data5\(6) = DFFEAS(\ad|Add2~67\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data4\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_min\(6),
	datab => \ad|sta\(0),
	datac => \ad|adc_data4\(6),
	datad => \ad|Add2~66\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~67\,
	regout => \ad|adc_data5\(6));

-- Location: LC_X5_Y8_N5
\ad|adc_data1[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~68\ = (\ad|Add2~21_combout\ & ((\ad|Add2~22_combout\) # ((\ad|Add2~67\)))) # (!\ad|Add2~21_combout\ & (!\ad|Add2~22_combout\ & (B1_adc_data1[6])))
-- \ad|adc_data1\(6) = DFFEAS(\ad|Add2~68\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_out\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_out\(6),
	datad => \ad|Add2~67\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~68\,
	regout => \ad|adc_data1\(6));

-- Location: LC_X4_Y4_N7
\ad|adc_out[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Mux20~0\ = (\ad|sta\(2) & (((\ad|sta\(0))))) # (!\ad|sta\(2) & ((\ad|sta\(0) & (\ad|adc_data1\(6))) # (!\ad|sta\(0) & ((B1_adc_out[6])))))
-- \ad|adc_out\(6) = DFFEAS(\ad|Mux20~0\, GLOBAL(\clk~combout\), VCC, , \ad|cs_n~regout\, \ad|rsr\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_data1\(6),
	datab => \ad|sta\(2),
	datac => \ad|rsr\(6),
	datad => \ad|sta\(0),
	aclr => GND,
	sload => VCC,
	ena => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux20~0\,
	regout => \ad|adc_out\(6));

-- Location: LC_X5_Y8_N1
\ad|adc_data2[6]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~69\ = (\ad|Add2~68\ & (((\ad|adc_data3\(6))) # (!\ad|Add2~22_combout\))) # (!\ad|Add2~68\ & (\ad|Add2~22_combout\ & (B1_adc_data2[6])))
-- \ad|adc_data2\(6) = DFFEAS(\ad|Add2~69\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data1\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~68\,
	datab => \ad|Add2~22_combout\,
	datac => \ad|adc_data1\(6),
	datad => \ad|adc_data3\(6),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~69\,
	regout => \ad|adc_data2\(6));

-- Location: LC_X5_Y7_N7
\ad|adc_max[6]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(6) = DFFEAS(((\ad|sta\(1) & (\ad|Mux20~2\)) # (!\ad|sta\(1) & ((\ad|Mux20~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|sta\(1),
	datac => \ad|Mux20~2\,
	datad => \ad|Mux20~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(6));

-- Location: LC_X4_Y8_N8
\ad|Mux20~1\ : maxii_lcell
-- Equation(s):
-- \ad|Mux20~1_combout\ = (\ad|sta\(2) & ((\ad|Mux20~0\ & ((\ad|adc_data5\(6)))) # (!\ad|Mux20~0\ & (\ad|adc_data4\(6))))) # (!\ad|sta\(2) & (((\ad|Mux20~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(6),
	datab => \ad|sta\(2),
	datac => \ad|adc_data5\(6),
	datad => \ad|Mux20~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux20~1_combout\);

-- Location: LC_X6_Y9_N8
\ad|adc_min[6]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(6) = DFFEAS(((\ad|sta\(1) & ((\ad|Mux20~2\))) # (!\ad|sta\(1) & (\ad|Mux20~1_combout\))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|Mux20~1_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux20~2\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(6));

-- Location: LC_X3_Y6_N0
\ad|LessThan10~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~27_cout0\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data4\(6) & !\ad|LessThan10~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data4\(6)) # (!\ad|LessThan10~32_cout\))))
-- \ad|LessThan10~27COUT1_65\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data4\(6) & !\ad|LessThan10~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data4\(6)) # (!\ad|LessThan10~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(6),
	datab => \ad|adc_data4\(6),
	cin => \ad|LessThan10~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~25\,
	cout0 => \ad|LessThan10~27_cout0\,
	cout1 => \ad|LessThan10~27COUT1_65\);

-- Location: LC_X3_Y6_N1
\ad|LessThan10~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~22_cout0\ = CARRY((\ad|adc_min\(7) & ((!\ad|LessThan10~27_cout0\) # (!\ad|adc_data4\(7)))) # (!\ad|adc_min\(7) & (!\ad|adc_data4\(7) & !\ad|LessThan10~27_cout0\)))
-- \ad|LessThan10~22COUT1_66\ = CARRY((\ad|adc_min\(7) & ((!\ad|LessThan10~27COUT1_65\) # (!\ad|adc_data4\(7)))) # (!\ad|adc_min\(7) & (!\ad|adc_data4\(7) & !\ad|LessThan10~27COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(7),
	datab => \ad|adc_data4\(7),
	cin => \ad|LessThan10~32_cout\,
	cin0 => \ad|LessThan10~27_cout0\,
	cin1 => \ad|LessThan10~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~20\,
	cout0 => \ad|LessThan10~22_cout0\,
	cout1 => \ad|LessThan10~22COUT1_66\);

-- Location: LC_X3_Y6_N2
\ad|LessThan10~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~17_cout0\ = CARRY((\ad|adc_data4\(8) & ((!\ad|LessThan10~22_cout0\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data4\(8) & (!\ad|adc_min\(8) & !\ad|LessThan10~22_cout0\)))
-- \ad|LessThan10~17COUT1_67\ = CARRY((\ad|adc_data4\(8) & ((!\ad|LessThan10~22COUT1_66\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data4\(8) & (!\ad|adc_min\(8) & !\ad|LessThan10~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(8),
	datab => \ad|adc_min\(8),
	cin => \ad|LessThan10~32_cout\,
	cin0 => \ad|LessThan10~22_cout0\,
	cin1 => \ad|LessThan10~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~15\,
	cout0 => \ad|LessThan10~17_cout0\,
	cout1 => \ad|LessThan10~17COUT1_67\);

-- Location: LC_X3_Y6_N3
\ad|LessThan10~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~12_cout0\ = CARRY((\ad|adc_min\(9) & ((!\ad|LessThan10~17_cout0\) # (!\ad|adc_data4\(9)))) # (!\ad|adc_min\(9) & (!\ad|adc_data4\(9) & !\ad|LessThan10~17_cout0\)))
-- \ad|LessThan10~12COUT1_68\ = CARRY((\ad|adc_min\(9) & ((!\ad|LessThan10~17COUT1_67\) # (!\ad|adc_data4\(9)))) # (!\ad|adc_min\(9) & (!\ad|adc_data4\(9) & !\ad|LessThan10~17COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(9),
	datab => \ad|adc_data4\(9),
	cin => \ad|LessThan10~32_cout\,
	cin0 => \ad|LessThan10~17_cout0\,
	cin1 => \ad|LessThan10~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~10\,
	cout0 => \ad|LessThan10~12_cout0\,
	cout1 => \ad|LessThan10~12COUT1_68\);

-- Location: LC_X3_Y6_N4
\ad|LessThan10~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~7_cout\ = CARRY((\ad|adc_data4\(10) & ((!\ad|LessThan10~12COUT1_68\) # (!\ad|adc_min\(10)))) # (!\ad|adc_data4\(10) & (!\ad|adc_min\(10) & !\ad|LessThan10~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(10),
	datab => \ad|adc_min\(10),
	cin => \ad|LessThan10~32_cout\,
	cin0 => \ad|LessThan10~12_cout0\,
	cin1 => \ad|LessThan10~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~5\,
	cout => \ad|LessThan10~7_cout\);

-- Location: LC_X3_Y6_N5
\ad|LessThan10~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan10~0_combout\ = (\ad|adc_data4\(11) & (((\ad|LessThan10~7_cout\) # (!\ad|adc_min\(11))))) # (!\ad|adc_data4\(11) & (((\ad|LessThan10~7_cout\ & !\ad|adc_min\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(11),
	datad => \ad|adc_min\(11),
	cin => \ad|LessThan10~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan10~0_combout\);

-- Location: LC_X3_Y9_N4
\ad|LessThan8~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~57_cout\ = CARRY((\ad|adc_data3\(0) & (!\ad|adc_min\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(0),
	datab => \ad|adc_min\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~55\,
	cout => \ad|LessThan8~57_cout\);

-- Location: LC_X3_Y9_N5
\ad|LessThan8~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~52_cout0\ = CARRY((\ad|adc_data3\(1) & (\ad|adc_min\(1) & !\ad|LessThan8~57_cout\)) # (!\ad|adc_data3\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan8~57_cout\))))
-- \ad|LessThan8~52COUT1_61\ = CARRY((\ad|adc_data3\(1) & (\ad|adc_min\(1) & !\ad|LessThan8~57_cout\)) # (!\ad|adc_data3\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan8~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(1),
	datab => \ad|adc_min\(1),
	cin => \ad|LessThan8~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~50\,
	cout0 => \ad|LessThan8~52_cout0\,
	cout1 => \ad|LessThan8~52COUT1_61\);

-- Location: LC_X3_Y9_N6
\ad|LessThan8~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~47_cout0\ = CARRY((\ad|adc_data3\(2) & ((!\ad|LessThan8~52_cout0\) # (!\ad|adc_min\(2)))) # (!\ad|adc_data3\(2) & (!\ad|adc_min\(2) & !\ad|LessThan8~52_cout0\)))
-- \ad|LessThan8~47COUT1_62\ = CARRY((\ad|adc_data3\(2) & ((!\ad|LessThan8~52COUT1_61\) # (!\ad|adc_min\(2)))) # (!\ad|adc_data3\(2) & (!\ad|adc_min\(2) & !\ad|LessThan8~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(2),
	datab => \ad|adc_min\(2),
	cin => \ad|LessThan8~57_cout\,
	cin0 => \ad|LessThan8~52_cout0\,
	cin1 => \ad|LessThan8~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~45\,
	cout0 => \ad|LessThan8~47_cout0\,
	cout1 => \ad|LessThan8~47COUT1_62\);

-- Location: LC_X3_Y9_N7
\ad|LessThan8~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~42_cout0\ = CARRY((\ad|adc_data3\(3) & (\ad|adc_min\(3) & !\ad|LessThan8~47_cout0\)) # (!\ad|adc_data3\(3) & ((\ad|adc_min\(3)) # (!\ad|LessThan8~47_cout0\))))
-- \ad|LessThan8~42COUT1_63\ = CARRY((\ad|adc_data3\(3) & (\ad|adc_min\(3) & !\ad|LessThan8~47COUT1_62\)) # (!\ad|adc_data3\(3) & ((\ad|adc_min\(3)) # (!\ad|LessThan8~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(3),
	datab => \ad|adc_min\(3),
	cin => \ad|LessThan8~57_cout\,
	cin0 => \ad|LessThan8~47_cout0\,
	cin1 => \ad|LessThan8~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~40\,
	cout0 => \ad|LessThan8~42_cout0\,
	cout1 => \ad|LessThan8~42COUT1_63\);

-- Location: LC_X3_Y9_N8
\ad|LessThan8~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~37_cout0\ = CARRY((\ad|adc_data3\(4) & ((!\ad|LessThan8~42_cout0\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data3\(4) & (!\ad|adc_min\(4) & !\ad|LessThan8~42_cout0\)))
-- \ad|LessThan8~37COUT1_64\ = CARRY((\ad|adc_data3\(4) & ((!\ad|LessThan8~42COUT1_63\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data3\(4) & (!\ad|adc_min\(4) & !\ad|LessThan8~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(4),
	datab => \ad|adc_min\(4),
	cin => \ad|LessThan8~57_cout\,
	cin0 => \ad|LessThan8~42_cout0\,
	cin1 => \ad|LessThan8~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~35\,
	cout0 => \ad|LessThan8~37_cout0\,
	cout1 => \ad|LessThan8~37COUT1_64\);

-- Location: LC_X3_Y9_N9
\ad|LessThan8~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~32_cout\ = CARRY((\ad|adc_data3\(5) & (\ad|adc_min\(5) & !\ad|LessThan8~37COUT1_64\)) # (!\ad|adc_data3\(5) & ((\ad|adc_min\(5)) # (!\ad|LessThan8~37COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(5),
	datab => \ad|adc_min\(5),
	cin => \ad|LessThan8~57_cout\,
	cin0 => \ad|LessThan8~37_cout0\,
	cin1 => \ad|LessThan8~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~30\,
	cout => \ad|LessThan8~32_cout\);

-- Location: LC_X4_Y9_N0
\ad|LessThan8~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~27_cout0\ = CARRY((\ad|adc_data3\(6) & ((!\ad|LessThan8~32_cout\) # (!\ad|adc_min\(6)))) # (!\ad|adc_data3\(6) & (!\ad|adc_min\(6) & !\ad|LessThan8~32_cout\)))
-- \ad|LessThan8~27COUT1_65\ = CARRY((\ad|adc_data3\(6) & ((!\ad|LessThan8~32_cout\) # (!\ad|adc_min\(6)))) # (!\ad|adc_data3\(6) & (!\ad|adc_min\(6) & !\ad|LessThan8~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(6),
	datab => \ad|adc_min\(6),
	cin => \ad|LessThan8~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~25\,
	cout0 => \ad|LessThan8~27_cout0\,
	cout1 => \ad|LessThan8~27COUT1_65\);

-- Location: LC_X4_Y9_N1
\ad|LessThan8~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~22_cout0\ = CARRY((\ad|adc_data3\(7) & (\ad|adc_min\(7) & !\ad|LessThan8~27_cout0\)) # (!\ad|adc_data3\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan8~27_cout0\))))
-- \ad|LessThan8~22COUT1_66\ = CARRY((\ad|adc_data3\(7) & (\ad|adc_min\(7) & !\ad|LessThan8~27COUT1_65\)) # (!\ad|adc_data3\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan8~27COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(7),
	datab => \ad|adc_min\(7),
	cin => \ad|LessThan8~32_cout\,
	cin0 => \ad|LessThan8~27_cout0\,
	cin1 => \ad|LessThan8~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~20\,
	cout0 => \ad|LessThan8~22_cout0\,
	cout1 => \ad|LessThan8~22COUT1_66\);

-- Location: LC_X4_Y9_N2
\ad|LessThan8~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~17_cout0\ = CARRY((\ad|adc_data3\(8) & ((!\ad|LessThan8~22_cout0\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data3\(8) & (!\ad|adc_min\(8) & !\ad|LessThan8~22_cout0\)))
-- \ad|LessThan8~17COUT1_67\ = CARRY((\ad|adc_data3\(8) & ((!\ad|LessThan8~22COUT1_66\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data3\(8) & (!\ad|adc_min\(8) & !\ad|LessThan8~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(8),
	datab => \ad|adc_min\(8),
	cin => \ad|LessThan8~32_cout\,
	cin0 => \ad|LessThan8~22_cout0\,
	cin1 => \ad|LessThan8~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~15\,
	cout0 => \ad|LessThan8~17_cout0\,
	cout1 => \ad|LessThan8~17COUT1_67\);

-- Location: LC_X4_Y9_N3
\ad|LessThan8~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~12_cout0\ = CARRY((\ad|adc_data3\(9) & (\ad|adc_min\(9) & !\ad|LessThan8~17_cout0\)) # (!\ad|adc_data3\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan8~17_cout0\))))
-- \ad|LessThan8~12COUT1_68\ = CARRY((\ad|adc_data3\(9) & (\ad|adc_min\(9) & !\ad|LessThan8~17COUT1_67\)) # (!\ad|adc_data3\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan8~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(9),
	datab => \ad|adc_min\(9),
	cin => \ad|LessThan8~32_cout\,
	cin0 => \ad|LessThan8~17_cout0\,
	cin1 => \ad|LessThan8~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~10\,
	cout0 => \ad|LessThan8~12_cout0\,
	cout1 => \ad|LessThan8~12COUT1_68\);

-- Location: LC_X4_Y9_N4
\ad|LessThan8~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~7_cout\ = CARRY((\ad|adc_data3\(10) & ((!\ad|LessThan8~12COUT1_68\) # (!\ad|adc_min\(10)))) # (!\ad|adc_data3\(10) & (!\ad|adc_min\(10) & !\ad|LessThan8~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(10),
	datab => \ad|adc_min\(10),
	cin => \ad|LessThan8~32_cout\,
	cin0 => \ad|LessThan8~12_cout0\,
	cin1 => \ad|LessThan8~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~5\,
	cout => \ad|LessThan8~7_cout\);

-- Location: LC_X4_Y9_N5
\ad|LessThan8~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan8~0_combout\ = (\ad|adc_min\(11) & (\ad|adc_data3\(11) & (\ad|LessThan8~7_cout\))) # (!\ad|adc_min\(11) & ((\ad|adc_data3\(11)) # ((\ad|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(11),
	datab => \ad|adc_data3\(11),
	cin => \ad|LessThan8~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan8~0_combout\);

-- Location: LC_X5_Y9_N4
\ad|LessThan6~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~57_cout\ = CARRY((\ad|adc_data2\(0) & (!\ad|adc_min\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(0),
	datab => \ad|adc_min\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~55\,
	cout => \ad|LessThan6~57_cout\);

-- Location: LC_X5_Y9_N5
\ad|LessThan6~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~52_cout0\ = CARRY((\ad|adc_data2\(1) & (\ad|adc_min\(1) & !\ad|LessThan6~57_cout\)) # (!\ad|adc_data2\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan6~57_cout\))))
-- \ad|LessThan6~52COUT1_61\ = CARRY((\ad|adc_data2\(1) & (\ad|adc_min\(1) & !\ad|LessThan6~57_cout\)) # (!\ad|adc_data2\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan6~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(1),
	datab => \ad|adc_min\(1),
	cin => \ad|LessThan6~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~50\,
	cout0 => \ad|LessThan6~52_cout0\,
	cout1 => \ad|LessThan6~52COUT1_61\);

-- Location: LC_X5_Y9_N6
\ad|LessThan6~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~47_cout0\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data2\(2) & !\ad|LessThan6~52_cout0\)) # (!\ad|adc_min\(2) & ((\ad|adc_data2\(2)) # (!\ad|LessThan6~52_cout0\))))
-- \ad|LessThan6~47COUT1_62\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data2\(2) & !\ad|LessThan6~52COUT1_61\)) # (!\ad|adc_min\(2) & ((\ad|adc_data2\(2)) # (!\ad|LessThan6~52COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(2),
	datab => \ad|adc_data2\(2),
	cin => \ad|LessThan6~57_cout\,
	cin0 => \ad|LessThan6~52_cout0\,
	cin1 => \ad|LessThan6~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~45\,
	cout0 => \ad|LessThan6~47_cout0\,
	cout1 => \ad|LessThan6~47COUT1_62\);

-- Location: LC_X5_Y9_N7
\ad|LessThan6~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~42_cout0\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan6~47_cout0\) # (!\ad|adc_data2\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data2\(3) & !\ad|LessThan6~47_cout0\)))
-- \ad|LessThan6~42COUT1_63\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan6~47COUT1_62\) # (!\ad|adc_data2\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data2\(3) & !\ad|LessThan6~47COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(3),
	datab => \ad|adc_data2\(3),
	cin => \ad|LessThan6~57_cout\,
	cin0 => \ad|LessThan6~47_cout0\,
	cin1 => \ad|LessThan6~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~40\,
	cout0 => \ad|LessThan6~42_cout0\,
	cout1 => \ad|LessThan6~42COUT1_63\);

-- Location: LC_X5_Y9_N8
\ad|LessThan6~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~37_cout0\ = CARRY((\ad|adc_data2\(4) & ((!\ad|LessThan6~42_cout0\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data2\(4) & (!\ad|adc_min\(4) & !\ad|LessThan6~42_cout0\)))
-- \ad|LessThan6~37COUT1_64\ = CARRY((\ad|adc_data2\(4) & ((!\ad|LessThan6~42COUT1_63\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data2\(4) & (!\ad|adc_min\(4) & !\ad|LessThan6~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(4),
	datab => \ad|adc_min\(4),
	cin => \ad|LessThan6~57_cout\,
	cin0 => \ad|LessThan6~42_cout0\,
	cin1 => \ad|LessThan6~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~35\,
	cout0 => \ad|LessThan6~37_cout0\,
	cout1 => \ad|LessThan6~37COUT1_64\);

-- Location: LC_X5_Y9_N9
\ad|LessThan6~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~32_cout\ = CARRY((\ad|adc_min\(5) & ((!\ad|LessThan6~37COUT1_64\) # (!\ad|adc_data2\(5)))) # (!\ad|adc_min\(5) & (!\ad|adc_data2\(5) & !\ad|LessThan6~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(5),
	datab => \ad|adc_data2\(5),
	cin => \ad|LessThan6~57_cout\,
	cin0 => \ad|LessThan6~37_cout0\,
	cin1 => \ad|LessThan6~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~30\,
	cout => \ad|LessThan6~32_cout\);

-- Location: LC_X6_Y9_N0
\ad|LessThan6~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~27_cout0\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data2\(6) & !\ad|LessThan6~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data2\(6)) # (!\ad|LessThan6~32_cout\))))
-- \ad|LessThan6~27COUT1_65\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data2\(6) & !\ad|LessThan6~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data2\(6)) # (!\ad|LessThan6~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(6),
	datab => \ad|adc_data2\(6),
	cin => \ad|LessThan6~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~25\,
	cout0 => \ad|LessThan6~27_cout0\,
	cout1 => \ad|LessThan6~27COUT1_65\);

-- Location: LC_X6_Y9_N1
\ad|LessThan6~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~22_cout0\ = CARRY((\ad|adc_data2\(7) & (\ad|adc_min\(7) & !\ad|LessThan6~27_cout0\)) # (!\ad|adc_data2\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan6~27_cout0\))))
-- \ad|LessThan6~22COUT1_66\ = CARRY((\ad|adc_data2\(7) & (\ad|adc_min\(7) & !\ad|LessThan6~27COUT1_65\)) # (!\ad|adc_data2\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan6~27COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(7),
	datab => \ad|adc_min\(7),
	cin => \ad|LessThan6~32_cout\,
	cin0 => \ad|LessThan6~27_cout0\,
	cin1 => \ad|LessThan6~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~20\,
	cout0 => \ad|LessThan6~22_cout0\,
	cout1 => \ad|LessThan6~22COUT1_66\);

-- Location: LC_X6_Y9_N2
\ad|LessThan6~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~17_cout0\ = CARRY((\ad|adc_data2\(8) & ((!\ad|LessThan6~22_cout0\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data2\(8) & (!\ad|adc_min\(8) & !\ad|LessThan6~22_cout0\)))
-- \ad|LessThan6~17COUT1_67\ = CARRY((\ad|adc_data2\(8) & ((!\ad|LessThan6~22COUT1_66\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data2\(8) & (!\ad|adc_min\(8) & !\ad|LessThan6~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(8),
	datab => \ad|adc_min\(8),
	cin => \ad|LessThan6~32_cout\,
	cin0 => \ad|LessThan6~22_cout0\,
	cin1 => \ad|LessThan6~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~15\,
	cout0 => \ad|LessThan6~17_cout0\,
	cout1 => \ad|LessThan6~17COUT1_67\);

-- Location: LC_X6_Y9_N3
\ad|LessThan6~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~12_cout0\ = CARRY((\ad|adc_data2\(9) & (\ad|adc_min\(9) & !\ad|LessThan6~17_cout0\)) # (!\ad|adc_data2\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan6~17_cout0\))))
-- \ad|LessThan6~12COUT1_68\ = CARRY((\ad|adc_data2\(9) & (\ad|adc_min\(9) & !\ad|LessThan6~17COUT1_67\)) # (!\ad|adc_data2\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan6~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(9),
	datab => \ad|adc_min\(9),
	cin => \ad|LessThan6~32_cout\,
	cin0 => \ad|LessThan6~17_cout0\,
	cin1 => \ad|LessThan6~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~10\,
	cout0 => \ad|LessThan6~12_cout0\,
	cout1 => \ad|LessThan6~12COUT1_68\);

-- Location: LC_X6_Y9_N4
\ad|LessThan6~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~7_cout\ = CARRY((\ad|adc_min\(10) & (\ad|adc_data2\(10) & !\ad|LessThan6~12COUT1_68\)) # (!\ad|adc_min\(10) & ((\ad|adc_data2\(10)) # (!\ad|LessThan6~12COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(10),
	datab => \ad|adc_data2\(10),
	cin => \ad|LessThan6~32_cout\,
	cin0 => \ad|LessThan6~12_cout0\,
	cin1 => \ad|LessThan6~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~5\,
	cout => \ad|LessThan6~7_cout\);

-- Location: LC_X6_Y9_N5
\ad|LessThan6~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan6~0_combout\ = ((\ad|adc_data2\(11) & ((\ad|LessThan6~7_cout\) # (!\ad|adc_min\(11)))) # (!\ad|adc_data2\(11) & (\ad|LessThan6~7_cout\ & !\ad|adc_min\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data2\(11),
	datad => \ad|adc_min\(11),
	cin => \ad|LessThan6~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan6~0_combout\);

-- Location: LC_X4_Y9_N6
\ad|adc_min[4]~0\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min[4]~0_combout\ = (\ad|sta\(1) & ((\ad|sta\(0) & (\ad|LessThan8~0_combout\)) # (!\ad|sta\(0) & ((\ad|LessThan6~0_combout\))))) # (!\ad|sta\(1) & (\ad|sta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|sta\(0),
	datac => \ad|LessThan8~0_combout\,
	datad => \ad|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_min[4]~0_combout\);

-- Location: LC_X4_Y5_N4
\ad|LessThan4~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~57_cout\ = CARRY((!\ad|adc_min\(0) & (\ad|adc_data1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(0),
	datab => \ad|adc_data1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~55\,
	cout => \ad|LessThan4~57_cout\);

-- Location: LC_X4_Y5_N5
\ad|LessThan4~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~52_cout0\ = CARRY((\ad|adc_data1\(1) & (\ad|adc_min\(1) & !\ad|LessThan4~57_cout\)) # (!\ad|adc_data1\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan4~57_cout\))))
-- \ad|LessThan4~52COUT1_61\ = CARRY((\ad|adc_data1\(1) & (\ad|adc_min\(1) & !\ad|LessThan4~57_cout\)) # (!\ad|adc_data1\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan4~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(1),
	datab => \ad|adc_min\(1),
	cin => \ad|LessThan4~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~50\,
	cout0 => \ad|LessThan4~52_cout0\,
	cout1 => \ad|LessThan4~52COUT1_61\);

-- Location: LC_X4_Y5_N6
\ad|LessThan4~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~47_cout0\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data1\(2) & !\ad|LessThan4~52_cout0\)) # (!\ad|adc_min\(2) & ((\ad|adc_data1\(2)) # (!\ad|LessThan4~52_cout0\))))
-- \ad|LessThan4~47COUT1_62\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data1\(2) & !\ad|LessThan4~52COUT1_61\)) # (!\ad|adc_min\(2) & ((\ad|adc_data1\(2)) # (!\ad|LessThan4~52COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(2),
	datab => \ad|adc_data1\(2),
	cin => \ad|LessThan4~57_cout\,
	cin0 => \ad|LessThan4~52_cout0\,
	cin1 => \ad|LessThan4~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~45\,
	cout0 => \ad|LessThan4~47_cout0\,
	cout1 => \ad|LessThan4~47COUT1_62\);

-- Location: LC_X4_Y5_N7
\ad|LessThan4~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~42_cout0\ = CARRY((\ad|adc_data1\(3) & (\ad|adc_min\(3) & !\ad|LessThan4~47_cout0\)) # (!\ad|adc_data1\(3) & ((\ad|adc_min\(3)) # (!\ad|LessThan4~47_cout0\))))
-- \ad|LessThan4~42COUT1_63\ = CARRY((\ad|adc_data1\(3) & (\ad|adc_min\(3) & !\ad|LessThan4~47COUT1_62\)) # (!\ad|adc_data1\(3) & ((\ad|adc_min\(3)) # (!\ad|LessThan4~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(3),
	datab => \ad|adc_min\(3),
	cin => \ad|LessThan4~57_cout\,
	cin0 => \ad|LessThan4~47_cout0\,
	cin1 => \ad|LessThan4~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~40\,
	cout0 => \ad|LessThan4~42_cout0\,
	cout1 => \ad|LessThan4~42COUT1_63\);

-- Location: LC_X4_Y5_N8
\ad|LessThan4~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~37_cout0\ = CARRY((\ad|adc_min\(4) & (\ad|adc_data1\(4) & !\ad|LessThan4~42_cout0\)) # (!\ad|adc_min\(4) & ((\ad|adc_data1\(4)) # (!\ad|LessThan4~42_cout0\))))
-- \ad|LessThan4~37COUT1_64\ = CARRY((\ad|adc_min\(4) & (\ad|adc_data1\(4) & !\ad|LessThan4~42COUT1_63\)) # (!\ad|adc_min\(4) & ((\ad|adc_data1\(4)) # (!\ad|LessThan4~42COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(4),
	datab => \ad|adc_data1\(4),
	cin => \ad|LessThan4~57_cout\,
	cin0 => \ad|LessThan4~42_cout0\,
	cin1 => \ad|LessThan4~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~35\,
	cout0 => \ad|LessThan4~37_cout0\,
	cout1 => \ad|LessThan4~37COUT1_64\);

-- Location: LC_X4_Y5_N9
\ad|LessThan4~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~32_cout\ = CARRY((\ad|adc_data1\(5) & (\ad|adc_min\(5) & !\ad|LessThan4~37COUT1_64\)) # (!\ad|adc_data1\(5) & ((\ad|adc_min\(5)) # (!\ad|LessThan4~37COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(5),
	datab => \ad|adc_min\(5),
	cin => \ad|LessThan4~57_cout\,
	cin0 => \ad|LessThan4~37_cout0\,
	cin1 => \ad|LessThan4~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~30\,
	cout => \ad|LessThan4~32_cout\);

-- Location: LC_X5_Y5_N0
\ad|LessThan4~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~27_cout0\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data1\(6) & !\ad|LessThan4~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data1\(6)) # (!\ad|LessThan4~32_cout\))))
-- \ad|LessThan4~27COUT1_65\ = CARRY((\ad|adc_min\(6) & (\ad|adc_data1\(6) & !\ad|LessThan4~32_cout\)) # (!\ad|adc_min\(6) & ((\ad|adc_data1\(6)) # (!\ad|LessThan4~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(6),
	datab => \ad|adc_data1\(6),
	cin => \ad|LessThan4~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~25\,
	cout0 => \ad|LessThan4~27_cout0\,
	cout1 => \ad|LessThan4~27COUT1_65\);

-- Location: LC_X5_Y5_N1
\ad|LessThan4~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~22_cout0\ = CARRY((\ad|adc_min\(7) & ((!\ad|LessThan4~27_cout0\) # (!\ad|adc_data1\(7)))) # (!\ad|adc_min\(7) & (!\ad|adc_data1\(7) & !\ad|LessThan4~27_cout0\)))
-- \ad|LessThan4~22COUT1_66\ = CARRY((\ad|adc_min\(7) & ((!\ad|LessThan4~27COUT1_65\) # (!\ad|adc_data1\(7)))) # (!\ad|adc_min\(7) & (!\ad|adc_data1\(7) & !\ad|LessThan4~27COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(7),
	datab => \ad|adc_data1\(7),
	cin => \ad|LessThan4~32_cout\,
	cin0 => \ad|LessThan4~27_cout0\,
	cin1 => \ad|LessThan4~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~20\,
	cout0 => \ad|LessThan4~22_cout0\,
	cout1 => \ad|LessThan4~22COUT1_66\);

-- Location: LC_X5_Y5_N2
\ad|LessThan4~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~17_cout0\ = CARRY((\ad|adc_data1\(8) & ((!\ad|LessThan4~22_cout0\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data1\(8) & (!\ad|adc_min\(8) & !\ad|LessThan4~22_cout0\)))
-- \ad|LessThan4~17COUT1_67\ = CARRY((\ad|adc_data1\(8) & ((!\ad|LessThan4~22COUT1_66\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data1\(8) & (!\ad|adc_min\(8) & !\ad|LessThan4~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(8),
	datab => \ad|adc_min\(8),
	cin => \ad|LessThan4~32_cout\,
	cin0 => \ad|LessThan4~22_cout0\,
	cin1 => \ad|LessThan4~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~15\,
	cout0 => \ad|LessThan4~17_cout0\,
	cout1 => \ad|LessThan4~17COUT1_67\);

-- Location: LC_X5_Y5_N3
\ad|LessThan4~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~12_cout0\ = CARRY((\ad|adc_data1\(9) & (\ad|adc_min\(9) & !\ad|LessThan4~17_cout0\)) # (!\ad|adc_data1\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan4~17_cout0\))))
-- \ad|LessThan4~12COUT1_68\ = CARRY((\ad|adc_data1\(9) & (\ad|adc_min\(9) & !\ad|LessThan4~17COUT1_67\)) # (!\ad|adc_data1\(9) & ((\ad|adc_min\(9)) # (!\ad|LessThan4~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(9),
	datab => \ad|adc_min\(9),
	cin => \ad|LessThan4~32_cout\,
	cin0 => \ad|LessThan4~17_cout0\,
	cin1 => \ad|LessThan4~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~10\,
	cout0 => \ad|LessThan4~12_cout0\,
	cout1 => \ad|LessThan4~12COUT1_68\);

-- Location: LC_X5_Y5_N4
\ad|LessThan4~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~7_cout\ = CARRY((\ad|adc_data1\(10) & ((!\ad|LessThan4~12COUT1_68\) # (!\ad|adc_min\(10)))) # (!\ad|adc_data1\(10) & (!\ad|adc_min\(10) & !\ad|LessThan4~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(10),
	datab => \ad|adc_min\(10),
	cin => \ad|LessThan4~32_cout\,
	cin0 => \ad|LessThan4~12_cout0\,
	cin1 => \ad|LessThan4~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~5\,
	cout => \ad|LessThan4~7_cout\);

-- Location: LC_X5_Y5_N5
\ad|LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan4~0_combout\ = ((\ad|adc_min\(11) & (\ad|LessThan4~7_cout\ & \ad|adc_data1\(11))) # (!\ad|adc_min\(11) & ((\ad|LessThan4~7_cout\) # (\ad|adc_data1\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_min\(11),
	datad => \ad|adc_data1\(11),
	cin => \ad|LessThan4~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan4~0_combout\);

-- Location: LC_X1_Y9_N4
\ad|LessThan12~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~57_cout\ = CARRY((!\ad|adc_min\(0) & (\ad|adc_data5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(0),
	datab => \ad|adc_data5\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~55\,
	cout => \ad|LessThan12~57_cout\);

-- Location: LC_X1_Y9_N5
\ad|LessThan12~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~52_cout0\ = CARRY((\ad|adc_data5\(1) & (\ad|adc_min\(1) & !\ad|LessThan12~57_cout\)) # (!\ad|adc_data5\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan12~57_cout\))))
-- \ad|LessThan12~52COUT1_61\ = CARRY((\ad|adc_data5\(1) & (\ad|adc_min\(1) & !\ad|LessThan12~57_cout\)) # (!\ad|adc_data5\(1) & ((\ad|adc_min\(1)) # (!\ad|LessThan12~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(1),
	datab => \ad|adc_min\(1),
	cin => \ad|LessThan12~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~50\,
	cout0 => \ad|LessThan12~52_cout0\,
	cout1 => \ad|LessThan12~52COUT1_61\);

-- Location: LC_X1_Y9_N6
\ad|LessThan12~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~47_cout0\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data5\(2) & !\ad|LessThan12~52_cout0\)) # (!\ad|adc_min\(2) & ((\ad|adc_data5\(2)) # (!\ad|LessThan12~52_cout0\))))
-- \ad|LessThan12~47COUT1_62\ = CARRY((\ad|adc_min\(2) & (\ad|adc_data5\(2) & !\ad|LessThan12~52COUT1_61\)) # (!\ad|adc_min\(2) & ((\ad|adc_data5\(2)) # (!\ad|LessThan12~52COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(2),
	datab => \ad|adc_data5\(2),
	cin => \ad|LessThan12~57_cout\,
	cin0 => \ad|LessThan12~52_cout0\,
	cin1 => \ad|LessThan12~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~45\,
	cout0 => \ad|LessThan12~47_cout0\,
	cout1 => \ad|LessThan12~47COUT1_62\);

-- Location: LC_X1_Y9_N7
\ad|LessThan12~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~42_cout0\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan12~47_cout0\) # (!\ad|adc_data5\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data5\(3) & !\ad|LessThan12~47_cout0\)))
-- \ad|LessThan12~42COUT1_63\ = CARRY((\ad|adc_min\(3) & ((!\ad|LessThan12~47COUT1_62\) # (!\ad|adc_data5\(3)))) # (!\ad|adc_min\(3) & (!\ad|adc_data5\(3) & !\ad|LessThan12~47COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(3),
	datab => \ad|adc_data5\(3),
	cin => \ad|LessThan12~57_cout\,
	cin0 => \ad|LessThan12~47_cout0\,
	cin1 => \ad|LessThan12~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~40\,
	cout0 => \ad|LessThan12~42_cout0\,
	cout1 => \ad|LessThan12~42COUT1_63\);

-- Location: LC_X1_Y9_N8
\ad|LessThan12~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~37_cout0\ = CARRY((\ad|adc_data5\(4) & ((!\ad|LessThan12~42_cout0\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data5\(4) & (!\ad|adc_min\(4) & !\ad|LessThan12~42_cout0\)))
-- \ad|LessThan12~37COUT1_64\ = CARRY((\ad|adc_data5\(4) & ((!\ad|LessThan12~42COUT1_63\) # (!\ad|adc_min\(4)))) # (!\ad|adc_data5\(4) & (!\ad|adc_min\(4) & !\ad|LessThan12~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(4),
	datab => \ad|adc_min\(4),
	cin => \ad|LessThan12~57_cout\,
	cin0 => \ad|LessThan12~42_cout0\,
	cin1 => \ad|LessThan12~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~35\,
	cout0 => \ad|LessThan12~37_cout0\,
	cout1 => \ad|LessThan12~37COUT1_64\);

-- Location: LC_X1_Y9_N9
\ad|LessThan12~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~32_cout\ = CARRY((\ad|adc_data5\(5) & (\ad|adc_min\(5) & !\ad|LessThan12~37COUT1_64\)) # (!\ad|adc_data5\(5) & ((\ad|adc_min\(5)) # (!\ad|LessThan12~37COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(5),
	datab => \ad|adc_min\(5),
	cin => \ad|LessThan12~57_cout\,
	cin0 => \ad|LessThan12~37_cout0\,
	cin1 => \ad|LessThan12~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~30\,
	cout => \ad|LessThan12~32_cout\);

-- Location: LC_X2_Y9_N0
\ad|LessThan12~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~27_cout0\ = CARRY((\ad|adc_data5\(6) & ((!\ad|LessThan12~32_cout\) # (!\ad|adc_min\(6)))) # (!\ad|adc_data5\(6) & (!\ad|adc_min\(6) & !\ad|LessThan12~32_cout\)))
-- \ad|LessThan12~27COUT1_65\ = CARRY((\ad|adc_data5\(6) & ((!\ad|LessThan12~32_cout\) # (!\ad|adc_min\(6)))) # (!\ad|adc_data5\(6) & (!\ad|adc_min\(6) & !\ad|LessThan12~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(6),
	datab => \ad|adc_min\(6),
	cin => \ad|LessThan12~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~25\,
	cout0 => \ad|LessThan12~27_cout0\,
	cout1 => \ad|LessThan12~27COUT1_65\);

-- Location: LC_X2_Y9_N1
\ad|LessThan12~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~22_cout0\ = CARRY((\ad|adc_data5\(7) & (\ad|adc_min\(7) & !\ad|LessThan12~27_cout0\)) # (!\ad|adc_data5\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan12~27_cout0\))))
-- \ad|LessThan12~22COUT1_66\ = CARRY((\ad|adc_data5\(7) & (\ad|adc_min\(7) & !\ad|LessThan12~27COUT1_65\)) # (!\ad|adc_data5\(7) & ((\ad|adc_min\(7)) # (!\ad|LessThan12~27COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(7),
	datab => \ad|adc_min\(7),
	cin => \ad|LessThan12~32_cout\,
	cin0 => \ad|LessThan12~27_cout0\,
	cin1 => \ad|LessThan12~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~20\,
	cout0 => \ad|LessThan12~22_cout0\,
	cout1 => \ad|LessThan12~22COUT1_66\);

-- Location: LC_X2_Y9_N2
\ad|LessThan12~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~17_cout0\ = CARRY((\ad|adc_data5\(8) & ((!\ad|LessThan12~22_cout0\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data5\(8) & (!\ad|adc_min\(8) & !\ad|LessThan12~22_cout0\)))
-- \ad|LessThan12~17COUT1_67\ = CARRY((\ad|adc_data5\(8) & ((!\ad|LessThan12~22COUT1_66\) # (!\ad|adc_min\(8)))) # (!\ad|adc_data5\(8) & (!\ad|adc_min\(8) & !\ad|LessThan12~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(8),
	datab => \ad|adc_min\(8),
	cin => \ad|LessThan12~32_cout\,
	cin0 => \ad|LessThan12~22_cout0\,
	cin1 => \ad|LessThan12~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~15\,
	cout0 => \ad|LessThan12~17_cout0\,
	cout1 => \ad|LessThan12~17COUT1_67\);

-- Location: LC_X2_Y9_N3
\ad|LessThan12~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~12_cout0\ = CARRY((\ad|adc_min\(9) & ((!\ad|LessThan12~17_cout0\) # (!\ad|adc_data5\(9)))) # (!\ad|adc_min\(9) & (!\ad|adc_data5\(9) & !\ad|LessThan12~17_cout0\)))
-- \ad|LessThan12~12COUT1_68\ = CARRY((\ad|adc_min\(9) & ((!\ad|LessThan12~17COUT1_67\) # (!\ad|adc_data5\(9)))) # (!\ad|adc_min\(9) & (!\ad|adc_data5\(9) & !\ad|LessThan12~17COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_min\(9),
	datab => \ad|adc_data5\(9),
	cin => \ad|LessThan12~32_cout\,
	cin0 => \ad|LessThan12~17_cout0\,
	cin1 => \ad|LessThan12~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~10\,
	cout0 => \ad|LessThan12~12_cout0\,
	cout1 => \ad|LessThan12~12COUT1_68\);

-- Location: LC_X2_Y9_N4
\ad|LessThan12~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~7_cout\ = CARRY((\ad|adc_data5\(10) & ((!\ad|LessThan12~12COUT1_68\) # (!\ad|adc_min\(10)))) # (!\ad|adc_data5\(10) & (!\ad|adc_min\(10) & !\ad|LessThan12~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(10),
	datab => \ad|adc_min\(10),
	cin => \ad|LessThan12~32_cout\,
	cin0 => \ad|LessThan12~12_cout0\,
	cin1 => \ad|LessThan12~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~5\,
	cout => \ad|LessThan12~7_cout\);

-- Location: LC_X2_Y9_N5
\ad|LessThan12~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan12~0_combout\ = ((\ad|adc_min\(11) & (\ad|LessThan12~7_cout\ & \ad|adc_data5\(11))) # (!\ad|adc_min\(11) & ((\ad|LessThan12~7_cout\) # (\ad|adc_data5\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_min\(11),
	datad => \ad|adc_data5\(11),
	cin => \ad|LessThan12~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan12~0_combout\);

-- Location: LC_X4_Y9_N7
\ad|adc_min[4]~1\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min[4]~1_combout\ = (\ad|sta\(2) & (((\ad|LessThan12~0_combout\) # (!\ad|adc_min[4]~0_combout\)))) # (!\ad|sta\(2) & (\ad|LessThan4~0_combout\ & ((\ad|adc_min[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|LessThan4~0_combout\,
	datac => \ad|LessThan12~0_combout\,
	datad => \ad|adc_min[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_min[4]~1_combout\);

-- Location: LC_X4_Y9_N8
\ad|adc_min[4]~2\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min[4]~2_combout\ = (\ad|sta\(1) & (((\ad|adc_min[4]~0_combout\) # (\ad|adc_min[4]~1_combout\)))) # (!\ad|sta\(1) & (\ad|adc_min[4]~1_combout\ & ((\ad|LessThan10~0_combout\) # (\ad|adc_min[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|LessThan10~0_combout\,
	datac => \ad|adc_min[4]~0_combout\,
	datad => \ad|adc_min[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_min[4]~2_combout\);

-- Location: LC_X4_Y9_N9
\ad|adc_min[4]~3\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min[4]~3_combout\ = (\ad|sta\(3) & ((\ad|sta\(1)) # ((\ad|adc_sum[3]~0_combout\)))) # (!\ad|sta\(3) & (((!\ad|adc_min[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|sta\(3),
	datad => \ad|adc_min[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_min[4]~3_combout\);

-- Location: LC_X2_Y9_N7
\ad|adc_min[11]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_min\(11) = DFFEAS(((\ad|sta\(1) & (\ad|Mux15~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux15~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_min[4]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux15~2_combout\,
	datac => \ad|Mux15~1_combout\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_min\(11));

-- Location: LC_X6_Y5_N0
\ad|adc_data3[11]\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~24\ = (\ad|Add2~21_combout\ & ((\ad|Add2~23\ & (B1_adc_data3[11])) # (!\ad|Add2~23\ & ((\ad|Add2~20\))))) # (!\ad|Add2~21_combout\ & (\ad|Add2~23\))
-- \ad|adc_data3\(11) = DFFEAS(\ad|Add2~24\, GLOBAL(\clk~combout\), VCC, , \ad|Equal0~5_combout\, \ad|adc_data2\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Add2~21_combout\,
	datab => \ad|Add2~23\,
	datac => \ad|adc_data2\(11),
	datad => \ad|Add2~20\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~24\,
	regout => \ad|adc_data3\(11));

-- Location: LC_X4_Y8_N7
\ad|Mux15~2\ : maxii_lcell
-- Equation(s):
-- \ad|Mux15~2_combout\ = (\ad|sta\(0) & (((\ad|adc_data3\(11))))) # (!\ad|sta\(0) & (((\ad|adc_data2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(0),
	datac => \ad|adc_data2\(11),
	datad => \ad|adc_data3\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Mux15~2_combout\);

-- Location: LC_X5_Y7_N6
\ad|adc_max[11]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(11) = DFFEAS(((\ad|sta\(1) & (\ad|Mux15~2_combout\)) # (!\ad|sta\(1) & ((\ad|Mux15~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux15~2_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Mux15~1_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(11));

-- Location: LC_X2_Y5_N4
\ad|LessThan9~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~57_cout\ = CARRY((!\ad|adc_data4\(0) & (\ad|adc_max\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(0),
	datab => \ad|adc_max\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~55\,
	cout => \ad|LessThan9~57_cout\);

-- Location: LC_X2_Y5_N5
\ad|LessThan9~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~52_cout0\ = CARRY((\ad|adc_data4\(1) & ((!\ad|LessThan9~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data4\(1) & (!\ad|adc_max\(1) & !\ad|LessThan9~57_cout\)))
-- \ad|LessThan9~52COUT1_61\ = CARRY((\ad|adc_data4\(1) & ((!\ad|LessThan9~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data4\(1) & (!\ad|adc_max\(1) & !\ad|LessThan9~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(1),
	datab => \ad|adc_max\(1),
	cin => \ad|LessThan9~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~50\,
	cout0 => \ad|LessThan9~52_cout0\,
	cout1 => \ad|LessThan9~52COUT1_61\);

-- Location: LC_X2_Y5_N6
\ad|LessThan9~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~47_cout0\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan9~52_cout0\) # (!\ad|adc_data4\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data4\(2) & !\ad|LessThan9~52_cout0\)))
-- \ad|LessThan9~47COUT1_62\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan9~52COUT1_61\) # (!\ad|adc_data4\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data4\(2) & !\ad|LessThan9~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(2),
	datab => \ad|adc_data4\(2),
	cin => \ad|LessThan9~57_cout\,
	cin0 => \ad|LessThan9~52_cout0\,
	cin1 => \ad|LessThan9~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~45\,
	cout0 => \ad|LessThan9~47_cout0\,
	cout1 => \ad|LessThan9~47COUT1_62\);

-- Location: LC_X2_Y5_N7
\ad|LessThan9~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~42_cout0\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data4\(3) & !\ad|LessThan9~47_cout0\)) # (!\ad|adc_max\(3) & ((\ad|adc_data4\(3)) # (!\ad|LessThan9~47_cout0\))))
-- \ad|LessThan9~42COUT1_63\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data4\(3) & !\ad|LessThan9~47COUT1_62\)) # (!\ad|adc_max\(3) & ((\ad|adc_data4\(3)) # (!\ad|LessThan9~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(3),
	datab => \ad|adc_data4\(3),
	cin => \ad|LessThan9~57_cout\,
	cin0 => \ad|LessThan9~47_cout0\,
	cin1 => \ad|LessThan9~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~40\,
	cout0 => \ad|LessThan9~42_cout0\,
	cout1 => \ad|LessThan9~42COUT1_63\);

-- Location: LC_X2_Y5_N8
\ad|LessThan9~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~37_cout0\ = CARRY((\ad|adc_max\(4) & ((!\ad|LessThan9~42_cout0\) # (!\ad|adc_data4\(4)))) # (!\ad|adc_max\(4) & (!\ad|adc_data4\(4) & !\ad|LessThan9~42_cout0\)))
-- \ad|LessThan9~37COUT1_64\ = CARRY((\ad|adc_max\(4) & ((!\ad|LessThan9~42COUT1_63\) # (!\ad|adc_data4\(4)))) # (!\ad|adc_max\(4) & (!\ad|adc_data4\(4) & !\ad|LessThan9~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(4),
	datab => \ad|adc_data4\(4),
	cin => \ad|LessThan9~57_cout\,
	cin0 => \ad|LessThan9~42_cout0\,
	cin1 => \ad|LessThan9~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~35\,
	cout0 => \ad|LessThan9~37_cout0\,
	cout1 => \ad|LessThan9~37COUT1_64\);

-- Location: LC_X2_Y5_N9
\ad|LessThan9~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~32_cout\ = CARRY((\ad|adc_max\(5) & (\ad|adc_data4\(5) & !\ad|LessThan9~37COUT1_64\)) # (!\ad|adc_max\(5) & ((\ad|adc_data4\(5)) # (!\ad|LessThan9~37COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(5),
	datab => \ad|adc_data4\(5),
	cin => \ad|LessThan9~57_cout\,
	cin0 => \ad|LessThan9~37_cout0\,
	cin1 => \ad|LessThan9~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~30\,
	cout => \ad|LessThan9~32_cout\);

-- Location: LC_X3_Y5_N0
\ad|LessThan9~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~27_cout0\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan9~32_cout\) # (!\ad|adc_data4\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data4\(6) & !\ad|LessThan9~32_cout\)))
-- \ad|LessThan9~27COUT1_65\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan9~32_cout\) # (!\ad|adc_data4\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data4\(6) & !\ad|LessThan9~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(6),
	datab => \ad|adc_data4\(6),
	cin => \ad|LessThan9~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~25\,
	cout0 => \ad|LessThan9~27_cout0\,
	cout1 => \ad|LessThan9~27COUT1_65\);

-- Location: LC_X3_Y5_N1
\ad|LessThan9~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~22_cout0\ = CARRY((\ad|adc_data4\(7) & ((!\ad|LessThan9~27_cout0\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data4\(7) & (!\ad|adc_max\(7) & !\ad|LessThan9~27_cout0\)))
-- \ad|LessThan9~22COUT1_66\ = CARRY((\ad|adc_data4\(7) & ((!\ad|LessThan9~27COUT1_65\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data4\(7) & (!\ad|adc_max\(7) & !\ad|LessThan9~27COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(7),
	datab => \ad|adc_max\(7),
	cin => \ad|LessThan9~32_cout\,
	cin0 => \ad|LessThan9~27_cout0\,
	cin1 => \ad|LessThan9~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~20\,
	cout0 => \ad|LessThan9~22_cout0\,
	cout1 => \ad|LessThan9~22COUT1_66\);

-- Location: LC_X3_Y5_N2
\ad|LessThan9~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~17_cout0\ = CARRY((\ad|adc_data4\(8) & (\ad|adc_max\(8) & !\ad|LessThan9~22_cout0\)) # (!\ad|adc_data4\(8) & ((\ad|adc_max\(8)) # (!\ad|LessThan9~22_cout0\))))
-- \ad|LessThan9~17COUT1_67\ = CARRY((\ad|adc_data4\(8) & (\ad|adc_max\(8) & !\ad|LessThan9~22COUT1_66\)) # (!\ad|adc_data4\(8) & ((\ad|adc_max\(8)) # (!\ad|LessThan9~22COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data4\(8),
	datab => \ad|adc_max\(8),
	cin => \ad|LessThan9~32_cout\,
	cin0 => \ad|LessThan9~22_cout0\,
	cin1 => \ad|LessThan9~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~15\,
	cout0 => \ad|LessThan9~17_cout0\,
	cout1 => \ad|LessThan9~17COUT1_67\);

-- Location: LC_X3_Y5_N3
\ad|LessThan9~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~12_cout0\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data4\(9) & !\ad|LessThan9~17_cout0\)) # (!\ad|adc_max\(9) & ((\ad|adc_data4\(9)) # (!\ad|LessThan9~17_cout0\))))
-- \ad|LessThan9~12COUT1_68\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data4\(9) & !\ad|LessThan9~17COUT1_67\)) # (!\ad|adc_max\(9) & ((\ad|adc_data4\(9)) # (!\ad|LessThan9~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(9),
	datab => \ad|adc_data4\(9),
	cin => \ad|LessThan9~32_cout\,
	cin0 => \ad|LessThan9~17_cout0\,
	cin1 => \ad|LessThan9~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~10\,
	cout0 => \ad|LessThan9~12_cout0\,
	cout1 => \ad|LessThan9~12COUT1_68\);

-- Location: LC_X3_Y5_N4
\ad|LessThan9~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~7_cout\ = CARRY((\ad|adc_max\(10) & ((!\ad|LessThan9~12COUT1_68\) # (!\ad|adc_data4\(10)))) # (!\ad|adc_max\(10) & (!\ad|adc_data4\(10) & !\ad|LessThan9~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(10),
	datab => \ad|adc_data4\(10),
	cin => \ad|LessThan9~32_cout\,
	cin0 => \ad|LessThan9~12_cout0\,
	cin1 => \ad|LessThan9~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~5\,
	cout => \ad|LessThan9~7_cout\);

-- Location: LC_X3_Y5_N5
\ad|LessThan9~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan9~0_combout\ = ((\ad|adc_data4\(11) & (\ad|LessThan9~7_cout\ & \ad|adc_max\(11))) # (!\ad|adc_data4\(11) & ((\ad|LessThan9~7_cout\) # (\ad|adc_max\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_data4\(11),
	datad => \ad|adc_max\(11),
	cin => \ad|LessThan9~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan9~0_combout\);

-- Location: LC_X2_Y7_N4
\ad|LessThan5~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~57_cout\ = CARRY((\ad|adc_max\(0) & (!\ad|adc_data2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(0),
	datab => \ad|adc_data2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~55\,
	cout => \ad|LessThan5~57_cout\);

-- Location: LC_X2_Y7_N5
\ad|LessThan5~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~52_cout0\ = CARRY((\ad|adc_data2\(1) & ((!\ad|LessThan5~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data2\(1) & (!\ad|adc_max\(1) & !\ad|LessThan5~57_cout\)))
-- \ad|LessThan5~52COUT1_61\ = CARRY((\ad|adc_data2\(1) & ((!\ad|LessThan5~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data2\(1) & (!\ad|adc_max\(1) & !\ad|LessThan5~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(1),
	datab => \ad|adc_max\(1),
	cin => \ad|LessThan5~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~50\,
	cout0 => \ad|LessThan5~52_cout0\,
	cout1 => \ad|LessThan5~52COUT1_61\);

-- Location: LC_X2_Y7_N6
\ad|LessThan5~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~47_cout0\ = CARRY((\ad|adc_data2\(2) & (\ad|adc_max\(2) & !\ad|LessThan5~52_cout0\)) # (!\ad|adc_data2\(2) & ((\ad|adc_max\(2)) # (!\ad|LessThan5~52_cout0\))))
-- \ad|LessThan5~47COUT1_62\ = CARRY((\ad|adc_data2\(2) & (\ad|adc_max\(2) & !\ad|LessThan5~52COUT1_61\)) # (!\ad|adc_data2\(2) & ((\ad|adc_max\(2)) # (!\ad|LessThan5~52COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(2),
	datab => \ad|adc_max\(2),
	cin => \ad|LessThan5~57_cout\,
	cin0 => \ad|LessThan5~52_cout0\,
	cin1 => \ad|LessThan5~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~45\,
	cout0 => \ad|LessThan5~47_cout0\,
	cout1 => \ad|LessThan5~47COUT1_62\);

-- Location: LC_X2_Y7_N7
\ad|LessThan5~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~42_cout0\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data2\(3) & !\ad|LessThan5~47_cout0\)) # (!\ad|adc_max\(3) & ((\ad|adc_data2\(3)) # (!\ad|LessThan5~47_cout0\))))
-- \ad|LessThan5~42COUT1_63\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data2\(3) & !\ad|LessThan5~47COUT1_62\)) # (!\ad|adc_max\(3) & ((\ad|adc_data2\(3)) # (!\ad|LessThan5~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(3),
	datab => \ad|adc_data2\(3),
	cin => \ad|LessThan5~57_cout\,
	cin0 => \ad|LessThan5~47_cout0\,
	cin1 => \ad|LessThan5~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~40\,
	cout0 => \ad|LessThan5~42_cout0\,
	cout1 => \ad|LessThan5~42COUT1_63\);

-- Location: LC_X2_Y7_N8
\ad|LessThan5~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~37_cout0\ = CARRY((\ad|adc_data2\(4) & (\ad|adc_max\(4) & !\ad|LessThan5~42_cout0\)) # (!\ad|adc_data2\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan5~42_cout0\))))
-- \ad|LessThan5~37COUT1_64\ = CARRY((\ad|adc_data2\(4) & (\ad|adc_max\(4) & !\ad|LessThan5~42COUT1_63\)) # (!\ad|adc_data2\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan5~42COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(4),
	datab => \ad|adc_max\(4),
	cin => \ad|LessThan5~57_cout\,
	cin0 => \ad|LessThan5~42_cout0\,
	cin1 => \ad|LessThan5~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~35\,
	cout0 => \ad|LessThan5~37_cout0\,
	cout1 => \ad|LessThan5~37COUT1_64\);

-- Location: LC_X2_Y7_N9
\ad|LessThan5~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~32_cout\ = CARRY((\ad|adc_data2\(5) & ((!\ad|LessThan5~37COUT1_64\) # (!\ad|adc_max\(5)))) # (!\ad|adc_data2\(5) & (!\ad|adc_max\(5) & !\ad|LessThan5~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(5),
	datab => \ad|adc_max\(5),
	cin => \ad|LessThan5~57_cout\,
	cin0 => \ad|LessThan5~37_cout0\,
	cin1 => \ad|LessThan5~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~30\,
	cout => \ad|LessThan5~32_cout\);

-- Location: LC_X3_Y7_N0
\ad|LessThan5~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~27_cout0\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan5~32_cout\) # (!\ad|adc_data2\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data2\(6) & !\ad|LessThan5~32_cout\)))
-- \ad|LessThan5~27COUT1_65\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan5~32_cout\) # (!\ad|adc_data2\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data2\(6) & !\ad|LessThan5~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(6),
	datab => \ad|adc_data2\(6),
	cin => \ad|LessThan5~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~25\,
	cout0 => \ad|LessThan5~27_cout0\,
	cout1 => \ad|LessThan5~27COUT1_65\);

-- Location: LC_X3_Y7_N1
\ad|LessThan5~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~22_cout0\ = CARRY((\ad|adc_max\(7) & (\ad|adc_data2\(7) & !\ad|LessThan5~27_cout0\)) # (!\ad|adc_max\(7) & ((\ad|adc_data2\(7)) # (!\ad|LessThan5~27_cout0\))))
-- \ad|LessThan5~22COUT1_66\ = CARRY((\ad|adc_max\(7) & (\ad|adc_data2\(7) & !\ad|LessThan5~27COUT1_65\)) # (!\ad|adc_max\(7) & ((\ad|adc_data2\(7)) # (!\ad|LessThan5~27COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(7),
	datab => \ad|adc_data2\(7),
	cin => \ad|LessThan5~32_cout\,
	cin0 => \ad|LessThan5~27_cout0\,
	cin1 => \ad|LessThan5~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~20\,
	cout0 => \ad|LessThan5~22_cout0\,
	cout1 => \ad|LessThan5~22COUT1_66\);

-- Location: LC_X3_Y7_N2
\ad|LessThan5~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~17_cout0\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan5~22_cout0\) # (!\ad|adc_data2\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data2\(8) & !\ad|LessThan5~22_cout0\)))
-- \ad|LessThan5~17COUT1_67\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan5~22COUT1_66\) # (!\ad|adc_data2\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data2\(8) & !\ad|LessThan5~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(8),
	datab => \ad|adc_data2\(8),
	cin => \ad|LessThan5~32_cout\,
	cin0 => \ad|LessThan5~22_cout0\,
	cin1 => \ad|LessThan5~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~15\,
	cout0 => \ad|LessThan5~17_cout0\,
	cout1 => \ad|LessThan5~17COUT1_67\);

-- Location: LC_X3_Y7_N3
\ad|LessThan5~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~12_cout0\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data2\(9) & !\ad|LessThan5~17_cout0\)) # (!\ad|adc_max\(9) & ((\ad|adc_data2\(9)) # (!\ad|LessThan5~17_cout0\))))
-- \ad|LessThan5~12COUT1_68\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data2\(9) & !\ad|LessThan5~17COUT1_67\)) # (!\ad|adc_max\(9) & ((\ad|adc_data2\(9)) # (!\ad|LessThan5~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(9),
	datab => \ad|adc_data2\(9),
	cin => \ad|LessThan5~32_cout\,
	cin0 => \ad|LessThan5~17_cout0\,
	cin1 => \ad|LessThan5~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~10\,
	cout0 => \ad|LessThan5~12_cout0\,
	cout1 => \ad|LessThan5~12COUT1_68\);

-- Location: LC_X3_Y7_N4
\ad|LessThan5~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~7_cout\ = CARRY((\ad|adc_max\(10) & ((!\ad|LessThan5~12COUT1_68\) # (!\ad|adc_data2\(10)))) # (!\ad|adc_max\(10) & (!\ad|adc_data2\(10) & !\ad|LessThan5~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(10),
	datab => \ad|adc_data2\(10),
	cin => \ad|LessThan5~32_cout\,
	cin0 => \ad|LessThan5~12_cout0\,
	cin1 => \ad|LessThan5~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~5\,
	cout => \ad|LessThan5~7_cout\);

-- Location: LC_X3_Y7_N5
\ad|LessThan5~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan5~0_combout\ = (\ad|adc_data2\(11) & (\ad|adc_max\(11) & (\ad|LessThan5~7_cout\))) # (!\ad|adc_data2\(11) & ((\ad|adc_max\(11)) # ((\ad|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data2\(11),
	datab => \ad|adc_max\(11),
	cin => \ad|LessThan5~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan5~0_combout\);

-- Location: LC_X4_Y7_N4
\ad|LessThan7~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~57_cout\ = CARRY((!\ad|adc_data3\(0) & (\ad|adc_max\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(0),
	datab => \ad|adc_max\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~55\,
	cout => \ad|LessThan7~57_cout\);

-- Location: LC_X4_Y7_N5
\ad|LessThan7~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~52_cout0\ = CARRY((\ad|adc_data3\(1) & ((!\ad|LessThan7~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data3\(1) & (!\ad|adc_max\(1) & !\ad|LessThan7~57_cout\)))
-- \ad|LessThan7~52COUT1_61\ = CARRY((\ad|adc_data3\(1) & ((!\ad|LessThan7~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data3\(1) & (!\ad|adc_max\(1) & !\ad|LessThan7~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(1),
	datab => \ad|adc_max\(1),
	cin => \ad|LessThan7~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~50\,
	cout0 => \ad|LessThan7~52_cout0\,
	cout1 => \ad|LessThan7~52COUT1_61\);

-- Location: LC_X4_Y7_N6
\ad|LessThan7~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~47_cout0\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan7~52_cout0\) # (!\ad|adc_data3\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data3\(2) & !\ad|LessThan7~52_cout0\)))
-- \ad|LessThan7~47COUT1_62\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan7~52COUT1_61\) # (!\ad|adc_data3\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data3\(2) & !\ad|LessThan7~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(2),
	datab => \ad|adc_data3\(2),
	cin => \ad|LessThan7~57_cout\,
	cin0 => \ad|LessThan7~52_cout0\,
	cin1 => \ad|LessThan7~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~45\,
	cout0 => \ad|LessThan7~47_cout0\,
	cout1 => \ad|LessThan7~47COUT1_62\);

-- Location: LC_X4_Y7_N7
\ad|LessThan7~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~42_cout0\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data3\(3) & !\ad|LessThan7~47_cout0\)) # (!\ad|adc_max\(3) & ((\ad|adc_data3\(3)) # (!\ad|LessThan7~47_cout0\))))
-- \ad|LessThan7~42COUT1_63\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data3\(3) & !\ad|LessThan7~47COUT1_62\)) # (!\ad|adc_max\(3) & ((\ad|adc_data3\(3)) # (!\ad|LessThan7~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(3),
	datab => \ad|adc_data3\(3),
	cin => \ad|LessThan7~57_cout\,
	cin0 => \ad|LessThan7~47_cout0\,
	cin1 => \ad|LessThan7~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~40\,
	cout0 => \ad|LessThan7~42_cout0\,
	cout1 => \ad|LessThan7~42COUT1_63\);

-- Location: LC_X4_Y7_N8
\ad|LessThan7~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~37_cout0\ = CARRY((\ad|adc_max\(4) & ((!\ad|LessThan7~42_cout0\) # (!\ad|adc_data3\(4)))) # (!\ad|adc_max\(4) & (!\ad|adc_data3\(4) & !\ad|LessThan7~42_cout0\)))
-- \ad|LessThan7~37COUT1_64\ = CARRY((\ad|adc_max\(4) & ((!\ad|LessThan7~42COUT1_63\) # (!\ad|adc_data3\(4)))) # (!\ad|adc_max\(4) & (!\ad|adc_data3\(4) & !\ad|LessThan7~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(4),
	datab => \ad|adc_data3\(4),
	cin => \ad|LessThan7~57_cout\,
	cin0 => \ad|LessThan7~42_cout0\,
	cin1 => \ad|LessThan7~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~35\,
	cout0 => \ad|LessThan7~37_cout0\,
	cout1 => \ad|LessThan7~37COUT1_64\);

-- Location: LC_X4_Y7_N9
\ad|LessThan7~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~32_cout\ = CARRY((\ad|adc_data3\(5) & ((!\ad|LessThan7~37COUT1_64\) # (!\ad|adc_max\(5)))) # (!\ad|adc_data3\(5) & (!\ad|adc_max\(5) & !\ad|LessThan7~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(5),
	datab => \ad|adc_max\(5),
	cin => \ad|LessThan7~57_cout\,
	cin0 => \ad|LessThan7~37_cout0\,
	cin1 => \ad|LessThan7~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~30\,
	cout => \ad|LessThan7~32_cout\);

-- Location: LC_X5_Y7_N0
\ad|LessThan7~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~27_cout0\ = CARRY((\ad|adc_data3\(6) & (\ad|adc_max\(6) & !\ad|LessThan7~32_cout\)) # (!\ad|adc_data3\(6) & ((\ad|adc_max\(6)) # (!\ad|LessThan7~32_cout\))))
-- \ad|LessThan7~27COUT1_65\ = CARRY((\ad|adc_data3\(6) & (\ad|adc_max\(6) & !\ad|LessThan7~32_cout\)) # (!\ad|adc_data3\(6) & ((\ad|adc_max\(6)) # (!\ad|LessThan7~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(6),
	datab => \ad|adc_max\(6),
	cin => \ad|LessThan7~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~25\,
	cout0 => \ad|LessThan7~27_cout0\,
	cout1 => \ad|LessThan7~27COUT1_65\);

-- Location: LC_X5_Y7_N1
\ad|LessThan7~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~22_cout0\ = CARRY((\ad|adc_data3\(7) & ((!\ad|LessThan7~27_cout0\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data3\(7) & (!\ad|adc_max\(7) & !\ad|LessThan7~27_cout0\)))
-- \ad|LessThan7~22COUT1_66\ = CARRY((\ad|adc_data3\(7) & ((!\ad|LessThan7~27COUT1_65\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data3\(7) & (!\ad|adc_max\(7) & !\ad|LessThan7~27COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(7),
	datab => \ad|adc_max\(7),
	cin => \ad|LessThan7~32_cout\,
	cin0 => \ad|LessThan7~27_cout0\,
	cin1 => \ad|LessThan7~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~20\,
	cout0 => \ad|LessThan7~22_cout0\,
	cout1 => \ad|LessThan7~22COUT1_66\);

-- Location: LC_X5_Y7_N2
\ad|LessThan7~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~17_cout0\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan7~22_cout0\) # (!\ad|adc_data3\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data3\(8) & !\ad|LessThan7~22_cout0\)))
-- \ad|LessThan7~17COUT1_67\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan7~22COUT1_66\) # (!\ad|adc_data3\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data3\(8) & !\ad|LessThan7~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(8),
	datab => \ad|adc_data3\(8),
	cin => \ad|LessThan7~32_cout\,
	cin0 => \ad|LessThan7~22_cout0\,
	cin1 => \ad|LessThan7~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~15\,
	cout0 => \ad|LessThan7~17_cout0\,
	cout1 => \ad|LessThan7~17COUT1_67\);

-- Location: LC_X5_Y7_N3
\ad|LessThan7~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~12_cout0\ = CARRY((\ad|adc_data3\(9) & ((!\ad|LessThan7~17_cout0\) # (!\ad|adc_max\(9)))) # (!\ad|adc_data3\(9) & (!\ad|adc_max\(9) & !\ad|LessThan7~17_cout0\)))
-- \ad|LessThan7~12COUT1_68\ = CARRY((\ad|adc_data3\(9) & ((!\ad|LessThan7~17COUT1_67\) # (!\ad|adc_max\(9)))) # (!\ad|adc_data3\(9) & (!\ad|adc_max\(9) & !\ad|LessThan7~17COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data3\(9),
	datab => \ad|adc_max\(9),
	cin => \ad|LessThan7~32_cout\,
	cin0 => \ad|LessThan7~17_cout0\,
	cin1 => \ad|LessThan7~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~10\,
	cout0 => \ad|LessThan7~12_cout0\,
	cout1 => \ad|LessThan7~12COUT1_68\);

-- Location: LC_X5_Y7_N4
\ad|LessThan7~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~7_cout\ = CARRY((\ad|adc_max\(10) & ((!\ad|LessThan7~12COUT1_68\) # (!\ad|adc_data3\(10)))) # (!\ad|adc_max\(10) & (!\ad|adc_data3\(10) & !\ad|LessThan7~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(10),
	datab => \ad|adc_data3\(10),
	cin => \ad|LessThan7~32_cout\,
	cin0 => \ad|LessThan7~12_cout0\,
	cin1 => \ad|LessThan7~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~5\,
	cout => \ad|LessThan7~7_cout\);

-- Location: LC_X5_Y7_N5
\ad|LessThan7~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan7~0_combout\ = (\ad|adc_max\(11) & (((\ad|LessThan7~7_cout\) # (!\ad|adc_data3\(11))))) # (!\ad|adc_max\(11) & (((\ad|LessThan7~7_cout\ & !\ad|adc_data3\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(11),
	datad => \ad|adc_data3\(11),
	cin => \ad|LessThan7~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan7~0_combout\);

-- Location: LC_X3_Y7_N6
\ad|adc_max[1]~0\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max[1]~0_combout\ = (\ad|sta\(1) & ((\ad|sta\(0) & ((\ad|LessThan7~0_combout\))) # (!\ad|sta\(0) & (\ad|LessThan5~0_combout\)))) # (!\ad|sta\(1) & (\ad|sta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|sta\(0),
	datac => \ad|LessThan5~0_combout\,
	datad => \ad|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_max[1]~0_combout\);

-- Location: LC_X3_Y4_N4
\ad|LessThan3~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~57_cout\ = CARRY((!\ad|adc_data1\(0) & (\ad|adc_max\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(0),
	datab => \ad|adc_max\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~55\,
	cout => \ad|LessThan3~57_cout\);

-- Location: LC_X3_Y4_N5
\ad|LessThan3~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~52_cout0\ = CARRY((\ad|adc_max\(1) & (\ad|adc_data1\(1) & !\ad|LessThan3~57_cout\)) # (!\ad|adc_max\(1) & ((\ad|adc_data1\(1)) # (!\ad|LessThan3~57_cout\))))
-- \ad|LessThan3~52COUT1_61\ = CARRY((\ad|adc_max\(1) & (\ad|adc_data1\(1) & !\ad|LessThan3~57_cout\)) # (!\ad|adc_max\(1) & ((\ad|adc_data1\(1)) # (!\ad|LessThan3~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(1),
	datab => \ad|adc_data1\(1),
	cin => \ad|LessThan3~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~50\,
	cout0 => \ad|LessThan3~52_cout0\,
	cout1 => \ad|LessThan3~52COUT1_61\);

-- Location: LC_X3_Y4_N6
\ad|LessThan3~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~47_cout0\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan3~52_cout0\) # (!\ad|adc_data1\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data1\(2) & !\ad|LessThan3~52_cout0\)))
-- \ad|LessThan3~47COUT1_62\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan3~52COUT1_61\) # (!\ad|adc_data1\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data1\(2) & !\ad|LessThan3~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(2),
	datab => \ad|adc_data1\(2),
	cin => \ad|LessThan3~57_cout\,
	cin0 => \ad|LessThan3~52_cout0\,
	cin1 => \ad|LessThan3~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~45\,
	cout0 => \ad|LessThan3~47_cout0\,
	cout1 => \ad|LessThan3~47COUT1_62\);

-- Location: LC_X3_Y4_N7
\ad|LessThan3~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~42_cout0\ = CARRY((\ad|adc_data1\(3) & ((!\ad|LessThan3~47_cout0\) # (!\ad|adc_max\(3)))) # (!\ad|adc_data1\(3) & (!\ad|adc_max\(3) & !\ad|LessThan3~47_cout0\)))
-- \ad|LessThan3~42COUT1_63\ = CARRY((\ad|adc_data1\(3) & ((!\ad|LessThan3~47COUT1_62\) # (!\ad|adc_max\(3)))) # (!\ad|adc_data1\(3) & (!\ad|adc_max\(3) & !\ad|LessThan3~47COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(3),
	datab => \ad|adc_max\(3),
	cin => \ad|LessThan3~57_cout\,
	cin0 => \ad|LessThan3~47_cout0\,
	cin1 => \ad|LessThan3~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~40\,
	cout0 => \ad|LessThan3~42_cout0\,
	cout1 => \ad|LessThan3~42COUT1_63\);

-- Location: LC_X3_Y4_N8
\ad|LessThan3~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~37_cout0\ = CARRY((\ad|adc_data1\(4) & (\ad|adc_max\(4) & !\ad|LessThan3~42_cout0\)) # (!\ad|adc_data1\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan3~42_cout0\))))
-- \ad|LessThan3~37COUT1_64\ = CARRY((\ad|adc_data1\(4) & (\ad|adc_max\(4) & !\ad|LessThan3~42COUT1_63\)) # (!\ad|adc_data1\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan3~42COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(4),
	datab => \ad|adc_max\(4),
	cin => \ad|LessThan3~57_cout\,
	cin0 => \ad|LessThan3~42_cout0\,
	cin1 => \ad|LessThan3~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~35\,
	cout0 => \ad|LessThan3~37_cout0\,
	cout1 => \ad|LessThan3~37COUT1_64\);

-- Location: LC_X3_Y4_N9
\ad|LessThan3~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~32_cout\ = CARRY((\ad|adc_data1\(5) & ((!\ad|LessThan3~37COUT1_64\) # (!\ad|adc_max\(5)))) # (!\ad|adc_data1\(5) & (!\ad|adc_max\(5) & !\ad|LessThan3~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(5),
	datab => \ad|adc_max\(5),
	cin => \ad|LessThan3~57_cout\,
	cin0 => \ad|LessThan3~37_cout0\,
	cin1 => \ad|LessThan3~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~30\,
	cout => \ad|LessThan3~32_cout\);

-- Location: LC_X4_Y4_N0
\ad|LessThan3~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~27_cout0\ = CARRY((\ad|adc_data1\(6) & (\ad|adc_max\(6) & !\ad|LessThan3~32_cout\)) # (!\ad|adc_data1\(6) & ((\ad|adc_max\(6)) # (!\ad|LessThan3~32_cout\))))
-- \ad|LessThan3~27COUT1_65\ = CARRY((\ad|adc_data1\(6) & (\ad|adc_max\(6) & !\ad|LessThan3~32_cout\)) # (!\ad|adc_data1\(6) & ((\ad|adc_max\(6)) # (!\ad|LessThan3~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(6),
	datab => \ad|adc_max\(6),
	cin => \ad|LessThan3~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~25\,
	cout0 => \ad|LessThan3~27_cout0\,
	cout1 => \ad|LessThan3~27COUT1_65\);

-- Location: LC_X4_Y4_N1
\ad|LessThan3~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~22_cout0\ = CARRY((\ad|adc_data1\(7) & ((!\ad|LessThan3~27_cout0\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data1\(7) & (!\ad|adc_max\(7) & !\ad|LessThan3~27_cout0\)))
-- \ad|LessThan3~22COUT1_66\ = CARRY((\ad|adc_data1\(7) & ((!\ad|LessThan3~27COUT1_65\) # (!\ad|adc_max\(7)))) # (!\ad|adc_data1\(7) & (!\ad|adc_max\(7) & !\ad|LessThan3~27COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(7),
	datab => \ad|adc_max\(7),
	cin => \ad|LessThan3~32_cout\,
	cin0 => \ad|LessThan3~27_cout0\,
	cin1 => \ad|LessThan3~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~20\,
	cout0 => \ad|LessThan3~22_cout0\,
	cout1 => \ad|LessThan3~22COUT1_66\);

-- Location: LC_X4_Y4_N2
\ad|LessThan3~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~17_cout0\ = CARRY((\ad|adc_data1\(8) & (\ad|adc_max\(8) & !\ad|LessThan3~22_cout0\)) # (!\ad|adc_data1\(8) & ((\ad|adc_max\(8)) # (!\ad|LessThan3~22_cout0\))))
-- \ad|LessThan3~17COUT1_67\ = CARRY((\ad|adc_data1\(8) & (\ad|adc_max\(8) & !\ad|LessThan3~22COUT1_66\)) # (!\ad|adc_data1\(8) & ((\ad|adc_max\(8)) # (!\ad|LessThan3~22COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(8),
	datab => \ad|adc_max\(8),
	cin => \ad|LessThan3~32_cout\,
	cin0 => \ad|LessThan3~22_cout0\,
	cin1 => \ad|LessThan3~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~15\,
	cout0 => \ad|LessThan3~17_cout0\,
	cout1 => \ad|LessThan3~17COUT1_67\);

-- Location: LC_X4_Y4_N3
\ad|LessThan3~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~12_cout0\ = CARRY((\ad|adc_data1\(9) & ((!\ad|LessThan3~17_cout0\) # (!\ad|adc_max\(9)))) # (!\ad|adc_data1\(9) & (!\ad|adc_max\(9) & !\ad|LessThan3~17_cout0\)))
-- \ad|LessThan3~12COUT1_68\ = CARRY((\ad|adc_data1\(9) & ((!\ad|LessThan3~17COUT1_67\) # (!\ad|adc_max\(9)))) # (!\ad|adc_data1\(9) & (!\ad|adc_max\(9) & !\ad|LessThan3~17COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data1\(9),
	datab => \ad|adc_max\(9),
	cin => \ad|LessThan3~32_cout\,
	cin0 => \ad|LessThan3~17_cout0\,
	cin1 => \ad|LessThan3~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~10\,
	cout0 => \ad|LessThan3~12_cout0\,
	cout1 => \ad|LessThan3~12COUT1_68\);

-- Location: LC_X4_Y4_N4
\ad|LessThan3~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~7_cout\ = CARRY((\ad|adc_max\(10) & ((!\ad|LessThan3~12COUT1_68\) # (!\ad|adc_data1\(10)))) # (!\ad|adc_max\(10) & (!\ad|adc_data1\(10) & !\ad|LessThan3~12COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(10),
	datab => \ad|adc_data1\(10),
	cin => \ad|LessThan3~32_cout\,
	cin0 => \ad|LessThan3~12_cout0\,
	cin1 => \ad|LessThan3~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~5\,
	cout => \ad|LessThan3~7_cout\);

-- Location: LC_X4_Y4_N5
\ad|LessThan3~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan3~0_combout\ = ((\ad|adc_max\(11) & ((\ad|LessThan3~7_cout\) # (!\ad|adc_data1\(11)))) # (!\ad|adc_max\(11) & (\ad|LessThan3~7_cout\ & !\ad|adc_data1\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|adc_max\(11),
	datad => \ad|adc_data1\(11),
	cin => \ad|LessThan3~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan3~0_combout\);

-- Location: LC_X3_Y8_N4
\ad|LessThan11~57\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~57_cout\ = CARRY((\ad|adc_max\(0) & (!\ad|adc_data5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(0),
	datab => \ad|adc_data5\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~55\,
	cout => \ad|LessThan11~57_cout\);

-- Location: LC_X3_Y8_N5
\ad|LessThan11~52\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~52_cout0\ = CARRY((\ad|adc_data5\(1) & ((!\ad|LessThan11~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data5\(1) & (!\ad|adc_max\(1) & !\ad|LessThan11~57_cout\)))
-- \ad|LessThan11~52COUT1_61\ = CARRY((\ad|adc_data5\(1) & ((!\ad|LessThan11~57_cout\) # (!\ad|adc_max\(1)))) # (!\ad|adc_data5\(1) & (!\ad|adc_max\(1) & !\ad|LessThan11~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(1),
	datab => \ad|adc_max\(1),
	cin => \ad|LessThan11~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~50\,
	cout0 => \ad|LessThan11~52_cout0\,
	cout1 => \ad|LessThan11~52COUT1_61\);

-- Location: LC_X3_Y8_N6
\ad|LessThan11~47\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~47_cout0\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan11~52_cout0\) # (!\ad|adc_data5\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data5\(2) & !\ad|LessThan11~52_cout0\)))
-- \ad|LessThan11~47COUT1_62\ = CARRY((\ad|adc_max\(2) & ((!\ad|LessThan11~52COUT1_61\) # (!\ad|adc_data5\(2)))) # (!\ad|adc_max\(2) & (!\ad|adc_data5\(2) & !\ad|LessThan11~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(2),
	datab => \ad|adc_data5\(2),
	cin => \ad|LessThan11~57_cout\,
	cin0 => \ad|LessThan11~52_cout0\,
	cin1 => \ad|LessThan11~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~45\,
	cout0 => \ad|LessThan11~47_cout0\,
	cout1 => \ad|LessThan11~47COUT1_62\);

-- Location: LC_X3_Y8_N7
\ad|LessThan11~42\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~42_cout0\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data5\(3) & !\ad|LessThan11~47_cout0\)) # (!\ad|adc_max\(3) & ((\ad|adc_data5\(3)) # (!\ad|LessThan11~47_cout0\))))
-- \ad|LessThan11~42COUT1_63\ = CARRY((\ad|adc_max\(3) & (\ad|adc_data5\(3) & !\ad|LessThan11~47COUT1_62\)) # (!\ad|adc_max\(3) & ((\ad|adc_data5\(3)) # (!\ad|LessThan11~47COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(3),
	datab => \ad|adc_data5\(3),
	cin => \ad|LessThan11~57_cout\,
	cin0 => \ad|LessThan11~47_cout0\,
	cin1 => \ad|LessThan11~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~40\,
	cout0 => \ad|LessThan11~42_cout0\,
	cout1 => \ad|LessThan11~42COUT1_63\);

-- Location: LC_X3_Y8_N8
\ad|LessThan11~37\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~37_cout0\ = CARRY((\ad|adc_data5\(4) & (\ad|adc_max\(4) & !\ad|LessThan11~42_cout0\)) # (!\ad|adc_data5\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan11~42_cout0\))))
-- \ad|LessThan11~37COUT1_64\ = CARRY((\ad|adc_data5\(4) & (\ad|adc_max\(4) & !\ad|LessThan11~42COUT1_63\)) # (!\ad|adc_data5\(4) & ((\ad|adc_max\(4)) # (!\ad|LessThan11~42COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(4),
	datab => \ad|adc_max\(4),
	cin => \ad|LessThan11~57_cout\,
	cin0 => \ad|LessThan11~42_cout0\,
	cin1 => \ad|LessThan11~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~35\,
	cout0 => \ad|LessThan11~37_cout0\,
	cout1 => \ad|LessThan11~37COUT1_64\);

-- Location: LC_X3_Y8_N9
\ad|LessThan11~32\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~32_cout\ = CARRY((\ad|adc_data5\(5) & ((!\ad|LessThan11~37COUT1_64\) # (!\ad|adc_max\(5)))) # (!\ad|adc_data5\(5) & (!\ad|adc_max\(5) & !\ad|LessThan11~37COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(5),
	datab => \ad|adc_max\(5),
	cin => \ad|LessThan11~57_cout\,
	cin0 => \ad|LessThan11~37_cout0\,
	cin1 => \ad|LessThan11~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~30\,
	cout => \ad|LessThan11~32_cout\);

-- Location: LC_X4_Y8_N0
\ad|LessThan11~27\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~27_cout0\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan11~32_cout\) # (!\ad|adc_data5\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data5\(6) & !\ad|LessThan11~32_cout\)))
-- \ad|LessThan11~27COUT1_65\ = CARRY((\ad|adc_max\(6) & ((!\ad|LessThan11~32_cout\) # (!\ad|adc_data5\(6)))) # (!\ad|adc_max\(6) & (!\ad|adc_data5\(6) & !\ad|LessThan11~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(6),
	datab => \ad|adc_data5\(6),
	cin => \ad|LessThan11~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~25\,
	cout0 => \ad|LessThan11~27_cout0\,
	cout1 => \ad|LessThan11~27COUT1_65\);

-- Location: LC_X4_Y8_N1
\ad|LessThan11~22\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~22_cout0\ = CARRY((\ad|adc_max\(7) & (\ad|adc_data5\(7) & !\ad|LessThan11~27_cout0\)) # (!\ad|adc_max\(7) & ((\ad|adc_data5\(7)) # (!\ad|LessThan11~27_cout0\))))
-- \ad|LessThan11~22COUT1_66\ = CARRY((\ad|adc_max\(7) & (\ad|adc_data5\(7) & !\ad|LessThan11~27COUT1_65\)) # (!\ad|adc_max\(7) & ((\ad|adc_data5\(7)) # (!\ad|LessThan11~27COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(7),
	datab => \ad|adc_data5\(7),
	cin => \ad|LessThan11~32_cout\,
	cin0 => \ad|LessThan11~27_cout0\,
	cin1 => \ad|LessThan11~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~20\,
	cout0 => \ad|LessThan11~22_cout0\,
	cout1 => \ad|LessThan11~22COUT1_66\);

-- Location: LC_X4_Y8_N2
\ad|LessThan11~17\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~17_cout0\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan11~22_cout0\) # (!\ad|adc_data5\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data5\(8) & !\ad|LessThan11~22_cout0\)))
-- \ad|LessThan11~17COUT1_67\ = CARRY((\ad|adc_max\(8) & ((!\ad|LessThan11~22COUT1_66\) # (!\ad|adc_data5\(8)))) # (!\ad|adc_max\(8) & (!\ad|adc_data5\(8) & !\ad|LessThan11~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(8),
	datab => \ad|adc_data5\(8),
	cin => \ad|LessThan11~32_cout\,
	cin0 => \ad|LessThan11~22_cout0\,
	cin1 => \ad|LessThan11~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~15\,
	cout0 => \ad|LessThan11~17_cout0\,
	cout1 => \ad|LessThan11~17COUT1_67\);

-- Location: LC_X4_Y8_N3
\ad|LessThan11~12\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~12_cout0\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data5\(9) & !\ad|LessThan11~17_cout0\)) # (!\ad|adc_max\(9) & ((\ad|adc_data5\(9)) # (!\ad|LessThan11~17_cout0\))))
-- \ad|LessThan11~12COUT1_68\ = CARRY((\ad|adc_max\(9) & (\ad|adc_data5\(9) & !\ad|LessThan11~17COUT1_67\)) # (!\ad|adc_max\(9) & ((\ad|adc_data5\(9)) # (!\ad|LessThan11~17COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(9),
	datab => \ad|adc_data5\(9),
	cin => \ad|LessThan11~32_cout\,
	cin0 => \ad|LessThan11~17_cout0\,
	cin1 => \ad|LessThan11~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~10\,
	cout0 => \ad|LessThan11~12_cout0\,
	cout1 => \ad|LessThan11~12COUT1_68\);

-- Location: LC_X4_Y8_N4
\ad|LessThan11~7\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~7_cout\ = CARRY((\ad|adc_data5\(10) & (\ad|adc_max\(10) & !\ad|LessThan11~12COUT1_68\)) # (!\ad|adc_data5\(10) & ((\ad|adc_max\(10)) # (!\ad|LessThan11~12COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(10),
	datab => \ad|adc_max\(10),
	cin => \ad|LessThan11~32_cout\,
	cin0 => \ad|LessThan11~12_cout0\,
	cin1 => \ad|LessThan11~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~5\,
	cout => \ad|LessThan11~7_cout\);

-- Location: LC_X4_Y8_N5
\ad|LessThan11~0\ : maxii_lcell
-- Equation(s):
-- \ad|LessThan11~0_combout\ = (\ad|adc_data5\(11) & (((\ad|LessThan11~7_cout\ & \ad|adc_max\(11))))) # (!\ad|adc_data5\(11) & (((\ad|LessThan11~7_cout\) # (\ad|adc_max\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_data5\(11),
	datad => \ad|adc_max\(11),
	cin => \ad|LessThan11~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|LessThan11~0_combout\);

-- Location: LC_X3_Y7_N7
\ad|adc_max[1]~1\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max[1]~1_combout\ = (\ad|sta\(2) & (((\ad|LessThan11~0_combout\) # (!\ad|adc_max[1]~0_combout\)))) # (!\ad|sta\(2) & (\ad|LessThan3~0_combout\ & ((\ad|adc_max[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(2),
	datab => \ad|LessThan3~0_combout\,
	datac => \ad|LessThan11~0_combout\,
	datad => \ad|adc_max[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_max[1]~1_combout\);

-- Location: LC_X3_Y7_N8
\ad|adc_max[1]~2\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max[1]~2_combout\ = (\ad|sta\(1) & (((\ad|adc_max[1]~0_combout\) # (\ad|adc_max[1]~1_combout\)))) # (!\ad|sta\(1) & (\ad|adc_max[1]~1_combout\ & ((\ad|LessThan9~0_combout\) # (\ad|adc_max[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|LessThan9~0_combout\,
	datac => \ad|adc_max[1]~0_combout\,
	datad => \ad|adc_max[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_max[1]~2_combout\);

-- Location: LC_X3_Y7_N9
\ad|adc_max[1]~3\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max[1]~3_combout\ = (\ad|sta\(3) & ((\ad|sta\(1)) # ((\ad|adc_sum[3]~0_combout\)))) # (!\ad|sta\(3) & (((!\ad|adc_max[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8fb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|sta\(1),
	datab => \ad|sta\(3),
	datac => \ad|adc_sum[3]~0_combout\,
	datad => \ad|adc_max[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adc_max[1]~3_combout\);

-- Location: LC_X4_Y7_N1
\ad|adc_max[10]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_max\(10) = DFFEAS(((\ad|sta\(1) & (\ad|Mux16~2\)) # (!\ad|sta\(1) & ((\ad|Mux16~1\)))), GLOBAL(\clk~combout\), VCC, , \ad|adc_max[1]~3_combout\, , , \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Mux16~2\,
	datab => \ad|Mux16~1\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|adc_max[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_max\(10));

-- Location: LC_X7_Y7_N8
\ad|Add2~31\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~31_combout\ = (\ad|sta\(1) & ((\ad|Add2~30\ & ((!\ad|adc_min\(10)))) # (!\ad|Add2~30\ & (!\ad|adc_max\(10))))) # (!\ad|sta\(1) & (((\ad|Add2~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_max\(10),
	datab => \ad|sta\(1),
	datac => \ad|adc_min\(10),
	datad => \ad|Add2~30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~31_combout\);

-- Location: LC_X5_Y6_N5
\ad|Add2~106\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~106_combout\ = \ad|Add2~114\ $ (\ad|adc_sum\(1) $ ((!\ad|Add2~117\)))
-- \ad|Add2~108\ = CARRY((\ad|Add2~114\ & ((\ad|adc_sum\(1)) # (!\ad|Add2~117\))) # (!\ad|Add2~114\ & (\ad|adc_sum\(1) & !\ad|Add2~117\)))
-- \ad|Add2~108COUT1_134\ = CARRY((\ad|Add2~114\ & ((\ad|adc_sum\(1)) # (!\ad|Add2~117\))) # (!\ad|Add2~114\ & (\ad|adc_sum\(1) & !\ad|Add2~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~114\,
	datab => \ad|adc_sum\(1),
	cin => \ad|Add2~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~106_combout\,
	cout0 => \ad|Add2~108\,
	cout1 => \ad|Add2~108COUT1_134\);

-- Location: LC_X8_Y6_N1
\ad|adc_sum[1]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(1) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~106_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~106_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(1))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|adc_out\(1),
	datad => \ad|Add2~106_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(1));

-- Location: LC_X5_Y6_N6
\ad|Add2~97\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~97_combout\ = \ad|adc_sum\(2) $ (\ad|Add2~105\ $ (((!\ad|Add2~117\ & \ad|Add2~108\) # (\ad|Add2~117\ & \ad|Add2~108COUT1_134\))))
-- \ad|Add2~99\ = CARRY((\ad|adc_sum\(2) & (!\ad|Add2~105\ & !\ad|Add2~108\)) # (!\ad|adc_sum\(2) & ((!\ad|Add2~108\) # (!\ad|Add2~105\))))
-- \ad|Add2~99COUT1_135\ = CARRY((\ad|adc_sum\(2) & (!\ad|Add2~105\ & !\ad|Add2~108COUT1_134\)) # (!\ad|adc_sum\(2) & ((!\ad|Add2~108COUT1_134\) # (!\ad|Add2~105\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(2),
	datab => \ad|Add2~105\,
	cin => \ad|Add2~117\,
	cin0 => \ad|Add2~108\,
	cin1 => \ad|Add2~108COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~97_combout\,
	cout0 => \ad|Add2~99\,
	cout1 => \ad|Add2~99COUT1_135\);

-- Location: LC_X8_Y6_N9
\ad|adc_sum[2]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(2) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~97_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~97_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(2))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_out\(2),
	datac => \ad|Add2~97_combout\,
	datad => \ad|adc_sum[3]~0_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(2));

-- Location: LC_X5_Y6_N7
\ad|Add2~88\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~88_combout\ = \ad|adc_sum\(3) $ (\ad|Add2~96\ $ ((!(!\ad|Add2~117\ & \ad|Add2~99\) # (\ad|Add2~117\ & \ad|Add2~99COUT1_135\))))
-- \ad|Add2~90\ = CARRY((\ad|adc_sum\(3) & ((\ad|Add2~96\) # (!\ad|Add2~99\))) # (!\ad|adc_sum\(3) & (\ad|Add2~96\ & !\ad|Add2~99\)))
-- \ad|Add2~90COUT1_136\ = CARRY((\ad|adc_sum\(3) & ((\ad|Add2~96\) # (!\ad|Add2~99COUT1_135\))) # (!\ad|adc_sum\(3) & (\ad|Add2~96\ & !\ad|Add2~99COUT1_135\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(3),
	datab => \ad|Add2~96\,
	cin => \ad|Add2~117\,
	cin0 => \ad|Add2~99\,
	cin1 => \ad|Add2~99COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~88_combout\,
	cout0 => \ad|Add2~90\,
	cout1 => \ad|Add2~90COUT1_136\);

-- Location: LC_X7_Y6_N2
\ad|adc_sum[3]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(3) = DFFEAS((\ad|sta\(1) & (\ad|Add2~88_combout\)) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & (\ad|Add2~88_combout\)) # (!\ad|adc_sum[3]~0_combout\ & ((\ad|adc_out\(3)))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|Add2~88_combout\,
	datac => \ad|adc_out\(3),
	datad => \ad|adc_sum[3]~0_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(3));

-- Location: LC_X5_Y6_N8
\ad|Add2~79\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~79_combout\ = \ad|adc_sum\(4) $ (\ad|Add2~87\ $ (((!\ad|Add2~117\ & \ad|Add2~90\) # (\ad|Add2~117\ & \ad|Add2~90COUT1_136\))))
-- \ad|Add2~81\ = CARRY((\ad|adc_sum\(4) & (!\ad|Add2~87\ & !\ad|Add2~90\)) # (!\ad|adc_sum\(4) & ((!\ad|Add2~90\) # (!\ad|Add2~87\))))
-- \ad|Add2~81COUT1_137\ = CARRY((\ad|adc_sum\(4) & (!\ad|Add2~87\ & !\ad|Add2~90COUT1_136\)) # (!\ad|adc_sum\(4) & ((!\ad|Add2~90COUT1_136\) # (!\ad|Add2~87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(4),
	datab => \ad|Add2~87\,
	cin => \ad|Add2~117\,
	cin0 => \ad|Add2~90\,
	cin1 => \ad|Add2~90COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~79_combout\,
	cout0 => \ad|Add2~81\,
	cout1 => \ad|Add2~81COUT1_137\);

-- Location: LC_X7_Y6_N8
\ad|adc_sum[4]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(4) = DFFEAS((\ad|adc_sum[3]~0_combout\ & (((\ad|Add2~79_combout\)))) # (!\ad|adc_sum[3]~0_combout\ & ((\ad|sta\(1) & ((\ad|Add2~79_combout\))) # (!\ad|sta\(1) & (\ad|adc_out\(4))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(4),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Add2~79_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(4));

-- Location: LC_X5_Y6_N9
\ad|Add2~70\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~70_combout\ = \ad|Add2~78\ $ (\ad|adc_sum\(5) $ ((!(!\ad|Add2~117\ & \ad|Add2~81\) # (\ad|Add2~117\ & \ad|Add2~81COUT1_137\))))
-- \ad|Add2~72\ = CARRY((\ad|Add2~78\ & ((\ad|adc_sum\(5)) # (!\ad|Add2~81COUT1_137\))) # (!\ad|Add2~78\ & (\ad|adc_sum\(5) & !\ad|Add2~81COUT1_137\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~78\,
	datab => \ad|adc_sum\(5),
	cin => \ad|Add2~117\,
	cin0 => \ad|Add2~81\,
	cin1 => \ad|Add2~81COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~70_combout\,
	cout => \ad|Add2~72\);

-- Location: LC_X6_Y6_N8
\ad|adc_sum[5]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(5) = DFFEAS((\ad|adc_sum[3]~0_combout\ & (((\ad|Add2~70_combout\)))) # (!\ad|adc_sum[3]~0_combout\ & ((\ad|sta\(1) & ((\ad|Add2~70_combout\))) # (!\ad|sta\(1) & (\ad|adc_out\(5))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(5),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|Add2~70_combout\,
	datad => \ad|sta\(1),
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(5));

-- Location: LC_X6_Y6_N0
\ad|Add2~61\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~61_combout\ = \ad|Add2~69\ $ (\ad|adc_sum\(6) $ ((\ad|Add2~72\)))
-- \ad|Add2~63\ = CARRY((\ad|Add2~69\ & (!\ad|adc_sum\(6) & !\ad|Add2~72\)) # (!\ad|Add2~69\ & ((!\ad|Add2~72\) # (!\ad|adc_sum\(6)))))
-- \ad|Add2~63COUT1_138\ = CARRY((\ad|Add2~69\ & (!\ad|adc_sum\(6) & !\ad|Add2~72\)) # (!\ad|Add2~69\ & ((!\ad|Add2~72\) # (!\ad|adc_sum\(6)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~69\,
	datab => \ad|adc_sum\(6),
	cin => \ad|Add2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~61_combout\,
	cout0 => \ad|Add2~63\,
	cout1 => \ad|Add2~63COUT1_138\);

-- Location: LC_X7_Y6_N1
\ad|adc_sum[6]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(6) = DFFEAS((\ad|adc_sum[3]~0_combout\ & (((\ad|Add2~61_combout\)))) # (!\ad|adc_sum[3]~0_combout\ & ((\ad|sta\(1) & ((\ad|Add2~61_combout\))) # (!\ad|sta\(1) & (\ad|adc_out\(6))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|adc_out\(6),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|sta\(1),
	datad => \ad|Add2~61_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(6));

-- Location: LC_X6_Y6_N1
\ad|Add2~52\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~52_combout\ = \ad|adc_sum\(7) $ (\ad|Add2~60\ $ ((!(!\ad|Add2~72\ & \ad|Add2~63\) # (\ad|Add2~72\ & \ad|Add2~63COUT1_138\))))
-- \ad|Add2~54\ = CARRY((\ad|adc_sum\(7) & ((\ad|Add2~60\) # (!\ad|Add2~63\))) # (!\ad|adc_sum\(7) & (\ad|Add2~60\ & !\ad|Add2~63\)))
-- \ad|Add2~54COUT1_139\ = CARRY((\ad|adc_sum\(7) & ((\ad|Add2~60\) # (!\ad|Add2~63COUT1_138\))) # (!\ad|adc_sum\(7) & (\ad|Add2~60\ & !\ad|Add2~63COUT1_138\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(7),
	datab => \ad|Add2~60\,
	cin => \ad|Add2~72\,
	cin0 => \ad|Add2~63\,
	cin1 => \ad|Add2~63COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~52_combout\,
	cout0 => \ad|Add2~54\,
	cout1 => \ad|Add2~54COUT1_139\);

-- Location: LC_X7_Y6_N0
\ad|adc_sum[7]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(7) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~52_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~52_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(7))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_out\(7),
	datac => \ad|Add2~52_combout\,
	datad => \ad|adc_sum[3]~0_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(7));

-- Location: LC_X6_Y6_N2
\ad|Add2~43\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~43_combout\ = \ad|adc_sum\(8) $ (\ad|Add2~51\ $ (((!\ad|Add2~72\ & \ad|Add2~54\) # (\ad|Add2~72\ & \ad|Add2~54COUT1_139\))))
-- \ad|Add2~45\ = CARRY((\ad|adc_sum\(8) & (!\ad|Add2~51\ & !\ad|Add2~54\)) # (!\ad|adc_sum\(8) & ((!\ad|Add2~54\) # (!\ad|Add2~51\))))
-- \ad|Add2~45COUT1_140\ = CARRY((\ad|adc_sum\(8) & (!\ad|Add2~51\ & !\ad|Add2~54COUT1_139\)) # (!\ad|adc_sum\(8) & ((!\ad|Add2~54COUT1_139\) # (!\ad|Add2~51\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(8),
	datab => \ad|Add2~51\,
	cin => \ad|Add2~72\,
	cin0 => \ad|Add2~54\,
	cin1 => \ad|Add2~54COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~43_combout\,
	cout0 => \ad|Add2~45\,
	cout1 => \ad|Add2~45COUT1_140\);

-- Location: LC_X7_Y6_N6
\ad|adc_sum[8]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(8) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~43_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~43_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(8))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|adc_out\(8),
	datad => \ad|Add2~43_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(8));

-- Location: LC_X6_Y6_N3
\ad|Add2~34\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~34_combout\ = \ad|adc_sum\(9) $ (\ad|Add2~42\ $ ((!(!\ad|Add2~72\ & \ad|Add2~45\) # (\ad|Add2~72\ & \ad|Add2~45COUT1_140\))))
-- \ad|Add2~36\ = CARRY((\ad|adc_sum\(9) & ((\ad|Add2~42\) # (!\ad|Add2~45\))) # (!\ad|adc_sum\(9) & (\ad|Add2~42\ & !\ad|Add2~45\)))
-- \ad|Add2~36COUT1_141\ = CARRY((\ad|adc_sum\(9) & ((\ad|Add2~42\) # (!\ad|Add2~45COUT1_140\))) # (!\ad|adc_sum\(9) & (\ad|Add2~42\ & !\ad|Add2~45COUT1_140\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(9),
	datab => \ad|Add2~42\,
	cin => \ad|Add2~72\,
	cin0 => \ad|Add2~45\,
	cin1 => \ad|Add2~45COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~34_combout\,
	cout0 => \ad|Add2~36\,
	cout1 => \ad|Add2~36COUT1_141\);

-- Location: LC_X7_Y6_N3
\ad|adc_sum[9]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(9) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~34_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~34_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(9))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|adc_out\(9),
	datad => \ad|Add2~34_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(9));

-- Location: LC_X6_Y6_N4
\ad|Add2~25\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~25_combout\ = \ad|adc_sum\(10) $ (\ad|Add2~33\ $ (((!\ad|Add2~72\ & \ad|Add2~36\) # (\ad|Add2~72\ & \ad|Add2~36COUT1_141\))))
-- \ad|Add2~27\ = CARRY((\ad|adc_sum\(10) & (!\ad|Add2~33\ & !\ad|Add2~36COUT1_141\)) # (!\ad|adc_sum\(10) & ((!\ad|Add2~36COUT1_141\) # (!\ad|Add2~33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(10),
	datab => \ad|Add2~33\,
	cin => \ad|Add2~72\,
	cin0 => \ad|Add2~36\,
	cin1 => \ad|Add2~36COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~25_combout\,
	cout => \ad|Add2~27\);

-- Location: LC_X7_Y6_N7
\ad|adc_sum[10]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(10) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~25_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~25_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(10))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_sum[3]~0_combout\,
	datac => \ad|adc_out\(10),
	datad => \ad|Add2~25_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(10));

-- Location: LC_X8_Y6_N8
\ad|Add2~12\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~12_combout\ = (\ad|adc_sum\(12) & (((\ad|sta\(2) & \ad|sta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(12),
	datac => \ad|sta\(2),
	datad => \ad|sta\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~12_combout\);

-- Location: LC_X6_Y6_N5
\ad|Add2~14\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~14_combout\ = \ad|Add2~24\ $ (\ad|adc_sum\(11) $ ((!\ad|Add2~27\)))
-- \ad|Add2~16\ = CARRY((\ad|Add2~24\ & ((\ad|adc_sum\(11)) # (!\ad|Add2~27\))) # (!\ad|Add2~24\ & (\ad|adc_sum\(11) & !\ad|Add2~27\)))
-- \ad|Add2~16COUT1_142\ = CARRY((\ad|Add2~24\ & ((\ad|adc_sum\(11)) # (!\ad|Add2~27\))) # (!\ad|Add2~24\ & (\ad|adc_sum\(11) & !\ad|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~24\,
	datab => \ad|adc_sum\(11),
	cin => \ad|Add2~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~14_combout\,
	cout0 => \ad|Add2~16\,
	cout1 => \ad|Add2~16COUT1_142\);

-- Location: LC_X6_Y6_N9
\ad|adc_sum[11]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(11) = DFFEAS((\ad|sta\(1) & (((\ad|Add2~14_combout\)))) # (!\ad|sta\(1) & ((\ad|adc_sum[3]~0_combout\ & ((\ad|Add2~14_combout\))) # (!\ad|adc_sum[3]~0_combout\ & (\ad|adc_out\(11))))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , 
-- \ad|sta\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(1),
	datab => \ad|adc_out\(11),
	datac => \ad|Add2~14_combout\,
	datad => \ad|adc_sum[3]~0_combout\,
	aclr => GND,
	sclr => \ad|sta\(3),
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(11));

-- Location: LC_X6_Y6_N6
\ad|Add2~7\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~7_combout\ = \ad|Add2~13_combout\ $ (\ad|Add2~12_combout\ $ (((!\ad|Add2~27\ & \ad|Add2~16\) # (\ad|Add2~27\ & \ad|Add2~16COUT1_142\))))
-- \ad|Add2~9\ = CARRY((\ad|Add2~13_combout\ & (!\ad|Add2~12_combout\ & !\ad|Add2~16\)) # (!\ad|Add2~13_combout\ & ((!\ad|Add2~16\) # (!\ad|Add2~12_combout\))))
-- \ad|Add2~9COUT1_143\ = CARRY((\ad|Add2~13_combout\ & (!\ad|Add2~12_combout\ & !\ad|Add2~16COUT1_142\)) # (!\ad|Add2~13_combout\ & ((!\ad|Add2~16COUT1_142\) # (!\ad|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Add2~13_combout\,
	datab => \ad|Add2~12_combout\,
	cin => \ad|Add2~27\,
	cin0 => \ad|Add2~16\,
	cin1 => \ad|Add2~16COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~7_combout\,
	cout0 => \ad|Add2~9\,
	cout1 => \ad|Add2~9COUT1_143\);

-- Location: LC_X7_Y6_N9
\ad|adc_sum[12]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(12) = DFFEAS((\ad|Add2~7_combout\ & (!\ad|sta\(3) & ((\ad|sta\(0)) # (!\ad|Equal1~1_combout\)))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|Equal1~1_combout\,
	datab => \ad|Add2~7_combout\,
	datac => \ad|sta\(3),
	datad => \ad|sta\(0),
	aclr => GND,
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(12));

-- Location: LC_X8_Y6_N3
\ad|Add2~13\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~13_combout\ = (\ad|adc_sum\(12)) # (((\ad|sta\(2) & \ad|sta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|adc_sum\(12),
	datac => \ad|sta\(2),
	datad => \ad|sta\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~13_combout\);

-- Location: LC_X6_Y6_N7
\ad|Add2~0\ : maxii_lcell
-- Equation(s):
-- \ad|Add2~0_combout\ = (\ad|Add2~5_combout\ $ ((!\ad|Add2~27\ & \ad|Add2~9\) # (\ad|Add2~27\ & \ad|Add2~9COUT1_143\) $ (!\ad|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ad|Add2~5_combout\,
	datad => \ad|Add2~6_combout\,
	cin => \ad|Add2~27\,
	cin0 => \ad|Add2~9\,
	cin1 => \ad|Add2~9COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|Add2~0_combout\);

-- Location: LC_X7_Y6_N5
\ad|adc_sum[13]\ : maxii_lcell
-- Equation(s):
-- \ad|adc_sum\(13) = DFFEAS((!\ad|sta\(3) & (\ad|Add2~0_combout\ & ((\ad|sta\(0)) # (!\ad|Equal1~1_combout\)))), GLOBAL(\clk~combout\), VCC, , !\ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|sta\(3),
	datab => \ad|sta\(0),
	datac => \ad|Equal1~1_combout\,
	datad => \ad|Add2~0_combout\,
	aclr => GND,
	ena => \ad|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adc_sum\(13));

-- Location: LC_X8_Y6_N2
\ad|volt[11]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(11) = DFFEAS((((\ad|adc_sum\(13)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(13),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(11));

-- Location: LC_X8_Y5_N0
\pwm_up|up_sign|send_data[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(11) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(11))) # (!\pwm_up|up_sign|sta.101~regout\ & ((!\pwm_up|sign_deal|ov_f|Equal0~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|up_sign|sta.101~regout\,
	datac => \ad|volt\(11),
	datad => \pwm_up|sign_deal|ov_f|Equal0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(11));

-- Location: LC_X8_Y6_N7
\ad|volt[10]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(10) = DFFEAS((((\ad|adc_sum\(12)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|adc_sum\(12),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(10));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\uv~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_uv,
	combout => \uv~combout\);

-- Location: LC_X16_Y7_N2
\pwm_up|sign_deal|uv_f|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count\(0) = DFFEAS(\pwm_up|sign_deal|uv_f|count\(0) $ (((\uv~combout\ & (\pwm_up|sign_deal|uv_f|Equal0~0_combout\)) # (!\uv~combout\ & ((\pwm_up|sign_deal|uv_f|count~6_combout\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_down|down_deal|rst~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "663c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|uv_f|Equal0~0_combout\,
	datab => \pwm_up|sign_deal|uv_f|count\(0),
	datac => \pwm_up|sign_deal|uv_f|count~6_combout\,
	datad => \uv~combout\,
	aclr => \pwm_down|down_deal|rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|uv_f|count\(0));

-- Location: LC_X16_Y7_N6
\pwm_up|sign_deal|uv_f|count[1]~11\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\ = CARRY(((\pwm_up|sign_deal|uv_f|count\(0))))
-- \pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\ = CARRY(((\pwm_up|sign_deal|uv_f|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|uv_f|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \pwm_up|sign_deal|uv_f|count[1]~11_cout\,
	cout0 => \pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\,
	cout1 => \pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\);

-- Location: LC_X16_Y7_N7
\pwm_up|sign_deal|uv_f|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count\(1) = DFFEAS(\uv~combout\ $ (\pwm_up|sign_deal|uv_f|count\(1) $ ((!\pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_down|down_deal|rst~regout\), , \pwm_up|sign_deal|uv_f|count~8_combout\, , , 
-- , )
-- \pwm_up|sign_deal|uv_f|count[1]~1\ = CARRY((\uv~combout\ & ((!\pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\) # (!\pwm_up|sign_deal|uv_f|count\(1)))) # (!\uv~combout\ & (!\pwm_up|sign_deal|uv_f|count\(1) & !\pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\)))
-- \pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\ = CARRY((\uv~combout\ & ((!\pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\) # (!\pwm_up|sign_deal|uv_f|count\(1)))) # (!\uv~combout\ & (!\pwm_up|sign_deal|uv_f|count\(1) & 
-- !\pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \uv~combout\,
	datab => \pwm_up|sign_deal|uv_f|count\(1),
	aclr => \pwm_down|down_deal|rst~regout\,
	ena => \pwm_up|sign_deal|uv_f|count~8_combout\,
	cin0 => \pwm_up|sign_deal|uv_f|count[1]~11COUT0_16\,
	cin1 => \pwm_up|sign_deal|uv_f|count[1]~11COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|uv_f|count\(1),
	cout0 => \pwm_up|sign_deal|uv_f|count[1]~1\,
	cout1 => \pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\);

-- Location: LC_X16_Y7_N8
\pwm_up|sign_deal|uv_f|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count\(2) = DFFEAS(\uv~combout\ $ (\pwm_up|sign_deal|uv_f|count\(2) $ ((\pwm_up|sign_deal|uv_f|count[1]~1\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_down|down_deal|rst~regout\), , \pwm_up|sign_deal|uv_f|count~8_combout\, , , , )
-- \pwm_up|sign_deal|uv_f|count[2]~3\ = CARRY((\uv~combout\ & (\pwm_up|sign_deal|uv_f|count\(2) & !\pwm_up|sign_deal|uv_f|count[1]~1\)) # (!\uv~combout\ & ((\pwm_up|sign_deal|uv_f|count\(2)) # (!\pwm_up|sign_deal|uv_f|count[1]~1\))))
-- \pwm_up|sign_deal|uv_f|count[2]~3COUT1_19\ = CARRY((\uv~combout\ & (\pwm_up|sign_deal|uv_f|count\(2) & !\pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\)) # (!\uv~combout\ & ((\pwm_up|sign_deal|uv_f|count\(2)) # (!\pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \uv~combout\,
	datab => \pwm_up|sign_deal|uv_f|count\(2),
	aclr => \pwm_down|down_deal|rst~regout\,
	ena => \pwm_up|sign_deal|uv_f|count~8_combout\,
	cin0 => \pwm_up|sign_deal|uv_f|count[1]~1\,
	cin1 => \pwm_up|sign_deal|uv_f|count[1]~1COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|uv_f|count\(2),
	cout0 => \pwm_up|sign_deal|uv_f|count[2]~3\,
	cout1 => \pwm_up|sign_deal|uv_f|count[2]~3COUT1_19\);

-- Location: LC_X16_Y7_N9
\pwm_up|sign_deal|uv_f|count[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count\(3) = DFFEAS((\pwm_up|sign_deal|uv_f|count\(3) $ (\pwm_up|sign_deal|uv_f|count[2]~3\ $ (!\uv~combout\))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_down|down_deal|rst~regout\), , \pwm_up|sign_deal|uv_f|count~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|uv_f|count\(3),
	datad => \uv~combout\,
	aclr => \pwm_down|down_deal|rst~regout\,
	ena => \pwm_up|sign_deal|uv_f|count~8_combout\,
	cin0 => \pwm_up|sign_deal|uv_f|count[2]~3\,
	cin1 => \pwm_up|sign_deal|uv_f|count[2]~3COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|uv_f|count\(3));

-- Location: LC_X16_Y7_N4
\pwm_up|sign_deal|uv_f|count~6\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count~6_combout\ = (\pwm_up|sign_deal|uv_f|count\(2)) # ((\pwm_up|sign_deal|uv_f|count\(0)) # ((\pwm_up|sign_deal|uv_f|count\(1)) # (\pwm_up|sign_deal|uv_f|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|uv_f|count\(2),
	datab => \pwm_up|sign_deal|uv_f|count\(0),
	datac => \pwm_up|sign_deal|uv_f|count\(1),
	datad => \pwm_up|sign_deal|uv_f|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|uv_f|count~6_combout\);

-- Location: LC_X16_Y7_N3
\pwm_up|sign_deal|uv_f|count~8\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|count~8_combout\ = ((\uv~combout\ & (\pwm_up|sign_deal|uv_f|Equal0~0_combout\)) # (!\uv~combout\ & ((\pwm_up|sign_deal|uv_f|count~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|uv_f|Equal0~0_combout\,
	datac => \pwm_up|sign_deal|uv_f|count~6_combout\,
	datad => \uv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|uv_f|count~8_combout\);

-- Location: LC_X16_Y7_N5
\pwm_up|sign_deal|uv_f|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|uv_f|Equal0~0_combout\ = (((!\pwm_up|sign_deal|uv_f|count\(3)) # (!\pwm_up|sign_deal|uv_f|count\(1))) # (!\pwm_up|sign_deal|uv_f|count\(0))) # (!\pwm_up|sign_deal|uv_f|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|uv_f|count\(2),
	datab => \pwm_up|sign_deal|uv_f|count\(0),
	datac => \pwm_up|sign_deal|uv_f|count\(1),
	datad => \pwm_up|sign_deal|uv_f|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|uv_f|Equal0~0_combout\);

-- Location: LC_X8_Y5_N4
\pwm_up|up_sign|send_data[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(10) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(10))) # (!\pwm_up|up_sign|sta.101~regout\ & ((!\pwm_up|sign_deal|uv_f|Equal0~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|volt\(10),
	datac => \pwm_up|sign_deal|uv_f|Equal0~0_combout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(10));

-- Location: LC_X6_Y5_N9
\ad|volt[9]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, \ad|adc_sum\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|adc_sum\(11),
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(9));

-- Location: LC_X8_Y5_N9
\pwm_up|up_sign|send_data[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(9) = DFFEAS((\pwm_up|up_sign|sta.101~regout\ & (((\ad|volt\(9))))) # (!\pwm_up|up_sign|sta.101~regout\ & (!\pwm_up|sign_deal|TEM_f|Equal0~0_combout\)), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|TEM_f|Equal0~0_combout\,
	datab => \pwm_up|up_sign|sta.101~regout\,
	datad => \ad|volt\(9),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(9));

-- Location: LC_X7_Y8_N9
\ad|volt[8]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(8) = DFFEAS((((\ad|adc_sum\(10)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(10),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(8));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\db~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_db,
	combout => \db~combout\);

-- Location: LC_X16_Y8_N5
\pwm_up|sign_deal|db_f|in1_dly[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|in1_dly\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \db~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \db~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|in1_dly\(0));

-- Location: LC_X16_Y8_N4
\pwm_up|sign_deal|db_f|in1_dly[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|in1_dly\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|db_f|in1_dly\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|db_f|in1_dly\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|in1_dly\(1));

-- Location: LC_X16_Y8_N7
\pwm_up|sign_deal|db_f|in1_dly[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|in1_dly\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \pwm_up|sign_deal|db_f|in1_dly\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|sign_deal|db_f|in1_dly\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|in1_dly\(2));

-- Location: LC_X16_Y8_N6
\pwm_up|sign_deal|db_f|count[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|count\(1) = DFFEAS((\pwm_up|sign_deal|db_f|in1_dly\(2) & (!\pwm_up|sign_deal|db_f|count\(2) & (\pwm_up|sign_deal|db_f|count\(1) $ (\pwm_up|sign_deal|db_f|count\(0))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0060",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|db_f|count\(1),
	datab => \pwm_up|sign_deal|db_f|count\(0),
	datac => \pwm_up|sign_deal|db_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|db_f|count\(2),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|count\(1));

-- Location: LC_X16_Y8_N8
\pwm_up|sign_deal|db_f|count[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|count\(2) = DFFEAS((\pwm_up|sign_deal|db_f|count\(1) & (\pwm_up|sign_deal|db_f|in1_dly\(2) & ((\pwm_up|sign_deal|db_f|count\(0)) # (\pwm_up|sign_deal|db_f|count\(2))))) # (!\pwm_up|sign_deal|db_f|count\(1) & 
-- (\pwm_up|sign_deal|db_f|count\(2) & ((\pwm_up|sign_deal|db_f|in1_dly\(2)) # (!\pwm_up|sign_deal|db_f|count\(0))))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f180",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|db_f|count\(1),
	datab => \pwm_up|sign_deal|db_f|count\(0),
	datac => \pwm_up|sign_deal|db_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|db_f|count\(2),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|count\(2));

-- Location: LC_X16_Y8_N9
\pwm_up|sign_deal|db_f|count[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|count\(0) = DFFEAS(((!\pwm_up|sign_deal|db_f|count\(0) & (\pwm_up|sign_deal|db_f|in1_dly\(2) & !\pwm_up|sign_deal|db_f|count\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\pwm_up|sign_deal|comb~4_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_up|sign_deal|db_f|count\(0),
	datac => \pwm_up|sign_deal|db_f|in1_dly\(2),
	datad => \pwm_up|sign_deal|db_f|count\(2),
	aclr => \pwm_up|sign_deal|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|sign_deal|db_f|count\(0));

-- Location: LC_X16_Y8_N2
\pwm_up|sign_deal|db_f|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|sign_deal|db_f|Equal0~0_combout\ = ((!\pwm_up|sign_deal|db_f|count\(0) & (!\pwm_up|sign_deal|db_f|count\(1) & \pwm_up|sign_deal|db_f|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|db_f|count\(0),
	datac => \pwm_up|sign_deal|db_f|count\(1),
	datad => \pwm_up|sign_deal|db_f|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|sign_deal|db_f|Equal0~0_combout\);

-- Location: LC_X9_Y7_N7
\pwm_up|up_sign|send_data[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(8) = DFFEAS((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(8))) # (!\pwm_up|up_sign|sta.101~regout\ & (((\pwm_up|sign_deal|db_f|Equal0~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, VCC, , , \pwm_up|up_sign|sta.110~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datab => \ad|volt\(8),
	datac => VCC,
	datad => \pwm_up|sign_deal|db_f|Equal0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(8));

-- Location: LC_X8_Y6_N6
\ad|volt[7]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(7) = DFFEAS((((\ad|adc_sum\(9)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|adc_sum\(9),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(7));

-- Location: LC_X9_Y8_N7
\pwm_up|up_sign|send_data[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(7) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & ((\ad|volt\(7)))) # (!\pwm_up|up_sign|sta.101~regout\ & (\pwm_up|sign_deal|duan1~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|duan1~regout\,
	datac => \ad|volt\(7),
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(7));

-- Location: LC_X8_Y6_N5
\ad|volt[6]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(6) = DFFEAS((((\ad|adc_sum\(8)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|adc_sum\(8),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(6));

-- Location: LC_X8_Y5_N3
\pwm_up|up_sign|send_data[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(6) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(6))) # (!\pwm_up|up_sign|sta.101~regout\ & ((\pwm_up|sign_deal|duan2~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|volt\(6),
	datac => \pwm_up|sign_deal|duan2~regout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(6));

-- Location: LC_X6_Y5_N8
\ad|volt[4]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(4) = DFFEAS((((\ad|adc_sum\(6)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(6),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(4));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bypass_i~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bypass_i,
	combout => \bypass_i~combout\);

-- Location: LC_X7_Y5_N0
\pwm_up|up_sign|send_data[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(4) = DFFEAS((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(4))) # (!\pwm_up|up_sign|sta.101~regout\ & (((!\bypass_i~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|send_data[17]~2\, , , 
-- \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d8d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datab => \ad|volt\(4),
	datac => \bypass_i~combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(4));

-- Location: LC_X6_Y5_N5
\ad|volt[3]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(3) = DFFEAS((((\ad|adc_sum\(5)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(5),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(3));

-- Location: LC_X7_Y5_N5
\pwm_up|up_sign|send_data[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(3) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & ((\ad|volt\(3)))) # (!\pwm_up|up_sign|sta.101~regout\ & (\pwm_down|down_deal|start~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|start~regout\,
	datac => \pwm_up|up_sign|sta.101~regout\,
	datad => \ad|volt\(3),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(3));

-- Location: LC_X7_Y8_N5
\ad|volt[2]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(2) = DFFEAS((((\ad|adc_sum\(4)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(4),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(2));

-- Location: LC_X12_Y6_N9
\pwm_down|down_deal|stop~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|stop~0_combout\ = ((\pwm_down|down_deal|stop~regout\) # ((\pwm_down|down_deal|Lockn~regout\) # (\pwm_up|sign_deal|fault\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|stop~regout\,
	datac => \pwm_down|down_deal|Lockn~regout\,
	datad => \pwm_up|sign_deal|fault\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|stop~0_combout\);

-- Location: LC_X12_Y6_N3
\pwm_down|down_deal|stop\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|stop~regout\ = DFFEAS((\pwm_down|down_deal|always6~5_combout\) # ((!\pwm_down|down_deal|always6~8_combout\ & (!\pwm_down|down_deal|always9~1_combout\ & \pwm_down|down_deal|stop~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|always6~5_combout\,
	datab => \pwm_down|down_deal|always6~8_combout\,
	datac => \pwm_down|down_deal|always9~1_combout\,
	datad => \pwm_down|down_deal|stop~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|stop~regout\);

-- Location: LC_X9_Y7_N6
\pwm_up|up_sign|send_data[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(2) = DFFEAS((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(2))) # (!\pwm_up|up_sign|sta.101~regout\ & (((\pwm_down|down_deal|stop~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, VCC, , , \pwm_up|up_sign|sta.110~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datab => \ad|volt\(2),
	datac => VCC,
	datad => \pwm_down|down_deal|stop~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(2));

-- Location: LC_X9_Y6_N4
\pwm_up|up_sign|MSEND_BYTE|Selector0~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|Selector0~1_combout\ = (((\pwm_up|up_sign|send_start~regout\) # (\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|Selector0~1_combout\);

-- Location: LC_X8_Y6_N0
\ad|volt[0]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(0) = DFFEAS((((\ad|adc_sum\(2)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ad|adc_sum\(2),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(0));

-- Location: LC_X8_Y5_N5
\pwm_up|up_sign|send_data[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(0) = DFFEAS((\pwm_up|up_sign|sta.101~regout\ & (\ad|volt\(0))) # (!\pwm_up|up_sign|sta.101~regout\ & (((\pwm_up|sign_deal|duan1~regout\) # (\pwm_up|sign_deal|duan2~regout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ad|volt\(0),
	datab => \pwm_up|sign_deal|duan1~regout\,
	datac => \pwm_up|sign_deal|duan2~regout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(0));

-- Location: LC_X10_Y4_N2
\pwm_up|up_sign|MSEND_BYTE|dout~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\) # ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR~regout\) # (!\pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_ACC~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_LD2RSR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\);

-- Location: LC_X9_Y6_N8
\pwm_up|up_sign|MSEND_BYTE|rsr[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(0) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|Selector0~1_combout\ & (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(0), , , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~1_combout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datac => \pwm_up|up_sign|send_data\(0),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(0));

-- Location: LC_X9_Y5_N5
\pwm_up|up_sign|MSEND_BYTE|rsr~32\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~32_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(0)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(0),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~32_combout\);

-- Location: LC_X7_Y8_N6
\ad|volt[1]\ : maxii_lcell
-- Equation(s):
-- \ad|volt\(1) = DFFEAS((((\ad|adc_sum\(3)))), GLOBAL(\clk~combout\), VCC, , \ad|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ad|adc_sum\(3),
	aclr => GND,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|volt\(1));

-- Location: LC_X9_Y8_N2
\pwm_up|up_sign|send_data[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(1) = DFFEAS(((\pwm_up|up_sign|sta.101~regout\ & ((\ad|volt\(1)))) # (!\pwm_up|up_sign|sta.101~regout\ & (\pwm_down|down_deal|Lockn~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|Lockn~regout\,
	datac => \ad|volt\(1),
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(1));

-- Location: LC_X9_Y5_N4
\pwm_up|up_sign|MSEND_BYTE|rsr[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(1) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & ((\pwm_up|up_sign|send_data\(1)))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- (\pwm_up|up_sign|MSEND_BYTE|rsr~32_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr~32_combout\,
	datab => \pwm_up|up_sign|send_data\(1),
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(1));

-- Location: LC_X9_Y5_N9
\pwm_up|up_sign|MSEND_BYTE|rsr~30\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~30_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(1)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(1),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~30_combout\);

-- Location: LC_X9_Y5_N2
\pwm_up|up_sign|MSEND_BYTE|rsr[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(2) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(2))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~30_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(2),
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~30_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(2));

-- Location: LC_X7_Y5_N8
\pwm_up|up_sign|MSEND_BYTE|rsr~28\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~28_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\) # ((\pwm_up|up_sign|MSEND_BYTE|rsr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~28_combout\);

-- Location: LC_X7_Y5_N9
\pwm_up|up_sign|MSEND_BYTE|rsr[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(3) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(3))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~28_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(3),
	datab => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~28_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(3));

-- Location: LC_X7_Y5_N1
\pwm_up|up_sign|MSEND_BYTE|rsr~26\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~26_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|rsr\(3)) # ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(3),
	datac => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~26_combout\);

-- Location: LC_X7_Y5_N2
\pwm_up|up_sign|MSEND_BYTE|rsr[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(4) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(4))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~26_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(4),
	datab => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~26_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(4));

-- Location: LC_X7_Y5_N7
\pwm_up|up_sign|MSEND_BYTE|rsr~24\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~24_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|rsr\(4)) # ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(4),
	datac => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~24_combout\);

-- Location: LC_X8_Y7_N4
\ad|volt[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector19~1\ = (\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|sta.110~regout\) # ((B1_volt[5] & \pwm_up|up_sign|sta.101~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datab => \pwm_up|up_sign|sta.110~regout\,
	datac => \ad|adc_sum\(7),
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => GND,
	sload => VCC,
	ena => \ad|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector19~1\,
	regout => \ad|volt\(5));

-- Location: LC_X8_Y7_N5
\pwm_up|up_sign|Selector19~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector19~0_combout\ = (\pwm_up|up_sign|sta.110~regout\) # ((\pwm_up|up_sign|sta.101~regout\ & (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\)) # (!\pwm_up|up_sign|sta.101~regout\ & ((\pwm_up|up_sign|sta.000~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datab => \pwm_up|up_sign|sta.110~regout\,
	datac => \pwm_up|up_sign|sta.000~regout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector19~0_combout\);

-- Location: LC_X9_Y7_N4
\pwm_up|up_sign|Selector28~9\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector28~9_combout\ = (!\pwm_up|up_sign|sta.000~regout\ & (!\pwm_up|up_sign|Equal0~3_combout\ & ((\pwm_up|up_sign|reg_flt\(2)) # (!\pwm_up|up_sign|reg_flt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0203",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|reg_flt\(2),
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|up_sign|Equal0~3_combout\,
	datad => \pwm_up|up_sign|reg_flt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector28~9_combout\);

-- Location: LC_X8_Y7_N9
\pwm_up|up_sign|send_data[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(5) = DFFEAS((\pwm_up|up_sign|Selector19~1\) # ((\pwm_up|up_sign|send_data\(5) & ((\pwm_up|up_sign|Selector19~0_combout\) # (\pwm_up|up_sign|Selector28~9_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|Selector19~1\,
	datab => \pwm_up|up_sign|send_data\(5),
	datac => \pwm_up|up_sign|Selector19~0_combout\,
	datad => \pwm_up|up_sign|Selector28~9_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(5));

-- Location: LC_X7_Y5_N6
\pwm_up|up_sign|MSEND_BYTE|rsr[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(5) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & ((\pwm_up|up_sign|send_data\(5)))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- (\pwm_up|up_sign|MSEND_BYTE|rsr~24_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr~24_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datad => \pwm_up|up_sign|send_data\(5),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(5));

-- Location: LC_X7_Y5_N3
\pwm_up|up_sign|MSEND_BYTE|rsr~22\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~22_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\) # ((\pwm_up|up_sign|MSEND_BYTE|rsr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~22_combout\);

-- Location: LC_X7_Y5_N4
\pwm_up|up_sign|MSEND_BYTE|rsr[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(6) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(6))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~22_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(6),
	datab => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~22_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(6));

-- Location: LC_X9_Y5_N3
\pwm_up|up_sign|MSEND_BYTE|rsr~20\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~20_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(6)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(6),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~20_combout\);

-- Location: LC_X9_Y5_N0
\pwm_up|up_sign|MSEND_BYTE|rsr[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(7) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(7))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~20_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(7),
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~20_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(7));

-- Location: LC_X9_Y5_N6
\pwm_up|up_sign|MSEND_BYTE|rsr~18\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~18_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(7)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(7),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~18_combout\);

-- Location: LC_X9_Y5_N7
\pwm_up|up_sign|MSEND_BYTE|rsr[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(8) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(8))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~18_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datab => \pwm_up|up_sign|send_data\(8),
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr~18_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(8));

-- Location: LC_X9_Y5_N8
\pwm_up|up_sign|MSEND_BYTE|rsr~16\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~16_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(8)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(8),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~16_combout\);

-- Location: LC_X9_Y5_N1
\pwm_up|up_sign|MSEND_BYTE|rsr[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(9) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(9))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~16_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~16_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(9));

-- Location: LC_X8_Y5_N1
\pwm_up|up_sign|MSEND_BYTE|rsr~14\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~14_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\) # ((\pwm_up|up_sign|MSEND_BYTE|rsr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~14_combout\);

-- Location: LC_X8_Y5_N2
\pwm_up|up_sign|MSEND_BYTE|rsr[10]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(10) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(10))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~14_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datac => \pwm_up|up_sign|send_data\(10),
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~14_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(10));

-- Location: LC_X8_Y5_N7
\pwm_up|up_sign|MSEND_BYTE|rsr~12\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~12_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\) # ((\pwm_up|up_sign|MSEND_BYTE|rsr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~12_combout\);

-- Location: LC_X8_Y5_N8
\pwm_up|up_sign|MSEND_BYTE|rsr[11]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(11) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(11))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~12_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datab => \pwm_up|up_sign|send_data\(11),
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~12_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(11));

-- Location: LC_X10_Y5_N3
\pwm_up|up_sign|MSEND_BYTE|rsr~10\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~10_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(11)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(11),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~10_combout\);

-- Location: LC_X10_Y5_N4
\pwm_up|up_sign|MSEND_BYTE|rsr[12]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(12) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(12))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~10_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datab => \pwm_up|up_sign|send_data\(12),
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~10_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(12));

-- Location: LC_X10_Y5_N7
\pwm_up|up_sign|MSEND_BYTE|rsr~8\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~8_combout\ = (((\pwm_up|up_sign|MSEND_BYTE|rsr\(12)) # (\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(12),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~8_combout\);

-- Location: LC_X10_Y5_N8
\pwm_up|up_sign|MSEND_BYTE|rsr[13]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(13) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|send_data\(13))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr~8_combout\))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	datab => \pwm_up|up_sign|send_data\(13),
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~8_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(13));

-- Location: LC_X8_Y7_N8
\pwm_up|up_sign|Selector10~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector10~0_combout\ = (\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & ((\pwm_up|up_sign|sta.110~regout\) # ((\pwm_up|up_sign|Selector28~7\ & \pwm_up|sign_deal|t2|Equal0~0_combout\)))) # 
-- (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & (((\pwm_up|up_sign|Selector28~7\ & \pwm_up|sign_deal|t2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datab => \pwm_up|up_sign|sta.110~regout\,
	datac => \pwm_up|up_sign|Selector28~7\,
	datad => \pwm_up|sign_deal|t2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector10~0_combout\);

-- Location: LC_X8_Y7_N1
\pwm_up|up_sign|send_data[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(14) = DFFEAS((\pwm_up|up_sign|Selector10~0_combout\) # ((\pwm_up|up_sign|send_data\(14) & ((\pwm_up|up_sign|Selector19~0_combout\) # (\pwm_up|up_sign|Selector28~9_combout\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|Selector10~0_combout\,
	datab => \pwm_up|up_sign|send_data\(14),
	datac => \pwm_up|up_sign|Selector19~0_combout\,
	datad => \pwm_up|up_sign|Selector28~9_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(14));

-- Location: LC_X10_Y5_N1
\pwm_up|up_sign|MSEND_BYTE|rsr~7\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~7_combout\ = (\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (((\pwm_up|up_sign|send_data\(14))))) # (!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr\(13) & 
-- ((!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr\(13),
	datab => \pwm_up|up_sign|send_data\(14),
	datac => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~7_combout\);

-- Location: LC_X10_Y5_N0
\pwm_up|up_sign|MSEND_BYTE|rsr[14]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(14) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr~7_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~7_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(14));

-- Location: LC_X10_Y5_N5
\pwm_up|up_sign|send_data[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(15) = DFFEAS((!\pwm_up|sign_deal|t1|count\(1) & (!\pwm_up|up_sign|sta.000~regout\ & (!\pwm_up|sign_deal|t1|count\(0) & \pwm_up|sign_deal|t1|count\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , 
-- \pwm_up|up_sign|send_data[17]~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t1|count\(1),
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|sign_deal|t1|count\(0),
	datad => \pwm_up|sign_deal|t1|count\(2),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(15));

-- Location: LC_X10_Y6_N3
\pwm_up|up_sign|MSEND_BYTE|rsr[15]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(15) = DFFEAS(((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|rsr\(14))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(15), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(0),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(14),
	datac => \pwm_up|up_sign|send_data\(15),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(15));

-- Location: LC_X9_Y8_N3
\pwm_up|up_sign|send_data[16]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(16) = DFFEAS((\pwm_up|up_sign|sta.101~regout\) # (((!\pwm_up|up_sign|reg_flt\(2) & \pwm_up|up_sign|reg_flt\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|send_data[17]~2\, , , 
-- \pwm_up|up_sign|sta.110~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|sta.101~regout\,
	datac => \pwm_up|up_sign|reg_flt\(2),
	datad => \pwm_up|up_sign|reg_flt\(1),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(16));

-- Location: LC_X10_Y6_N9
\pwm_up|up_sign|MSEND_BYTE|rsr[16]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(16) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (((\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1))))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr\(15))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(16), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr\(15),
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datac => \pwm_up|up_sign|send_data\(16),
	datad => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(1),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(16));

-- Location: LC_X10_Y6_N5
\pwm_up|up_sign|MSEND_BYTE|rsr[17]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(17) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (((\pwm_up|up_sign|MSEND_BYTE|rsr\(16))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(17), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(2),
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datac => \pwm_up|up_sign|send_data\(17),
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr\(16),
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(17));

-- Location: LC_X9_Y7_N9
\pwm_up|up_sign|send_data[18]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(18) = DFFEAS((!\pwm_up|up_sign|reg_flt\(2) & (\pwm_up|up_sign|reg_flt\(1) & ((!\pwm_up|up_sign|sta.101~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|send_data[17]~2\, VCC, , , 
-- \pwm_up|up_sign|sta.110~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|reg_flt\(2),
	datab => \pwm_up|up_sign|reg_flt\(1),
	datac => VCC,
	datad => \pwm_up|up_sign|sta.101~regout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_up|up_sign|sta.110~regout\,
	ena => \pwm_up|up_sign|send_data[17]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(18));

-- Location: LC_X10_Y6_N6
\pwm_up|up_sign|MSEND_BYTE|rsr[18]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(18) = DFFEAS(((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3)))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr\(17)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(18), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr\(17),
	datab => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(3),
	datac => \pwm_up|up_sign|send_data\(18),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(18));

-- Location: LC_X10_Y6_N4
\pwm_up|up_sign|MSEND_BYTE|rsr[19]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(19) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4)))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & 
-- (\pwm_up|up_sign|MSEND_BYTE|rsr\(18))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr\(18),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(4),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(19));

-- Location: LC_X10_Y6_N8
\pwm_up|up_sign|MSEND_BYTE|rsr[20]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(20) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr\(19)))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(5),
	datab => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(19),
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(20));

-- Location: LC_X9_Y7_N2
\pwm_up|up_sign|Selector27~1\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|Selector27~1_combout\ = ((\pwm_up|up_sign|sta.000~regout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\))) # (!\pwm_up|up_sign|sta.000~regout\ & (\pwm_up|up_sign|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|up_sign|Equal0~3_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|Selector27~1_combout\);

-- Location: LC_X9_Y7_N0
\pwm_up|up_sign|send_data[21]~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data[21]~0_combout\ = (((\pwm_up|up_sign|sta.110~regout\) # (\pwm_up|up_sign|sta.101~regout\)) # (!\pwm_up|up_sign|sta.000~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|sta.000~regout\,
	datac => \pwm_up|up_sign|sta.110~regout\,
	datad => \pwm_up|up_sign|sta.101~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|send_data[21]~0_combout\);

-- Location: LC_X9_Y7_N5
\pwm_up|up_sign|send_data[21]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|send_data\(21) = DFFEAS((\pwm_up|up_sign|send_data\(21)) # (((\pwm_up|up_sign|Selector27~1_combout\ & \pwm_up|up_sign|send_data[21]~0_combout\)) # (!\pwm_up|up_sign|Selector26~1_combout\)), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|send_data\(21),
	datab => \pwm_up|up_sign|Selector27~1_combout\,
	datac => \pwm_up|up_sign|send_data[21]~0_combout\,
	datad => \pwm_up|up_sign|Selector26~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|send_data\(21));

-- Location: LC_X10_Y6_N7
\pwm_up|up_sign|MSEND_BYTE|rsr[21]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(21) = DFFEAS(((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6)))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr\(20)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(21), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|rsr\(20),
	datab => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(6),
	datac => \pwm_up|up_sign|send_data\(21),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(21));

-- Location: LC_X10_Y6_N0
\pwm_up|up_sign|MSEND_BYTE|rsr[22]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(22) = DFFEAS((\pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & 
-- ((\pwm_up|up_sign|MSEND_BYTE|rsr\(21)))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(7),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr\(21),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(22));

-- Location: LC_X10_Y6_N2
\pwm_up|up_sign|MSEND_BYTE|rsr[23]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(23) = DFFEAS(((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|rsr\(22))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, \pwm_up|up_sign|send_data\(21), , \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\, \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(22),
	datac => \pwm_up|up_sign|send_data\(21),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	sload => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(23));

-- Location: LC_X10_Y7_N6
\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9) $ (\pwm_up|up_sign|MSEND_BYTE|rsr\(23) $ (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8))))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datac => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(8),
	datad => \pwm_up|up_sign|MSEND_BYTE|Selector0~0_combout\,
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9));

-- Location: LC_X10_Y6_N1
\pwm_up|up_sign|MSEND_BYTE|rsr~3\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr~3_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & (\pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9))) # (!\pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|rsr\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|up_sign|MSEND_BYTE|crc_gene|d_temp\(9),
	datab => \pwm_up|up_sign|MSEND_BYTE|rsr\(23),
	datad => \pwm_up|up_sign|MSEND_BYTE|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|rsr~3_combout\);

-- Location: LC_X10_Y5_N6
\pwm_up|up_sign|MSEND_BYTE|rsr[24]\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|rsr\(24) = DFFEAS((!\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\ & (\pwm_up|up_sign|MSEND_BYTE|rsr~3_combout\ & ((\pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\) # (\pwm_up|up_sign|send_start~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_DONE~regout\,
	datab => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_IDLE~regout\,
	datac => \pwm_up|up_sign|send_start~regout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr~3_combout\,
	aclr => \init|LessThan2~3_combout\,
	sclr => \pwm_up|up_sign|MSEND_BYTE|cur_sta.S_NOP_0~regout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|rsr\(24));

-- Location: LC_X10_Y4_N6
\pwm_up|up_sign|MSEND_BYTE|dout\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|dout~regout\ = DFFEAS((((\pwm_up|up_sign|MSEND_BYTE|rsr\(24)) # (!\pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \pwm_up|up_sign|MSEND_BYTE|rsr~2_combout\,
	datad => \pwm_up|up_sign|MSEND_BYTE|rsr\(24),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_up|up_sign|MSEND_BYTE|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_up|up_sign|MSEND_BYTE|dout~regout\);

-- Location: LC_X11_Y5_N4
\pwm_up|up_sign|MSEND_BYTE|sent~0\ : maxii_lcell
-- Equation(s):
-- \pwm_up|up_sign|MSEND_BYTE|sent~0_combout\ = ((\pwm_up|up_sign|MSEND_BYTE|dout~regout\ & (!\init|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|up_sign|MSEND_BYTE|dout~regout\,
	datac => \init|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_up|up_sign|MSEND_BYTE|sent~0_combout\);

-- Location: LC_X7_Y8_N2
\ad|adclk~0\ : maxii_lcell
-- Equation(s):
-- \ad|adclk~0_combout\ = (\ad|Equal3~0_combout\ & (((\ad|adclk~regout\)))) # (!\ad|Equal3~0_combout\ & (((\ad|ad_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ad|Equal3~0_combout\,
	datac => \ad|adclk~regout\,
	datad => \ad|ad_count\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ad|adclk~0_combout\);

-- Location: LC_X7_Y8_N4
\ad|adclk\ : maxii_lcell
-- Equation(s):
-- \ad|adclk~regout\ = DFFEAS(((\ad|adclk~0_combout\) # ((\ad|Equal2~1_combout\))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \ad|cs_n~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ad|adclk~0_combout\,
	datac => VCC,
	datad => \ad|Equal2~1_combout\,
	aclr => GND,
	sload => \ad|cs_n~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ad|adclk~regout\);

-- Location: LC_X12_Y5_N1
\pwm_down|dead|out_en\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|out_en~combout\ = (((\pwm_down|down_deal|start~regout\ & !\pwm_up|sign_deal|fault\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|down_deal|start~regout\,
	datad => \pwm_up|sign_deal|fault\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|out_en~combout\);

-- Location: LC_X12_Y8_N0
\pwm_down|down_deal|Equal8~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|Equal8~0_combout\ = (((\pwm_down|des|recv_data\(19) & \pwm_down|down_deal|Equal7~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|des|recv_data\(19),
	datad => \pwm_down|down_deal|Equal7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|Equal8~0_combout\);

-- Location: LC_X12_Y8_N5
\pwm_down|down_deal|always2~4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|always2~4_combout\ = (\pwm_down|down_deal|always2~1\) # (((\pwm_down|down_deal|always2~2\) # (\pwm_down|down_deal|always2~3\)) # (!\pwm_down|des|recv_done~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|always2~1\,
	datab => \pwm_down|des|recv_done~regout\,
	datac => \pwm_down|down_deal|always2~2\,
	datad => \pwm_down|down_deal|always2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|always2~4_combout\);

-- Location: LC_X12_Y7_N4
\pwm_down|down_deal|reg_igbt[1]~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|reg_igbt[1]~1_combout\ = (\pwm_down|down_deal|rst~regout\) # ((\pwm_down|down_deal|Equal8~0_combout\ & (!\pwm_down|down_deal|always2~4_combout\ & !\pwm_down|down_deal|always2~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|down_deal|Equal8~0_combout\,
	datab => \pwm_down|down_deal|rst~regout\,
	datac => \pwm_down|down_deal|always2~4_combout\,
	datad => \pwm_down|down_deal|always2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|reg_igbt[1]~1_combout\);

-- Location: LC_X12_Y7_N8
\pwm_down|down_deal|reg_igbt[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|reg_igbt\(1) = DFFEAS(((!\pwm_down|down_deal|rst~regout\ & ((\pwm_down|des|recv_data\(4))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|reg_igbt[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|rst~regout\,
	datad => \pwm_down|des|recv_data\(4),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|reg_igbt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|reg_igbt\(1));

-- Location: LC_X16_Y5_N0
\pwm_down|dead|d_data1[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(0) = DFFEAS(((!\pwm_down|dead|d_data1\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[0]~9\ = CARRY(((\pwm_down|dead|d_data1\(0))))
-- \pwm_down|dead|d_data1[0]~9COUT1_22\ = CARRY(((\pwm_down|dead|d_data1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data1\(0),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(0),
	cout0 => \pwm_down|dead|d_data1[0]~9\,
	cout1 => \pwm_down|dead|d_data1[0]~9COUT1_22\);

-- Location: LC_X16_Y5_N1
\pwm_down|dead|d_data1[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(1) = DFFEAS((\pwm_down|dead|d_data1\(1) $ ((\pwm_down|dead|d_data1[0]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[1]~11\ = CARRY(((!\pwm_down|dead|d_data1[0]~9\) # (!\pwm_down|dead|d_data1\(1))))
-- \pwm_down|dead|d_data1[1]~11COUT1_23\ = CARRY(((!\pwm_down|dead|d_data1[0]~9COUT1_22\) # (!\pwm_down|dead|d_data1\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data1\(1),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin0 => \pwm_down|dead|d_data1[0]~9\,
	cin1 => \pwm_down|dead|d_data1[0]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(1),
	cout0 => \pwm_down|dead|d_data1[1]~11\,
	cout1 => \pwm_down|dead|d_data1[1]~11COUT1_23\);

-- Location: LC_X16_Y5_N2
\pwm_down|dead|d_data1[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(2) = DFFEAS((\pwm_down|dead|d_data1\(2) $ ((!\pwm_down|dead|d_data1[1]~11\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[2]~13\ = CARRY(((\pwm_down|dead|d_data1\(2) & !\pwm_down|dead|d_data1[1]~11\)))
-- \pwm_down|dead|d_data1[2]~13COUT1_24\ = CARRY(((\pwm_down|dead|d_data1\(2) & !\pwm_down|dead|d_data1[1]~11COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data1\(2),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin0 => \pwm_down|dead|d_data1[1]~11\,
	cin1 => \pwm_down|dead|d_data1[1]~11COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(2),
	cout0 => \pwm_down|dead|d_data1[2]~13\,
	cout1 => \pwm_down|dead|d_data1[2]~13COUT1_24\);

-- Location: LC_X16_Y5_N3
\pwm_down|dead|d_data1[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(3) = DFFEAS(\pwm_down|dead|d_data1\(3) $ ((((\pwm_down|dead|d_data1[2]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[3]~15\ = CARRY(((!\pwm_down|dead|d_data1[2]~13\)) # (!\pwm_down|dead|d_data1\(3)))
-- \pwm_down|dead|d_data1[3]~15COUT1_25\ = CARRY(((!\pwm_down|dead|d_data1[2]~13COUT1_24\)) # (!\pwm_down|dead|d_data1\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data1\(3),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin0 => \pwm_down|dead|d_data1[2]~13\,
	cin1 => \pwm_down|dead|d_data1[2]~13COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(3),
	cout0 => \pwm_down|dead|d_data1[3]~15\,
	cout1 => \pwm_down|dead|d_data1[3]~15COUT1_25\);

-- Location: LC_X16_Y5_N4
\pwm_down|dead|d_data1[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(4) = DFFEAS(\pwm_down|dead|d_data1\(4) $ ((((!\pwm_down|dead|d_data1[3]~15\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[4]~17\ = CARRY((\pwm_down|dead|d_data1\(4) & ((!\pwm_down|dead|d_data1[3]~15COUT1_25\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data1\(4),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin0 => \pwm_down|dead|d_data1[3]~15\,
	cin1 => \pwm_down|dead|d_data1[3]~15COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(4),
	cout => \pwm_down|dead|d_data1[4]~17\);

-- Location: LC_X16_Y5_N5
\pwm_down|dead|d_data1[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(5) = DFFEAS(\pwm_down|dead|d_data1\(5) $ ((((\pwm_down|dead|d_data1[4]~17\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(1), , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[5]~1\ = CARRY(((!\pwm_down|dead|d_data1[4]~17\)) # (!\pwm_down|dead|d_data1\(5)))
-- \pwm_down|dead|d_data1[5]~1COUT1_26\ = CARRY(((!\pwm_down|dead|d_data1[4]~17\)) # (!\pwm_down|dead|d_data1\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data1\(5),
	datac => \pwm_down|down_deal|reg_igbt\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin => \pwm_down|dead|d_data1[4]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(5),
	cout0 => \pwm_down|dead|d_data1[5]~1\,
	cout1 => \pwm_down|dead|d_data1[5]~1COUT1_26\);

-- Location: LC_X16_Y5_N6
\pwm_down|dead|d_data1[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(6) = DFFEAS(\pwm_down|dead|d_data1\(6) $ ((((!(!\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[5]~1\) # (\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[5]~1COUT1_26\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(1), , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[6]~3\ = CARRY((\pwm_down|dead|d_data1\(6) & ((!\pwm_down|dead|d_data1[5]~1\))))
-- \pwm_down|dead|d_data1[6]~3COUT1_27\ = CARRY((\pwm_down|dead|d_data1\(6) & ((!\pwm_down|dead|d_data1[5]~1COUT1_26\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data1\(6),
	datac => \pwm_down|down_deal|reg_igbt\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin => \pwm_down|dead|d_data1[4]~17\,
	cin0 => \pwm_down|dead|d_data1[5]~1\,
	cin1 => \pwm_down|dead|d_data1[5]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(6),
	cout0 => \pwm_down|dead|d_data1[6]~3\,
	cout1 => \pwm_down|dead|d_data1[6]~3COUT1_27\);

-- Location: LC_X16_Y5_N7
\pwm_down|dead|d_data1[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(7) = DFFEAS((\pwm_down|dead|d_data1\(7) $ (((!\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[6]~3\) # (\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[6]~3COUT1_27\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(1), , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[7]~5\ = CARRY(((!\pwm_down|dead|d_data1[6]~3\) # (!\pwm_down|dead|d_data1\(7))))
-- \pwm_down|dead|d_data1[7]~5COUT1_28\ = CARRY(((!\pwm_down|dead|d_data1[6]~3COUT1_27\) # (!\pwm_down|dead|d_data1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data1\(7),
	datac => \pwm_down|down_deal|reg_igbt\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin => \pwm_down|dead|d_data1[4]~17\,
	cin0 => \pwm_down|dead|d_data1[6]~3\,
	cin1 => \pwm_down|dead|d_data1[6]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(7),
	cout0 => \pwm_down|dead|d_data1[7]~5\,
	cout1 => \pwm_down|dead|d_data1[7]~5COUT1_28\);

-- Location: LC_X16_Y5_N8
\pwm_down|dead|d_data1[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(8) = DFFEAS(\pwm_down|dead|d_data1\(8) $ ((((!(!\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[7]~5\) # (\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[7]~5COUT1_28\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(1), , , \pwm_down|dead|d_data1[7]~20_combout\)
-- \pwm_down|dead|d_data1[8]~7\ = CARRY((\pwm_down|dead|d_data1\(8) & ((!\pwm_down|dead|d_data1[7]~5\))))
-- \pwm_down|dead|d_data1[8]~7COUT1_29\ = CARRY((\pwm_down|dead|d_data1\(8) & ((!\pwm_down|dead|d_data1[7]~5COUT1_28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data1\(8),
	datac => \pwm_down|down_deal|reg_igbt\(1),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin => \pwm_down|dead|d_data1[4]~17\,
	cin0 => \pwm_down|dead|d_data1[7]~5\,
	cin1 => \pwm_down|dead|d_data1[7]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(8),
	cout0 => \pwm_down|dead|d_data1[8]~7\,
	cout1 => \pwm_down|dead|d_data1[8]~7COUT1_29\);

-- Location: LC_X16_Y5_N9
\pwm_down|dead|d_data1[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1\(9) = DFFEAS((((!\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[8]~7\) # (\pwm_down|dead|d_data1[4]~17\ & \pwm_down|dead|d_data1[8]~7COUT1_29\) $ (\pwm_down|dead|d_data1\(9)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data1[7]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \~GND~combout\,
	datad => \pwm_down|dead|d_data1\(9),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data1[7]~20_combout\,
	cin => \pwm_down|dead|d_data1[4]~17\,
	cin0 => \pwm_down|dead|d_data1[8]~7\,
	cin1 => \pwm_down|dead|d_data1[8]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data1\(9));

-- Location: LC_X16_Y4_N4
\pwm_down|dead|d_data1[7]~20\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data1[7]~20_combout\ = ((\pwm_down|dead|d_data1\(9)) # ((\pwm_down|dead|K_1~1_combout\) # (!\pwm_down|down_deal|reg_igbt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|d_data1\(9),
	datac => \pwm_down|down_deal|reg_igbt\(1),
	datad => \pwm_down|dead|K_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|d_data1[7]~20_combout\);

-- Location: LC_X16_Y4_N3
\pwm_down|dead|K_1~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_1~1_combout\ = (\pwm_down|dead|d_data1\(7) & (\pwm_down|dead|d_data1\(6) & (\pwm_down|dead|d_data1\(5) & \pwm_down|dead|d_data1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data1\(7),
	datab => \pwm_down|dead|d_data1\(6),
	datac => \pwm_down|dead|d_data1\(5),
	datad => \pwm_down|dead|d_data1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_1~1_combout\);

-- Location: LC_X16_Y4_N5
\pwm_down|dead|K_1~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_1~2_combout\ = (!\pwm_down|dead|d_data1\(0) & (!\pwm_down|dead|d_data1\(3) & (!\pwm_down|dead|d_data1\(2) & !\pwm_down|dead|d_data1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data1\(0),
	datab => \pwm_down|dead|d_data1\(3),
	datac => \pwm_down|dead|d_data1\(2),
	datad => \pwm_down|dead|d_data1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_1~2_combout\);

-- Location: LC_X16_Y4_N1
\pwm_down|dead|K_1~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_1~3_combout\ = (\pwm_down|dead|K_1~1_combout\ & (!\pwm_down|dead|d_data1\(4) & (\pwm_down|dead|K_1~2_combout\ & !\pwm_down|dead|d_data1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|K_1~1_combout\,
	datab => \pwm_down|dead|d_data1\(4),
	datac => \pwm_down|dead|K_1~2_combout\,
	datad => \pwm_down|dead|d_data1\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_1~3_combout\);

-- Location: LC_X13_Y6_N5
\pwm_down|dead|K_1~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_1~0_combout\ = (!\pwm_down|dead|chkflt_data\(15) & (\pwm_up|sign_deal|t1|Equal0~0_combout\ & (!\pwm_down|dead|chkflt_data\(14) & \pwm_down|down_deal|chkflt~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(15),
	datab => \pwm_up|sign_deal|t1|Equal0~0_combout\,
	datac => \pwm_down|dead|chkflt_data\(14),
	datad => \pwm_down|down_deal|chkflt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_1~0_combout\);

-- Location: LC_X14_Y6_N7
\pwm_down|dead|always5~8\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~8_combout\ = (((!\pwm_down|dead|chkflt_data\(9) & !\pwm_down|dead|chkflt_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|chkflt_data\(9),
	datad => \pwm_down|dead|chkflt_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~8_combout\);

-- Location: LC_X13_Y6_N6
\pwm_down|dead|always5~9\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~9_combout\ = ((\pwm_down|dead|always5~8_combout\ & ((\pwm_down|dead|LessThan7~1_combout\) # (!\pwm_down|dead|chkflt_data\(7))))) # (!\pwm_down|dead|chkflt_data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~8_combout\,
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~9_combout\);

-- Location: LC_X13_Y6_N7
\pwm_down|dead|always5~10\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~10_combout\ = (\pwm_down|dead|chkflt_data\(13) & (\pwm_down|dead|chkflt_data\(11) & (!\pwm_down|dead|chkflt_data\(12) & \pwm_down|dead|always5~9_combout\))) # (!\pwm_down|dead|chkflt_data\(13) & 
-- (((\pwm_down|dead|chkflt_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(13),
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|always5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~10_combout\);

-- Location: LC_X13_Y4_N0
\pwm_down|dead|LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan4~0_combout\ = (\pwm_down|dead|chkflt_data\(3) & ((\pwm_down|dead|chkflt_data\(2)) # ((\pwm_down|dead|chkflt_data\(0)) # (\pwm_down|dead|chkflt_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(2),
	datab => \pwm_down|dead|chkflt_data\(0),
	datac => \pwm_down|dead|chkflt_data\(3),
	datad => \pwm_down|dead|chkflt_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan4~0_combout\);

-- Location: LC_X14_Y5_N0
\pwm_down|dead|LessThan7~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan7~0_combout\ = ((!\pwm_down|dead|chkflt_data\(5) & (!\pwm_down|dead|chkflt_data\(4) & !\pwm_down|dead|chkflt_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \pwm_down|dead|chkflt_data\(4),
	datad => \pwm_down|dead|chkflt_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan7~0_combout\);

-- Location: LC_X14_Y6_N3
\pwm_down|dead|LessThan4~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan4~1_combout\ = ((\pwm_down|dead|chkflt_data\(7) & ((\pwm_down|dead|LessThan4~0_combout\) # (!\pwm_down|dead|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|LessThan4~0_combout\,
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan4~1_combout\);

-- Location: LC_X14_Y7_N7
\pwm_down|dead|always5~6\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~6_combout\ = ((!\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|chkflt_data\(9) & \pwm_down|dead|chkflt_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(9),
	datad => \pwm_down|dead|chkflt_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~6_combout\);

-- Location: LC_X14_Y7_N5
\pwm_down|dead|always5~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~2_combout\ = ((\pwm_down|dead|chkflt_data\(10) & ((!\pwm_down|dead|chkflt_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(10),
	datad => \pwm_down|dead|chkflt_data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~2_combout\);

-- Location: LC_X14_Y5_N8
\pwm_down|dead|LessThan5~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan5~0_combout\ = (!\pwm_down|dead|chkflt_data\(6) & (((!\pwm_down|dead|chkflt_data\(3)) # (!\pwm_down|dead|chkflt_data\(4))) # (!\pwm_down|dead|chkflt_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(6),
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \pwm_down|dead|chkflt_data\(4),
	datad => \pwm_down|dead|chkflt_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan5~0_combout\);

-- Location: LC_X15_Y5_N8
\pwm_down|dead|always5~5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~5_combout\ = (!\pwm_down|dead|chkflt_data\(10) & (!\pwm_down|dead|chkflt_data\(9) & (\pwm_down|dead|LessThan5~0_combout\ & \pwm_down|dead|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(10),
	datab => \pwm_down|dead|chkflt_data\(9),
	datac => \pwm_down|dead|LessThan5~0_combout\,
	datad => \pwm_down|dead|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~5_combout\);

-- Location: LC_X14_Y6_N0
\pwm_down|dead|always5~7\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~7_combout\ = (\pwm_down|dead|always5~2_combout\) # ((\pwm_down|dead|always5~5_combout\) # ((\pwm_down|dead|LessThan4~1_combout\ & \pwm_down|dead|always5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan4~1_combout\,
	datab => \pwm_down|dead|always5~6_combout\,
	datac => \pwm_down|dead|always5~2_combout\,
	datad => \pwm_down|dead|always5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~7_combout\);

-- Location: LC_X14_Y5_N7
\pwm_down|dead|LessThan6~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan6~0_combout\ = (\pwm_down|dead|chkflt_data\(6) & ((\pwm_down|dead|chkflt_data\(5)) # ((\pwm_down|dead|chkflt_data\(4) & \pwm_down|dead|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(6),
	datab => \pwm_down|dead|chkflt_data\(5),
	datac => \pwm_down|dead|chkflt_data\(4),
	datad => \pwm_down|dead|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan6~0_combout\);

-- Location: LC_X13_Y7_N0
\pwm_down|dead|K_2~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~0_combout\ = (((!\pwm_down|dead|chkflt_data\(12) & \pwm_down|dead|chkflt_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|chkflt_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~0_combout\);

-- Location: LC_X14_Y7_N9
\pwm_down|dead|always5~4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~4_combout\ = (\pwm_down|dead|LessThan6~0_combout\ & (\pwm_down|dead|K_2~0_combout\ & (\pwm_down|dead|always5~2_combout\ & \pwm_down|dead|always5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan6~0_combout\,
	datab => \pwm_down|dead|K_2~0_combout\,
	datac => \pwm_down|dead|always5~2_combout\,
	datad => \pwm_down|dead|always5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~4_combout\);

-- Location: LC_X13_Y6_N8
\pwm_down|dead|always5~11\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~11_combout\ = (\pwm_down|dead|always5~4_combout\) # ((\pwm_down|dead|always5~10_combout\ & ((\pwm_down|dead|chkflt_data\(13)) # (\pwm_down|dead|always5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(13),
	datab => \pwm_down|dead|always5~10_combout\,
	datac => \pwm_down|dead|always5~7_combout\,
	datad => \pwm_down|dead|always5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~11_combout\);

-- Location: LC_X13_Y6_N0
\pwm_down|dead|K_1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_1~regout\ = DFFEAS((\pwm_down|dead|out_en~combout\ & ((\pwm_down|dead|K_1~3_combout\) # ((\pwm_down|dead|K_1~0_combout\ & \pwm_down|dead|always5~11_combout\)))) # (!\pwm_down|dead|out_en~combout\ & (((\pwm_down|dead|K_1~0_combout\ & 
-- \pwm_down|dead|always5~11_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|out_en~combout\,
	datab => \pwm_down|dead|K_1~3_combout\,
	datac => \pwm_down|dead|K_1~0_combout\,
	datad => \pwm_down|dead|always5~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|K_1~regout\);

-- Location: LC_X16_Y4_N6
\pwm_down|down_deal|reg_igbt[1]~_wirecell\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\ = (((!\pwm_down|down_deal|reg_igbt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|down_deal|reg_igbt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\);

-- Location: LC_X15_Y4_N0
\pwm_down|dead|d_data2[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(0) = DFFEAS(((!\pwm_down|dead|d_data2\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[0]~9\ = CARRY(((\pwm_down|dead|d_data2\(0))))
-- \pwm_down|dead|d_data2[0]~9COUT1_22\ = CARRY(((\pwm_down|dead|d_data2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data2\(0),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(0),
	cout0 => \pwm_down|dead|d_data2[0]~9\,
	cout1 => \pwm_down|dead|d_data2[0]~9COUT1_22\);

-- Location: LC_X15_Y4_N1
\pwm_down|dead|d_data2[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(1) = DFFEAS((\pwm_down|dead|d_data2\(1) $ ((\pwm_down|dead|d_data2[0]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[1]~11\ = CARRY(((!\pwm_down|dead|d_data2[0]~9\) # (!\pwm_down|dead|d_data2\(1))))
-- \pwm_down|dead|d_data2[1]~11COUT1_23\ = CARRY(((!\pwm_down|dead|d_data2[0]~9COUT1_22\) # (!\pwm_down|dead|d_data2\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data2\(1),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin0 => \pwm_down|dead|d_data2[0]~9\,
	cin1 => \pwm_down|dead|d_data2[0]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(1),
	cout0 => \pwm_down|dead|d_data2[1]~11\,
	cout1 => \pwm_down|dead|d_data2[1]~11COUT1_23\);

-- Location: LC_X15_Y4_N2
\pwm_down|dead|d_data2[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(2) = DFFEAS((\pwm_down|dead|d_data2\(2) $ ((!\pwm_down|dead|d_data2[1]~11\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[2]~13\ = CARRY(((\pwm_down|dead|d_data2\(2) & !\pwm_down|dead|d_data2[1]~11\)))
-- \pwm_down|dead|d_data2[2]~13COUT1_24\ = CARRY(((\pwm_down|dead|d_data2\(2) & !\pwm_down|dead|d_data2[1]~11COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data2\(2),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin0 => \pwm_down|dead|d_data2[1]~11\,
	cin1 => \pwm_down|dead|d_data2[1]~11COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(2),
	cout0 => \pwm_down|dead|d_data2[2]~13\,
	cout1 => \pwm_down|dead|d_data2[2]~13COUT1_24\);

-- Location: LC_X15_Y4_N3
\pwm_down|dead|d_data2[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(3) = DFFEAS(\pwm_down|dead|d_data2\(3) $ ((((\pwm_down|dead|d_data2[2]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[3]~15\ = CARRY(((!\pwm_down|dead|d_data2[2]~13\)) # (!\pwm_down|dead|d_data2\(3)))
-- \pwm_down|dead|d_data2[3]~15COUT1_25\ = CARRY(((!\pwm_down|dead|d_data2[2]~13COUT1_24\)) # (!\pwm_down|dead|d_data2\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data2\(3),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin0 => \pwm_down|dead|d_data2[2]~13\,
	cin1 => \pwm_down|dead|d_data2[2]~13COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(3),
	cout0 => \pwm_down|dead|d_data2[3]~15\,
	cout1 => \pwm_down|dead|d_data2[3]~15COUT1_25\);

-- Location: LC_X15_Y4_N4
\pwm_down|dead|d_data2[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(4) = DFFEAS(\pwm_down|dead|d_data2\(4) $ ((((!\pwm_down|dead|d_data2[3]~15\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[4]~17\ = CARRY((\pwm_down|dead|d_data2\(4) & ((!\pwm_down|dead|d_data2[3]~15COUT1_25\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data2\(4),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin0 => \pwm_down|dead|d_data2[3]~15\,
	cin1 => \pwm_down|dead|d_data2[3]~15COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(4),
	cout => \pwm_down|dead|d_data2[4]~17\);

-- Location: LC_X15_Y4_N5
\pwm_down|dead|d_data2[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(5) = DFFEAS(\pwm_down|dead|d_data2\(5) $ ((((\pwm_down|dead|d_data2[4]~17\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\, , , 
-- \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[5]~1\ = CARRY(((!\pwm_down|dead|d_data2[4]~17\)) # (!\pwm_down|dead|d_data2\(5)))
-- \pwm_down|dead|d_data2[5]~1COUT1_26\ = CARRY(((!\pwm_down|dead|d_data2[4]~17\)) # (!\pwm_down|dead|d_data2\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data2\(5),
	datac => \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin => \pwm_down|dead|d_data2[4]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(5),
	cout0 => \pwm_down|dead|d_data2[5]~1\,
	cout1 => \pwm_down|dead|d_data2[5]~1COUT1_26\);

-- Location: LC_X15_Y4_N6
\pwm_down|dead|d_data2[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(6) = DFFEAS(\pwm_down|dead|d_data2\(6) $ ((((!(!\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[5]~1\) # (\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[5]~1COUT1_26\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[6]~3\ = CARRY((\pwm_down|dead|d_data2\(6) & ((!\pwm_down|dead|d_data2[5]~1\))))
-- \pwm_down|dead|d_data2[6]~3COUT1_27\ = CARRY((\pwm_down|dead|d_data2\(6) & ((!\pwm_down|dead|d_data2[5]~1COUT1_26\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data2\(6),
	datac => \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin => \pwm_down|dead|d_data2[4]~17\,
	cin0 => \pwm_down|dead|d_data2[5]~1\,
	cin1 => \pwm_down|dead|d_data2[5]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(6),
	cout0 => \pwm_down|dead|d_data2[6]~3\,
	cout1 => \pwm_down|dead|d_data2[6]~3COUT1_27\);

-- Location: LC_X15_Y4_N7
\pwm_down|dead|d_data2[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(7) = DFFEAS((\pwm_down|dead|d_data2\(7) $ (((!\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[6]~3\) # (\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[6]~3COUT1_27\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[7]~5\ = CARRY(((!\pwm_down|dead|d_data2[6]~3\) # (!\pwm_down|dead|d_data2\(7))))
-- \pwm_down|dead|d_data2[7]~5COUT1_28\ = CARRY(((!\pwm_down|dead|d_data2[6]~3COUT1_27\) # (!\pwm_down|dead|d_data2\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data2\(7),
	datac => \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin => \pwm_down|dead|d_data2[4]~17\,
	cin0 => \pwm_down|dead|d_data2[6]~3\,
	cin1 => \pwm_down|dead|d_data2[6]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(7),
	cout0 => \pwm_down|dead|d_data2[7]~5\,
	cout1 => \pwm_down|dead|d_data2[7]~5COUT1_28\);

-- Location: LC_X15_Y4_N8
\pwm_down|dead|d_data2[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(8) = DFFEAS(\pwm_down|dead|d_data2\(8) $ ((((!(!\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[7]~5\) # (\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[7]~5COUT1_28\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)
-- \pwm_down|dead|d_data2[8]~7\ = CARRY((\pwm_down|dead|d_data2\(8) & ((!\pwm_down|dead|d_data2[7]~5\))))
-- \pwm_down|dead|d_data2[8]~7COUT1_29\ = CARRY((\pwm_down|dead|d_data2\(8) & ((!\pwm_down|dead|d_data2[7]~5COUT1_28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data2\(8),
	datac => \pwm_down|down_deal|reg_igbt[1]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin => \pwm_down|dead|d_data2[4]~17\,
	cin0 => \pwm_down|dead|d_data2[7]~5\,
	cin1 => \pwm_down|dead|d_data2[7]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(8),
	cout0 => \pwm_down|dead|d_data2[8]~7\,
	cout1 => \pwm_down|dead|d_data2[8]~7COUT1_29\);

-- Location: LC_X16_Y4_N9
\pwm_down|dead|K_2~5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~5_combout\ = (\pwm_down|dead|d_data2\(8) & (\pwm_down|dead|d_data2\(7) & (\pwm_down|dead|d_data2\(6) & \pwm_down|dead|d_data2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data2\(8),
	datab => \pwm_down|dead|d_data2\(7),
	datac => \pwm_down|dead|d_data2\(6),
	datad => \pwm_down|dead|d_data2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~5_combout\);

-- Location: LC_X16_Y4_N8
\pwm_down|dead|d_data2[5]~20\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2[5]~20_combout\ = ((\pwm_down|down_deal|reg_igbt\(1)) # ((\pwm_down|dead|d_data2\(9)) # (\pwm_down|dead|K_2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|reg_igbt\(1),
	datac => \pwm_down|dead|d_data2\(9),
	datad => \pwm_down|dead|K_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|d_data2[5]~20_combout\);

-- Location: LC_X15_Y4_N9
\pwm_down|dead|d_data2[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data2\(9) = DFFEAS((((!\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[8]~7\) # (\pwm_down|dead|d_data2[4]~17\ & \pwm_down|dead|d_data2[8]~7COUT1_29\) $ (\pwm_down|dead|d_data2\(9)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data2[5]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \~GND~combout\,
	datad => \pwm_down|dead|d_data2\(9),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data2[5]~20_combout\,
	cin => \pwm_down|dead|d_data2[4]~17\,
	cin0 => \pwm_down|dead|d_data2[8]~7\,
	cin1 => \pwm_down|dead|d_data2[8]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data2\(9));

-- Location: LC_X16_Y4_N7
\pwm_down|dead|K_2~6\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~6_combout\ = (!\pwm_down|dead|d_data2\(0) & (!\pwm_down|dead|d_data2\(2) & (!\pwm_down|dead|d_data2\(1) & !\pwm_down|dead|d_data2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data2\(0),
	datab => \pwm_down|dead|d_data2\(2),
	datac => \pwm_down|dead|d_data2\(1),
	datad => \pwm_down|dead|d_data2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~6_combout\);

-- Location: LC_X16_Y4_N2
\pwm_down|dead|K_2~7\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~7_combout\ = (!\pwm_down|dead|d_data2\(9) & (!\pwm_down|dead|d_data2\(4) & (\pwm_down|dead|K_2~6_combout\ & \pwm_down|dead|K_2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data2\(9),
	datab => \pwm_down|dead|d_data2\(4),
	datac => \pwm_down|dead|K_2~6_combout\,
	datad => \pwm_down|dead|K_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~7_combout\);

-- Location: LC_X13_Y5_N8
\pwm_down|dead|always5~17\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~17_combout\ = (((\pwm_down|dead|chkflt_data\(11) & !\pwm_down|dead|chkflt_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|chkflt_data\(11),
	datad => \pwm_down|dead|chkflt_data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~17_combout\);

-- Location: LC_X13_Y7_N6
\pwm_down|dead|Equal6~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|Equal6~0_combout\ = (((\pwm_down|dead|chkflt_data\(8) & \pwm_down|dead|chkflt_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|chkflt_data\(8),
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|Equal6~0_combout\);

-- Location: LC_X13_Y5_N2
\pwm_down|dead|always5~18\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~18_combout\ = (\pwm_down|dead|always5~17_combout\ & (((!\pwm_down|dead|chkflt_data\(7) & \pwm_down|dead|LessThan7~1_combout\)) # (!\pwm_down|dead|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~17_combout\,
	datab => \pwm_down|dead|chkflt_data\(7),
	datac => \pwm_down|dead|LessThan7~1_combout\,
	datad => \pwm_down|dead|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~18_combout\);

-- Location: LC_X13_Y6_N2
\pwm_down|dead|K_2~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~2_combout\ = (!\pwm_down|dead|chkflt_data\(15) & (\pwm_up|sign_deal|t2|Equal0~0_combout\ & (\pwm_down|dead|chkflt_data\(14) & \pwm_down|down_deal|chkflt~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(15),
	datab => \pwm_up|sign_deal|t2|Equal0~0_combout\,
	datac => \pwm_down|dead|chkflt_data\(14),
	datad => \pwm_down|down_deal|chkflt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~2_combout\);

-- Location: LC_X14_Y7_N2
\pwm_down|dead|always5~15\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~15_combout\ = (((!\pwm_down|dead|chkflt_data\(7) & !\pwm_down|dead|chkflt_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|chkflt_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~15_combout\);

-- Location: LC_X14_Y7_N3
\pwm_down|dead|always5~16\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~16_combout\ = (\pwm_down|dead|always5~2_combout\ & (\pwm_down|dead|chkflt_data\(9) & ((\pwm_down|dead|LessThan6~0_combout\) # (!\pwm_down|dead|always5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~2_combout\,
	datab => \pwm_down|dead|LessThan6~0_combout\,
	datac => \pwm_down|dead|chkflt_data\(9),
	datad => \pwm_down|dead|always5~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~16_combout\);

-- Location: LC_X14_Y7_N4
\pwm_down|dead|K_2~4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~4_combout\ = (\pwm_down|dead|K_2~0_combout\ & (\pwm_down|dead|K_2~2_combout\ & ((\pwm_down|dead|always5~18_combout\) # (\pwm_down|dead|always5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~18_combout\,
	datab => \pwm_down|dead|K_2~0_combout\,
	datac => \pwm_down|dead|K_2~2_combout\,
	datad => \pwm_down|dead|always5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~4_combout\);

-- Location: LC_X13_Y7_N5
\pwm_down|dead|K_2~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~1_combout\ = ((!\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|chkflt_data\(12) & !\pwm_down|dead|chkflt_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|chkflt_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~1_combout\);

-- Location: LC_X14_Y6_N6
\pwm_down|dead|always5~12\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~12_combout\ = ((!\pwm_down|dead|chkflt_data\(8) & ((\pwm_down|dead|LessThan5~0_combout\) # (!\pwm_down|dead|chkflt_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(8),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~12_combout\);

-- Location: LC_X14_Y6_N1
\pwm_down|dead|always5~13\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~13_combout\ = ((\pwm_down|dead|chkflt_data\(8)) # ((\pwm_down|dead|chkflt_data\(7)) # (\pwm_down|dead|LessThan4~0_combout\))) # (!\pwm_down|dead|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan7~0_combout\,
	datab => \pwm_down|dead|chkflt_data\(8),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~13_combout\);

-- Location: LC_X14_Y6_N2
\pwm_down|dead|always5~14\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~14_combout\ = (\pwm_down|dead|chkflt_data\(9) & ((\pwm_down|dead|chkflt_data\(10) & (\pwm_down|dead|always5~12_combout\)) # (!\pwm_down|dead|chkflt_data\(10) & ((\pwm_down|dead|always5~13_combout\))))) # 
-- (!\pwm_down|dead|chkflt_data\(9) & (\pwm_down|dead|chkflt_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(9),
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \pwm_down|dead|always5~12_combout\,
	datad => \pwm_down|dead|always5~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~14_combout\);

-- Location: LC_X14_Y7_N0
\pwm_down|dead|K_2~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~3_combout\ = (\pwm_down|dead|K_2~1_combout\ & (((\pwm_down|dead|K_2~2_combout\ & \pwm_down|dead|always5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|K_2~1_combout\,
	datac => \pwm_down|dead|K_2~2_combout\,
	datad => \pwm_down|dead|always5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_2~3_combout\);

-- Location: LC_X14_Y7_N1
\pwm_down|dead|K_2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_2~regout\ = DFFEAS((\pwm_down|dead|K_2~4_combout\) # ((\pwm_down|dead|K_2~3_combout\) # ((\pwm_down|dead|out_en~combout\ & \pwm_down|dead|K_2~7_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|out_en~combout\,
	datab => \pwm_down|dead|K_2~7_combout\,
	datac => \pwm_down|dead|K_2~4_combout\,
	datad => \pwm_down|dead|K_2~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|K_2~regout\);

-- Location: LC_X13_Y6_N9
\pwm_down|dead|K_3~7\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~7_combout\ = (\pwm_up|sign_deal|t3|Equal0~0_combout\ & (\pwm_down|down_deal|chkflt~regout\ & (!\pwm_down|dead|chkflt_data\(14) & \pwm_down|dead|chkflt_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_up|sign_deal|t3|Equal0~0_combout\,
	datab => \pwm_down|down_deal|chkflt~regout\,
	datac => \pwm_down|dead|chkflt_data\(14),
	datad => \pwm_down|dead|chkflt_data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~7_combout\);

-- Location: LC_X12_Y7_N5
\pwm_down|down_deal|reg_igbt[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|reg_igbt\(0) = DFFEAS(((!\pwm_down|down_deal|rst~regout\ & ((\pwm_down|des|recv_data\(0))))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , \pwm_down|down_deal|reg_igbt[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|down_deal|rst~regout\,
	datad => \pwm_down|des|recv_data\(0),
	aclr => \init|LessThan2~3_combout\,
	ena => \pwm_down|down_deal|reg_igbt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|down_deal|reg_igbt\(0));

-- Location: LC_X15_Y7_N0
\pwm_down|dead|d_data3[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(0) = DFFEAS(((!\pwm_down|dead|d_data3\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[0]~9\ = CARRY(((\pwm_down|dead|d_data3\(0))))
-- \pwm_down|dead|d_data3[0]~9COUT1_22\ = CARRY(((\pwm_down|dead|d_data3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data3\(0),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(0),
	cout0 => \pwm_down|dead|d_data3[0]~9\,
	cout1 => \pwm_down|dead|d_data3[0]~9COUT1_22\);

-- Location: LC_X15_Y7_N1
\pwm_down|dead|d_data3[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(1) = DFFEAS((\pwm_down|dead|d_data3\(1) $ ((\pwm_down|dead|d_data3[0]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[1]~11\ = CARRY(((!\pwm_down|dead|d_data3[0]~9\) # (!\pwm_down|dead|d_data3\(1))))
-- \pwm_down|dead|d_data3[1]~11COUT1_23\ = CARRY(((!\pwm_down|dead|d_data3[0]~9COUT1_22\) # (!\pwm_down|dead|d_data3\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data3\(1),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin0 => \pwm_down|dead|d_data3[0]~9\,
	cin1 => \pwm_down|dead|d_data3[0]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(1),
	cout0 => \pwm_down|dead|d_data3[1]~11\,
	cout1 => \pwm_down|dead|d_data3[1]~11COUT1_23\);

-- Location: LC_X15_Y7_N2
\pwm_down|dead|d_data3[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(2) = DFFEAS((\pwm_down|dead|d_data3\(2) $ ((!\pwm_down|dead|d_data3[1]~11\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[2]~13\ = CARRY(((\pwm_down|dead|d_data3\(2) & !\pwm_down|dead|d_data3[1]~11\)))
-- \pwm_down|dead|d_data3[2]~13COUT1_24\ = CARRY(((\pwm_down|dead|d_data3\(2) & !\pwm_down|dead|d_data3[1]~11COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data3\(2),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin0 => \pwm_down|dead|d_data3[1]~11\,
	cin1 => \pwm_down|dead|d_data3[1]~11COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(2),
	cout0 => \pwm_down|dead|d_data3[2]~13\,
	cout1 => \pwm_down|dead|d_data3[2]~13COUT1_24\);

-- Location: LC_X15_Y7_N3
\pwm_down|dead|d_data3[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(3) = DFFEAS(\pwm_down|dead|d_data3\(3) $ ((((\pwm_down|dead|d_data3[2]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[3]~15\ = CARRY(((!\pwm_down|dead|d_data3[2]~13\)) # (!\pwm_down|dead|d_data3\(3)))
-- \pwm_down|dead|d_data3[3]~15COUT1_25\ = CARRY(((!\pwm_down|dead|d_data3[2]~13COUT1_24\)) # (!\pwm_down|dead|d_data3\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data3\(3),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin0 => \pwm_down|dead|d_data3[2]~13\,
	cin1 => \pwm_down|dead|d_data3[2]~13COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(3),
	cout0 => \pwm_down|dead|d_data3[3]~15\,
	cout1 => \pwm_down|dead|d_data3[3]~15COUT1_25\);

-- Location: LC_X15_Y7_N4
\pwm_down|dead|d_data3[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(4) = DFFEAS(\pwm_down|dead|d_data3\(4) $ ((((!\pwm_down|dead|d_data3[3]~15\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[4]~17\ = CARRY((\pwm_down|dead|d_data3\(4) & ((!\pwm_down|dead|d_data3[3]~15COUT1_25\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data3\(4),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin0 => \pwm_down|dead|d_data3[3]~15\,
	cin1 => \pwm_down|dead|d_data3[3]~15COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(4),
	cout => \pwm_down|dead|d_data3[4]~17\);

-- Location: LC_X15_Y7_N5
\pwm_down|dead|d_data3[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(5) = DFFEAS(\pwm_down|dead|d_data3\(5) $ ((((\pwm_down|dead|d_data3[4]~17\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(0), , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[5]~1\ = CARRY(((!\pwm_down|dead|d_data3[4]~17\)) # (!\pwm_down|dead|d_data3\(5)))
-- \pwm_down|dead|d_data3[5]~1COUT1_26\ = CARRY(((!\pwm_down|dead|d_data3[4]~17\)) # (!\pwm_down|dead|d_data3\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data3\(5),
	datac => \pwm_down|down_deal|reg_igbt\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin => \pwm_down|dead|d_data3[4]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(5),
	cout0 => \pwm_down|dead|d_data3[5]~1\,
	cout1 => \pwm_down|dead|d_data3[5]~1COUT1_26\);

-- Location: LC_X15_Y7_N6
\pwm_down|dead|d_data3[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(6) = DFFEAS(\pwm_down|dead|d_data3\(6) $ ((((!(!\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[5]~1\) # (\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[5]~1COUT1_26\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(0), , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[6]~3\ = CARRY((\pwm_down|dead|d_data3\(6) & ((!\pwm_down|dead|d_data3[5]~1\))))
-- \pwm_down|dead|d_data3[6]~3COUT1_27\ = CARRY((\pwm_down|dead|d_data3\(6) & ((!\pwm_down|dead|d_data3[5]~1COUT1_26\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data3\(6),
	datac => \pwm_down|down_deal|reg_igbt\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin => \pwm_down|dead|d_data3[4]~17\,
	cin0 => \pwm_down|dead|d_data3[5]~1\,
	cin1 => \pwm_down|dead|d_data3[5]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(6),
	cout0 => \pwm_down|dead|d_data3[6]~3\,
	cout1 => \pwm_down|dead|d_data3[6]~3COUT1_27\);

-- Location: LC_X15_Y7_N7
\pwm_down|dead|d_data3[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(7) = DFFEAS((\pwm_down|dead|d_data3\(7) $ (((!\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[6]~3\) # (\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[6]~3COUT1_27\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(0), , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[7]~5\ = CARRY(((!\pwm_down|dead|d_data3[6]~3\) # (!\pwm_down|dead|d_data3\(7))))
-- \pwm_down|dead|d_data3[7]~5COUT1_28\ = CARRY(((!\pwm_down|dead|d_data3[6]~3COUT1_27\) # (!\pwm_down|dead|d_data3\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data3\(7),
	datac => \pwm_down|down_deal|reg_igbt\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin => \pwm_down|dead|d_data3[4]~17\,
	cin0 => \pwm_down|dead|d_data3[6]~3\,
	cin1 => \pwm_down|dead|d_data3[6]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(7),
	cout0 => \pwm_down|dead|d_data3[7]~5\,
	cout1 => \pwm_down|dead|d_data3[7]~5COUT1_28\);

-- Location: LC_X15_Y7_N8
\pwm_down|dead|d_data3[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(8) = DFFEAS(\pwm_down|dead|d_data3\(8) $ ((((!(!\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[7]~5\) # (\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[7]~5COUT1_28\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt\(0), , , \pwm_down|dead|d_data3[9]~20_combout\)
-- \pwm_down|dead|d_data3[8]~7\ = CARRY((\pwm_down|dead|d_data3\(8) & ((!\pwm_down|dead|d_data3[7]~5\))))
-- \pwm_down|dead|d_data3[8]~7COUT1_29\ = CARRY((\pwm_down|dead|d_data3\(8) & ((!\pwm_down|dead|d_data3[7]~5COUT1_28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data3\(8),
	datac => \pwm_down|down_deal|reg_igbt\(0),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin => \pwm_down|dead|d_data3[4]~17\,
	cin0 => \pwm_down|dead|d_data3[7]~5\,
	cin1 => \pwm_down|dead|d_data3[7]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(8),
	cout0 => \pwm_down|dead|d_data3[8]~7\,
	cout1 => \pwm_down|dead|d_data3[8]~7COUT1_29\);

-- Location: LC_X15_Y7_N9
\pwm_down|dead|d_data3[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3\(9) = DFFEAS((((!\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[8]~7\) # (\pwm_down|dead|d_data3[4]~17\ & \pwm_down|dead|d_data3[8]~7COUT1_29\) $ (\pwm_down|dead|d_data3\(9)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data3[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \~GND~combout\,
	datad => \pwm_down|dead|d_data3\(9),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data3[9]~20_combout\,
	cin => \pwm_down|dead|d_data3[4]~17\,
	cin0 => \pwm_down|dead|d_data3[8]~7\,
	cin1 => \pwm_down|dead|d_data3[8]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data3\(9));

-- Location: LC_X15_Y6_N6
\pwm_down|dead|d_data3[9]~20\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data3[9]~20_combout\ = (((\pwm_down|dead|d_data3\(9)) # (\pwm_down|dead|K_3~8_combout\)) # (!\pwm_down|down_deal|reg_igbt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|reg_igbt\(0),
	datac => \pwm_down|dead|d_data3\(9),
	datad => \pwm_down|dead|K_3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|d_data3[9]~20_combout\);

-- Location: LC_X15_Y6_N5
\pwm_down|dead|K_3~8\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~8_combout\ = (\pwm_down|dead|d_data3\(5) & (\pwm_down|dead|d_data3\(6) & (\pwm_down|dead|d_data3\(7) & \pwm_down|dead|d_data3\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data3\(5),
	datab => \pwm_down|dead|d_data3\(6),
	datac => \pwm_down|dead|d_data3\(7),
	datad => \pwm_down|dead|d_data3\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~8_combout\);

-- Location: LC_X15_Y6_N3
\pwm_down|dead|K_3~9\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~9_combout\ = (!\pwm_down|dead|d_data3\(0) & (!\pwm_down|dead|d_data3\(3) & (!\pwm_down|dead|d_data3\(2) & !\pwm_down|dead|d_data3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data3\(0),
	datab => \pwm_down|dead|d_data3\(3),
	datac => \pwm_down|dead|d_data3\(2),
	datad => \pwm_down|dead|d_data3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~9_combout\);

-- Location: LC_X15_Y6_N4
\pwm_down|dead|K_3~10\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~10_combout\ = (\pwm_down|dead|K_3~8_combout\ & (!\pwm_down|dead|d_data3\(4) & (!\pwm_down|dead|d_data3\(9) & \pwm_down|dead|K_3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|K_3~8_combout\,
	datab => \pwm_down|dead|d_data3\(4),
	datac => \pwm_down|dead|d_data3\(9),
	datad => \pwm_down|dead|K_3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~10_combout\);

-- Location: LC_X13_Y5_N1
\pwm_down|dead|always5~19\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~19_combout\ = (!\pwm_down|dead|chkflt_data\(8) & (((!\pwm_down|dead|chkflt_data\(11) & !\pwm_down|dead|chkflt_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(8),
	datac => \pwm_down|dead|chkflt_data\(11),
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~19_combout\);

-- Location: LC_X13_Y5_N7
\pwm_down|dead|K_3~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~3_combout\ = ((\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|chkflt_data\(8) & \pwm_down|dead|chkflt_data\(7))) # (!\pwm_down|dead|chkflt_data\(11) & ((\pwm_down|dead|chkflt_data\(8)) # (\pwm_down|dead|chkflt_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|chkflt_data\(8),
	datad => \pwm_down|dead|chkflt_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~3_combout\);

-- Location: LC_X13_Y5_N9
\pwm_down|dead|K_3~4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~4_combout\ = (\pwm_down|dead|chkflt_data\(9)) # ((\pwm_down|dead|K_3~3_combout\ & ((!\pwm_down|dead|chkflt_data\(11)) # (!\pwm_down|dead|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan7~1_combout\,
	datab => \pwm_down|dead|chkflt_data\(11),
	datac => \pwm_down|dead|K_3~3_combout\,
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~4_combout\);

-- Location: LC_X13_Y5_N0
\pwm_down|dead|K_3~5\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~5_combout\ = (\pwm_down|dead|K_2~0_combout\ & ((\pwm_down|dead|chkflt_data\(10) & (!\pwm_down|dead|chkflt_data\(11) & \pwm_down|dead|K_3~4_combout\)) # (!\pwm_down|dead|chkflt_data\(10) & (\pwm_down|dead|chkflt_data\(11) & 
-- !\pwm_down|dead|K_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|K_2~0_combout\,
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \pwm_down|dead|chkflt_data\(11),
	datad => \pwm_down|dead|K_3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~5_combout\);

-- Location: LC_X14_Y6_N9
\pwm_down|dead|K_3~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~0_combout\ = ((\pwm_down|dead|chkflt_data\(8) & ((\pwm_down|dead|chkflt_data\(7)) # (!\pwm_down|dead|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(8),
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~0_combout\);

-- Location: LC_X14_Y6_N5
\pwm_down|dead|K_3~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~1_combout\ = (\pwm_down|dead|K_2~1_combout\ & (((!\pwm_down|dead|chkflt_data\(9) & !\pwm_down|dead|K_3~0_combout\)) # (!\pwm_down|dead|chkflt_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(9),
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \pwm_down|dead|K_2~1_combout\,
	datad => \pwm_down|dead|K_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~1_combout\);

-- Location: LC_X14_Y6_N8
\pwm_down|dead|K_3~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~2_combout\ = (\pwm_down|dead|K_3~1_combout\ & (((\pwm_down|dead|chkflt_data\(10)) # (\pwm_down|dead|LessThan4~1_combout\)) # (!\pwm_down|dead|always5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~8_combout\,
	datab => \pwm_down|dead|chkflt_data\(10),
	datac => \pwm_down|dead|K_3~1_combout\,
	datad => \pwm_down|dead|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~2_combout\);

-- Location: LC_X13_Y6_N3
\pwm_down|dead|K_3~6\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~6_combout\ = (\pwm_down|dead|K_3~2_combout\) # ((\pwm_down|dead|K_3~5_combout\ & ((\pwm_down|dead|LessThan6~0_combout\) # (!\pwm_down|dead|always5~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~19_combout\,
	datab => \pwm_down|dead|K_3~5_combout\,
	datac => \pwm_down|dead|LessThan6~0_combout\,
	datad => \pwm_down|dead|K_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_3~6_combout\);

-- Location: LC_X13_Y6_N4
\pwm_down|dead|K_3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_3~regout\ = DFFEAS((\pwm_down|dead|out_en~combout\ & ((\pwm_down|dead|K_3~10_combout\) # ((\pwm_down|dead|K_3~7_combout\ & \pwm_down|dead|K_3~6_combout\)))) # (!\pwm_down|dead|out_en~combout\ & (\pwm_down|dead|K_3~7_combout\ & 
-- ((\pwm_down|dead|K_3~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|out_en~combout\,
	datab => \pwm_down|dead|K_3~7_combout\,
	datac => \pwm_down|dead|K_3~10_combout\,
	datad => \pwm_down|dead|K_3~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|K_3~regout\);

-- Location: LC_X13_Y6_N1
\pwm_down|dead|K_4~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_4~0_combout\ = (\pwm_down|dead|chkflt_data\(15) & (\pwm_down|down_deal|chkflt~regout\ & (\pwm_down|dead|chkflt_data\(14) & \pwm_up|sign_deal|t4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(15),
	datab => \pwm_down|down_deal|chkflt~regout\,
	datac => \pwm_down|dead|chkflt_data\(14),
	datad => \pwm_up|sign_deal|t4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_4~0_combout\);

-- Location: LC_X15_Y6_N9
\pwm_down|down_deal|reg_igbt[0]~_wirecell\ : maxii_lcell
-- Equation(s):
-- \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\ = (((!\pwm_down|down_deal|reg_igbt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_down|down_deal|reg_igbt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\);

-- Location: LC_X16_Y6_N0
\pwm_down|dead|d_data4[0]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(0) = DFFEAS(((!\pwm_down|dead|d_data4\(0))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[0]~9\ = CARRY(((\pwm_down|dead|d_data4\(0))))
-- \pwm_down|dead|d_data4[0]~9COUT1_22\ = CARRY(((\pwm_down|dead|d_data4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data4\(0),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(0),
	cout0 => \pwm_down|dead|d_data4[0]~9\,
	cout1 => \pwm_down|dead|d_data4[0]~9COUT1_22\);

-- Location: LC_X16_Y6_N1
\pwm_down|dead|d_data4[1]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(1) = DFFEAS((\pwm_down|dead|d_data4\(1) $ ((\pwm_down|dead|d_data4[0]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[1]~11\ = CARRY(((!\pwm_down|dead|d_data4[0]~9\) # (!\pwm_down|dead|d_data4\(1))))
-- \pwm_down|dead|d_data4[1]~11COUT1_23\ = CARRY(((!\pwm_down|dead|d_data4[0]~9COUT1_22\) # (!\pwm_down|dead|d_data4\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data4\(1),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin0 => \pwm_down|dead|d_data4[0]~9\,
	cin1 => \pwm_down|dead|d_data4[0]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(1),
	cout0 => \pwm_down|dead|d_data4[1]~11\,
	cout1 => \pwm_down|dead|d_data4[1]~11COUT1_23\);

-- Location: LC_X16_Y6_N2
\pwm_down|dead|d_data4[2]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(2) = DFFEAS((\pwm_down|dead|d_data4\(2) $ ((!\pwm_down|dead|d_data4[1]~11\))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[2]~13\ = CARRY(((\pwm_down|dead|d_data4\(2) & !\pwm_down|dead|d_data4[1]~11\)))
-- \pwm_down|dead|d_data4[2]~13COUT1_24\ = CARRY(((\pwm_down|dead|d_data4\(2) & !\pwm_down|dead|d_data4[1]~11COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data4\(2),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin0 => \pwm_down|dead|d_data4[1]~11\,
	cin1 => \pwm_down|dead|d_data4[1]~11COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(2),
	cout0 => \pwm_down|dead|d_data4[2]~13\,
	cout1 => \pwm_down|dead|d_data4[2]~13COUT1_24\);

-- Location: LC_X16_Y6_N3
\pwm_down|dead|d_data4[3]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(3) = DFFEAS(\pwm_down|dead|d_data4\(3) $ ((((\pwm_down|dead|d_data4[2]~13\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[3]~15\ = CARRY(((!\pwm_down|dead|d_data4[2]~13\)) # (!\pwm_down|dead|d_data4\(3)))
-- \pwm_down|dead|d_data4[3]~15COUT1_25\ = CARRY(((!\pwm_down|dead|d_data4[2]~13COUT1_24\)) # (!\pwm_down|dead|d_data4\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data4\(3),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin0 => \pwm_down|dead|d_data4[2]~13\,
	cin1 => \pwm_down|dead|d_data4[2]~13COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(3),
	cout0 => \pwm_down|dead|d_data4[3]~15\,
	cout1 => \pwm_down|dead|d_data4[3]~15COUT1_25\);

-- Location: LC_X16_Y6_N4
\pwm_down|dead|d_data4[4]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(4) = DFFEAS(\pwm_down|dead|d_data4\(4) $ ((((!\pwm_down|dead|d_data4[3]~15\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[4]~17\ = CARRY((\pwm_down|dead|d_data4\(4) & ((!\pwm_down|dead|d_data4[3]~15COUT1_25\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data4\(4),
	datac => \~GND~combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin0 => \pwm_down|dead|d_data4[3]~15\,
	cin1 => \pwm_down|dead|d_data4[3]~15COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(4),
	cout => \pwm_down|dead|d_data4[4]~17\);

-- Location: LC_X16_Y6_N5
\pwm_down|dead|d_data4[5]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(5) = DFFEAS(\pwm_down|dead|d_data4\(5) $ ((((\pwm_down|dead|d_data4[4]~17\)))), GLOBAL(\clk~combout\), !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\, , , 
-- \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[5]~1\ = CARRY(((!\pwm_down|dead|d_data4[4]~17\)) # (!\pwm_down|dead|d_data4\(5)))
-- \pwm_down|dead|d_data4[5]~1COUT1_26\ = CARRY(((!\pwm_down|dead|d_data4[4]~17\)) # (!\pwm_down|dead|d_data4\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data4\(5),
	datac => \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin => \pwm_down|dead|d_data4[4]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(5),
	cout0 => \pwm_down|dead|d_data4[5]~1\,
	cout1 => \pwm_down|dead|d_data4[5]~1COUT1_26\);

-- Location: LC_X16_Y6_N6
\pwm_down|dead|d_data4[6]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(6) = DFFEAS(\pwm_down|dead|d_data4\(6) $ ((((!(!\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[5]~1\) # (\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[5]~1COUT1_26\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[6]~3\ = CARRY((\pwm_down|dead|d_data4\(6) & ((!\pwm_down|dead|d_data4[5]~1\))))
-- \pwm_down|dead|d_data4[6]~3COUT1_27\ = CARRY((\pwm_down|dead|d_data4\(6) & ((!\pwm_down|dead|d_data4[5]~1COUT1_26\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data4\(6),
	datac => \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin => \pwm_down|dead|d_data4[4]~17\,
	cin0 => \pwm_down|dead|d_data4[5]~1\,
	cin1 => \pwm_down|dead|d_data4[5]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(6),
	cout0 => \pwm_down|dead|d_data4[6]~3\,
	cout1 => \pwm_down|dead|d_data4[6]~3COUT1_27\);

-- Location: LC_X16_Y6_N7
\pwm_down|dead|d_data4[7]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(7) = DFFEAS((\pwm_down|dead|d_data4\(7) $ (((!\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[6]~3\) # (\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[6]~3COUT1_27\)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[7]~5\ = CARRY(((!\pwm_down|dead|d_data4[6]~3\) # (!\pwm_down|dead|d_data4\(7))))
-- \pwm_down|dead|d_data4[7]~5COUT1_28\ = CARRY(((!\pwm_down|dead|d_data4[6]~3COUT1_27\) # (!\pwm_down|dead|d_data4\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \pwm_down|dead|d_data4\(7),
	datac => \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin => \pwm_down|dead|d_data4[4]~17\,
	cin0 => \pwm_down|dead|d_data4[6]~3\,
	cin1 => \pwm_down|dead|d_data4[6]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(7),
	cout0 => \pwm_down|dead|d_data4[7]~5\,
	cout1 => \pwm_down|dead|d_data4[7]~5COUT1_28\);

-- Location: LC_X16_Y6_N8
\pwm_down|dead|d_data4[8]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(8) = DFFEAS(\pwm_down|dead|d_data4\(8) $ ((((!(!\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[7]~5\) # (\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[7]~5COUT1_28\))))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)
-- \pwm_down|dead|d_data4[8]~7\ = CARRY((\pwm_down|dead|d_data4\(8) & ((!\pwm_down|dead|d_data4[7]~5\))))
-- \pwm_down|dead|d_data4[8]~7COUT1_29\ = CARRY((\pwm_down|dead|d_data4\(8) & ((!\pwm_down|dead|d_data4[7]~5COUT1_28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|d_data4\(8),
	datac => \pwm_down|down_deal|reg_igbt[0]~_wirecell_combout\,
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin => \pwm_down|dead|d_data4[4]~17\,
	cin0 => \pwm_down|dead|d_data4[7]~5\,
	cin1 => \pwm_down|dead|d_data4[7]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(8),
	cout0 => \pwm_down|dead|d_data4[8]~7\,
	cout1 => \pwm_down|dead|d_data4[8]~7COUT1_29\);

-- Location: LC_X16_Y6_N9
\pwm_down|dead|d_data4[9]\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4\(9) = DFFEAS((((!\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[8]~7\) # (\pwm_down|dead|d_data4[4]~17\ & \pwm_down|dead|d_data4[8]~7COUT1_29\) $ (\pwm_down|dead|d_data4\(9)))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\init|LessThan2~3_combout\), , , \~GND~combout\, , , \pwm_down|dead|d_data4[0]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \~GND~combout\,
	datad => \pwm_down|dead|d_data4\(9),
	aclr => \init|LessThan2~3_combout\,
	sload => \pwm_down|dead|d_data4[0]~20_combout\,
	cin => \pwm_down|dead|d_data4[4]~17\,
	cin0 => \pwm_down|dead|d_data4[8]~7\,
	cin1 => \pwm_down|dead|d_data4[8]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|d_data4\(9));

-- Location: LC_X15_Y6_N7
\pwm_down|dead|d_data4[0]~20\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|d_data4[0]~20_combout\ = ((\pwm_down|down_deal|reg_igbt\(0)) # ((\pwm_down|dead|d_data4\(9)) # (\pwm_down|dead|K_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|down_deal|reg_igbt\(0),
	datac => \pwm_down|dead|d_data4\(9),
	datad => \pwm_down|dead|K_4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|d_data4[0]~20_combout\);

-- Location: LC_X15_Y6_N8
\pwm_down|dead|K_4~1\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_4~1_combout\ = (\pwm_down|dead|d_data4\(7) & (\pwm_down|dead|d_data4\(8) & (\pwm_down|dead|d_data4\(6) & \pwm_down|dead|d_data4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data4\(7),
	datab => \pwm_down|dead|d_data4\(8),
	datac => \pwm_down|dead|d_data4\(6),
	datad => \pwm_down|dead|d_data4\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_4~1_combout\);

-- Location: LC_X15_Y6_N1
\pwm_down|dead|K_4~2\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_4~2_combout\ = (!\pwm_down|dead|d_data4\(3) & (!\pwm_down|dead|d_data4\(2) & (!\pwm_down|dead|d_data4\(0) & !\pwm_down|dead|d_data4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|d_data4\(3),
	datab => \pwm_down|dead|d_data4\(2),
	datac => \pwm_down|dead|d_data4\(0),
	datad => \pwm_down|dead|d_data4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_4~2_combout\);

-- Location: LC_X15_Y6_N2
\pwm_down|dead|K_4~3\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_4~3_combout\ = (\pwm_down|dead|K_4~1_combout\ & (!\pwm_down|dead|d_data4\(9) & (!\pwm_down|dead|d_data4\(4) & \pwm_down|dead|K_4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|K_4~1_combout\,
	datab => \pwm_down|dead|d_data4\(9),
	datac => \pwm_down|dead|d_data4\(4),
	datad => \pwm_down|dead|K_4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|K_4~3_combout\);

-- Location: LC_X13_Y7_N4
\pwm_down|dead|always5~25\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~25_combout\ = (!\pwm_down|dead|chkflt_data\(12) & (((\pwm_down|dead|chkflt_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(12),
	datac => \pwm_down|dead|chkflt_data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~25_combout\);

-- Location: LC_X13_Y7_N7
\pwm_down|dead|always5~21\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~21_combout\ = ((\pwm_down|dead|chkflt_data\(13) & (!\pwm_down|dead|chkflt_data\(12) & !\pwm_down|dead|chkflt_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|chkflt_data\(13),
	datac => \pwm_down|dead|chkflt_data\(12),
	datad => \pwm_down|dead|chkflt_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~21_combout\);

-- Location: LC_X13_Y7_N8
\pwm_down|dead|always5~20\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~20_combout\ = (\pwm_down|dead|K_2~1_combout\ & ((\pwm_down|dead|LessThan5~0_combout\) # ((!\pwm_down|dead|Equal6~0_combout\) # (!\pwm_down|dead|chkflt_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan5~0_combout\,
	datab => \pwm_down|dead|chkflt_data\(7),
	datac => \pwm_down|dead|K_2~1_combout\,
	datad => \pwm_down|dead|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~20_combout\);

-- Location: LC_X13_Y7_N9
\pwm_down|dead|always5~22\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~22_combout\ = (!\pwm_down|dead|chkflt_data\(10) & ((\pwm_down|dead|always5~20_combout\) # ((\pwm_down|dead|always5~29_combout\ & \pwm_down|dead|always5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(10),
	datab => \pwm_down|dead|always5~29_combout\,
	datac => \pwm_down|dead|always5~21_combout\,
	datad => \pwm_down|dead|always5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~22_combout\);

-- Location: LC_X14_Y7_N6
\pwm_down|dead|always5~23\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~23_combout\ = (\pwm_down|dead|always5~6_combout\ & (\pwm_down|dead|K_2~0_combout\ & ((\pwm_down|dead|LessThan6~0_combout\) # (\pwm_down|dead|chkflt_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|LessThan6~0_combout\,
	datab => \pwm_down|dead|always5~6_combout\,
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|K_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~23_combout\);

-- Location: LC_X14_Y6_N4
\pwm_down|dead|LessThan8~0\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|LessThan8~0_combout\ = ((\pwm_down|dead|LessThan4~0_combout\) # ((\pwm_down|dead|chkflt_data\(7)) # (!\pwm_down|dead|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_down|dead|LessThan4~0_combout\,
	datac => \pwm_down|dead|chkflt_data\(7),
	datad => \pwm_down|dead|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|LessThan8~0_combout\);

-- Location: LC_X13_Y7_N3
\pwm_down|dead|always5~24\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~24_combout\ = (\pwm_down|dead|chkflt_data\(11) & (!\pwm_down|dead|chkflt_data\(13) & (\pwm_down|dead|Equal6~0_combout\ & \pwm_down|dead|LessThan8~0_combout\))) # (!\pwm_down|dead|chkflt_data\(11) & (\pwm_down|dead|chkflt_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|chkflt_data\(11),
	datab => \pwm_down|dead|chkflt_data\(13),
	datac => \pwm_down|dead|Equal6~0_combout\,
	datad => \pwm_down|dead|LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~24_combout\);

-- Location: LC_X13_Y7_N1
\pwm_down|dead|always5~26\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|always5~26_combout\ = (\pwm_down|dead|always5~22_combout\) # ((\pwm_down|dead|always5~23_combout\) # ((\pwm_down|dead|always5~25_combout\ & \pwm_down|dead|always5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_down|dead|always5~25_combout\,
	datab => \pwm_down|dead|always5~22_combout\,
	datac => \pwm_down|dead|always5~23_combout\,
	datad => \pwm_down|dead|always5~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pwm_down|dead|always5~26_combout\);

-- Location: LC_X13_Y7_N2
\pwm_down|dead|K_4\ : maxii_lcell
-- Equation(s):
-- \pwm_down|dead|K_4~regout\ = DFFEAS((\pwm_down|dead|K_4~0_combout\ & ((\pwm_down|dead|always5~26_combout\) # ((\pwm_down|dead|K_4~3_combout\ & \pwm_down|dead|out_en~combout\)))) # (!\pwm_down|dead|K_4~0_combout\ & (\pwm_down|dead|K_4~3_combout\ & 
-- (\pwm_down|dead|out_en~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|dead|K_4~0_combout\,
	datab => \pwm_down|dead|K_4~3_combout\,
	datac => \pwm_down|dead|out_en~combout\,
	datad => \pwm_down|dead|always5~26_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_down|dead|K_4~regout\);

-- Location: LC_X11_Y8_N5
\dly_cnt[5]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(5) = DFFEAS(dly_cnt(5) $ ((((!\dly_cnt[4]~3\)))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[5]~5\ = CARRY((dly_cnt(5) & ((!\dly_cnt[4]~3\))))
-- \dly_cnt[5]~5COUT1_19\ = CARRY((dly_cnt(5) & ((!\dly_cnt[4]~3\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(5),
	aclr => GND,
	ena => \always0~0_combout\,
	cin => \dly_cnt[4]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(5),
	cout0 => \dly_cnt[5]~5\,
	cout1 => \dly_cnt[5]~5COUT1_19\);

-- Location: LC_X11_Y9_N6
\bypass_o~0\ : maxii_lcell
-- Equation(s):
-- \bypass_o~0_combout\ = (((!dly_cnt(4) & !dly_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => dly_cnt(4),
	datad => dly_cnt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bypass_o~0_combout\);

-- Location: LC_X11_Y8_N0
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((!dly_cnt(2) & \bypass_o~0_combout\)) # (!dly_cnt(5))) # (!dly_cnt(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dly_cnt(6),
	datab => dly_cnt(2),
	datac => dly_cnt(5),
	datad => \bypass_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X12_Y8_N4
\dly_cnt[0]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(0) = DFFEAS(dly_cnt(0) $ (((\bypass_o~1_combout\ & (\pwm_up|up_sign|Equal0~3_combout\ & \LessThan0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(0),
	datab => \bypass_o~1_combout\,
	datac => \pwm_up|up_sign|Equal0~3_combout\,
	datad => \LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(0));

-- Location: LC_X11_Y8_N1
\dly_cnt[1]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(1) = DFFEAS(dly_cnt(0) $ ((dly_cnt(1))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[1]~13\ = CARRY((dly_cnt(0) & (dly_cnt(1))))
-- \dly_cnt[1]~13COUT1_16\ = CARRY((dly_cnt(0) & (dly_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(0),
	datab => dly_cnt(1),
	aclr => GND,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(1),
	cout0 => \dly_cnt[1]~13\,
	cout1 => \dly_cnt[1]~13COUT1_16\);

-- Location: LC_X11_Y8_N2
\dly_cnt[2]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(2) = DFFEAS((dly_cnt(2) $ ((\dly_cnt[1]~13\))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[2]~11\ = CARRY(((!\dly_cnt[1]~13\) # (!dly_cnt(2))))
-- \dly_cnt[2]~11COUT1_17\ = CARRY(((!\dly_cnt[1]~13COUT1_16\) # (!dly_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => dly_cnt(2),
	aclr => GND,
	ena => \always0~0_combout\,
	cin0 => \dly_cnt[1]~13\,
	cin1 => \dly_cnt[1]~13COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(2),
	cout0 => \dly_cnt[2]~11\,
	cout1 => \dly_cnt[2]~11COUT1_17\);

-- Location: LC_X11_Y8_N3
\dly_cnt[3]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(3) = DFFEAS(dly_cnt(3) $ ((((!\dly_cnt[2]~11\)))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[3]~1\ = CARRY((dly_cnt(3) & ((!\dly_cnt[2]~11\))))
-- \dly_cnt[3]~1COUT1_18\ = CARRY((dly_cnt(3) & ((!\dly_cnt[2]~11COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(3),
	aclr => GND,
	ena => \always0~0_combout\,
	cin0 => \dly_cnt[2]~11\,
	cin1 => \dly_cnt[2]~11COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(3),
	cout0 => \dly_cnt[3]~1\,
	cout1 => \dly_cnt[3]~1COUT1_18\);

-- Location: LC_X11_Y8_N4
\dly_cnt[4]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(4) = DFFEAS(dly_cnt(4) $ ((((\dly_cnt[3]~1\)))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[4]~3\ = CARRY(((!\dly_cnt[3]~1COUT1_18\)) # (!dly_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(4),
	aclr => GND,
	ena => \always0~0_combout\,
	cin0 => \dly_cnt[3]~1\,
	cin1 => \dly_cnt[3]~1COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(4),
	cout => \dly_cnt[4]~3\);

-- Location: LC_X11_Y8_N6
\dly_cnt[6]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(6) = DFFEAS(dly_cnt(6) $ (((((!\dly_cnt[4]~3\ & \dly_cnt[5]~5\) # (\dly_cnt[4]~3\ & \dly_cnt[5]~5COUT1_19\))))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )
-- \dly_cnt[6]~7\ = CARRY(((!\dly_cnt[5]~5\)) # (!dly_cnt(6)))
-- \dly_cnt[6]~7COUT1_20\ = CARRY(((!\dly_cnt[5]~5COUT1_19\)) # (!dly_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dly_cnt(6),
	aclr => GND,
	ena => \always0~0_combout\,
	cin => \dly_cnt[4]~3\,
	cin0 => \dly_cnt[5]~5\,
	cin1 => \dly_cnt[5]~5COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(6),
	cout0 => \dly_cnt[6]~7\,
	cout1 => \dly_cnt[6]~7COUT1_20\);

-- Location: LC_X11_Y8_N7
\dly_cnt[7]\ : maxii_lcell
-- Equation(s):
-- dly_cnt(7) = DFFEAS((dly_cnt(7) $ ((!(!\dly_cnt[4]~3\ & \dly_cnt[6]~7\) # (\dly_cnt[4]~3\ & \dly_cnt[6]~7COUT1_20\)))), GLOBAL(\clk~combout\), VCC, , \always0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => dly_cnt(7),
	aclr => GND,
	ena => \always0~0_combout\,
	cin => \dly_cnt[4]~3\,
	cin0 => \dly_cnt[6]~7\,
	cin1 => \dly_cnt[6]~7COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dly_cnt(7));

-- Location: LC_X9_Y8_N4
\bypass_o~1\ : maxii_lcell
-- Equation(s):
-- \bypass_o~1_combout\ = ((!dly_cnt(7) & ((\pwm_up|sign_deal|duan2~regout\) # (\pwm_up|sign_deal|duan1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_up|sign_deal|duan2~regout\,
	datac => \pwm_up|sign_deal|duan1~regout\,
	datad => dly_cnt(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bypass_o~1_combout\);

-- Location: LC_X12_Y8_N8
\always0~0\ : maxii_lcell
-- Equation(s):
-- \always0~0_combout\ = ((\bypass_o~1_combout\ & (\pwm_up|up_sign|Equal0~3_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bypass_o~1_combout\,
	datac => \pwm_up|up_sign|Equal0~3_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0_combout\);

-- Location: LC_X11_Y8_N9
\bypass_o~2\ : maxii_lcell
-- Equation(s):
-- \bypass_o~2_combout\ = (!dly_cnt(0) & (!dly_cnt(1) & (dly_cnt(2) & \bypass_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dly_cnt(0),
	datab => dly_cnt(1),
	datac => dly_cnt(2),
	datad => \bypass_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bypass_o~2_combout\);

-- Location: LC_X11_Y8_N8
\bypass_o~3\ : maxii_lcell
-- Equation(s):
-- \bypass_o~3_combout\ = (dly_cnt(6) & (\bypass_o~2_combout\ & (dly_cnt(5) & \bypass_o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dly_cnt(6),
	datab => \bypass_o~2_combout\,
	datac => dly_cnt(5),
	datad => \bypass_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bypass_o~3_combout\);

-- Location: LC_X12_Y4_N9
\init|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \init|LessThan0~0_combout\ = (!\init|temp1\(4) & (((!\init|temp1\(2) & !\init|temp1\(1))) # (!\init|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0155",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(4),
	datab => \init|temp1\(2),
	datac => \init|temp1\(1),
	datad => \init|temp1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan0~0_combout\);

-- Location: LC_X12_Y3_N1
\init|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \init|LessThan0~1_combout\ = (!\init|temp1\(7) & (!\init|temp1\(13) & (!\init|temp1\(12) & !\init|temp1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(7),
	datab => \init|temp1\(13),
	datac => \init|temp1\(12),
	datad => \init|temp1\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan0~1_combout\);

-- Location: LC_X12_Y4_N2
\init|Equal2~2\ : maxii_lcell
-- Equation(s):
-- \init|Equal2~2_combout\ = (!\init|temp1\(5) & (!\init|temp1\(10) & (!\init|temp1\(6) & !\init|temp1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(5),
	datab => \init|temp1\(10),
	datac => \init|temp1\(6),
	datad => \init|temp1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|Equal2~2_combout\);

-- Location: LC_X12_Y4_N6
\init|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \init|LessThan0~2_combout\ = (!\init|temp1\(9) & (\init|LessThan0~0_combout\ & (\init|LessThan0~1_combout\ & \init|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(9),
	datab => \init|LessThan0~0_combout\,
	datac => \init|LessThan0~1_combout\,
	datad => \init|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|LessThan0~2_combout\);

-- Location: LC_X12_Y4_N7
\init|Equal2~1\ : maxii_lcell
-- Equation(s):
-- \init|Equal2~1_combout\ = (!\init|temp1\(0) & (!\init|temp1\(2) & (\init|temp1\(4) & \init|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(0),
	datab => \init|temp1\(2),
	datac => \init|temp1\(4),
	datad => \init|temp1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|Equal2~1_combout\);

-- Location: LC_X12_Y4_N1
\init|Equal2~3\ : maxii_lcell
-- Equation(s):
-- \init|Equal2~3_combout\ = ((\init|Equal2~2_combout\ & (!\init|temp1\(1) & \init|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \init|Equal2~2_combout\,
	datac => \init|temp1\(1),
	datad => \init|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|Equal2~3_combout\);

-- Location: LC_X12_Y4_N0
\init|Equal2~4\ : maxii_lcell
-- Equation(s):
-- \init|Equal2~4_combout\ = (\init|temp1\(9) & (\init|Equal2~1_combout\ & (\init|temp1\(7) & \init|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(9),
	datab => \init|Equal2~1_combout\,
	datac => \init|temp1\(7),
	datad => \init|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|Equal2~4_combout\);

-- Location: LC_X12_Y4_N8
\init|comb~1\ : maxii_lcell
-- Equation(s):
-- \init|comb~1_combout\ = (((!\init|Equal2~1_combout\) # (!\init|comb~0_combout\)) # (!\init|temp1\(7))) # (!\init|temp1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|temp1\(1),
	datab => \init|temp1\(7),
	datac => \init|comb~0_combout\,
	datad => \init|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|comb~1_combout\);

-- Location: LC_X9_Y4_N2
\init|led[1]~1\ : maxii_lcell
-- Equation(s):
-- \init|led[1]~1_combout\ = (\init|LessThan0~2_combout\) # ((\init|Equal2~4_combout\) # ((!\init|comb~1_combout\ & \pwm_up|up_sign|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|comb~1_combout\,
	datab => \pwm_up|up_sign|Equal0~3_combout\,
	datac => \init|LessThan0~2_combout\,
	datad => \init|Equal2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \init|led[1]~1_combout\);

-- Location: LC_X8_Y4_N2
\init|led[1]\ : maxii_lcell
-- Equation(s):
-- \init|led\(1) = DFFEAS((\init|Equal2~4_combout\ & (!\pwm_down|down_deal|start~regout\)) # (!\init|Equal2~4_combout\ & (((!\init|LessThan0~2_combout\ & \init|led\(0))))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5530",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|start~regout\,
	datab => \init|LessThan0~2_combout\,
	datac => \init|led\(0),
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(1));

-- Location: LC_X8_Y4_N6
\init|led[2]\ : maxii_lcell
-- Equation(s):
-- \init|led\(2) = DFFEAS((\init|Equal2~4_combout\ & (((!\pwm_up|sign_deal|call_fault~combout\)))) # (!\init|Equal2~4_combout\ & (\init|led\(1) & ((!\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "330a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(1),
	datab => \pwm_up|sign_deal|call_fault~combout\,
	datac => \init|LessThan0~2_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(2));

-- Location: LC_X8_Y4_N4
\init|led[3]\ : maxii_lcell
-- Equation(s):
-- \init|led\(3) = DFFEAS((\init|Equal2~4_combout\ & (((\pwm_up|sign_deal|TEM_f|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(2)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(2),
	datab => \pwm_up|sign_deal|TEM_f|Equal0~0_combout\,
	datac => \init|LessThan0~2_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(3));

-- Location: LC_X8_Y4_N8
\init|led[4]\ : maxii_lcell
-- Equation(s):
-- \init|led\(4) = DFFEAS((\init|Equal2~4_combout\ & (((\pwm_up|sign_deal|uv_f|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(3)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(3),
	datab => \init|LessThan0~2_combout\,
	datac => \pwm_up|sign_deal|uv_f|Equal0~0_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(4));

-- Location: LC_X8_Y4_N9
\init|led[5]\ : maxii_lcell
-- Equation(s):
-- \init|led\(5) = DFFEAS((\init|Equal2~4_combout\ & (((\pwm_up|sign_deal|ov_f|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(4)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(4),
	datab => \init|LessThan0~2_combout\,
	datac => \pwm_up|sign_deal|ov_f|Equal0~0_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(5));

-- Location: LC_X8_Y4_N3
\init|led[6]\ : maxii_lcell
-- Equation(s):
-- \init|led\(6) = DFFEAS((\init|Equal2~4_combout\ & (((!\pwm_up|sign_deal|t4|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(5)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|Equal2~4_combout\,
	datab => \init|led\(5),
	datac => \init|LessThan0~2_combout\,
	datad => \pwm_up|sign_deal|t4|Equal0~0_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(6));

-- Location: LC_X8_Y4_N5
\init|led[7]\ : maxii_lcell
-- Equation(s):
-- \init|led\(7) = DFFEAS((\init|Equal2~4_combout\ & (((!\pwm_up|sign_deal|t3|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(6)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(6),
	datab => \pwm_up|sign_deal|t3|Equal0~0_combout\,
	datac => \init|LessThan0~2_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(7));

-- Location: LC_X8_Y4_N1
\init|led[8]\ : maxii_lcell
-- Equation(s):
-- \init|led\(8) = DFFEAS((\init|Equal2~4_combout\ & (((!\pwm_up|sign_deal|t2|Equal0~0_combout\)))) # (!\init|Equal2~4_combout\ & ((\init|led\(7)) # ((\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \init|led\(7),
	datab => \init|LessThan0~2_combout\,
	datac => \pwm_up|sign_deal|t2|Equal0~0_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(8));

-- Location: LC_X8_Y4_N0
\init|led[9]\ : maxii_lcell
-- Equation(s):
-- \init|led\(9) = DFFEAS((\init|Equal2~4_combout\ & (!\pwm_up|sign_deal|t1|Equal0~0_combout\)) # (!\init|Equal2~4_combout\ & (((\init|led\(8)) # (\init|LessThan0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_up|sign_deal|t1|Equal0~0_combout\,
	datab => \init|led\(8),
	datac => \init|LessThan0~2_combout\,
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(9));

-- Location: LC_X8_Y4_N7
\init|led[0]\ : maxii_lcell
-- Equation(s):
-- \init|led\(0) = DFFEAS((\init|Equal2~4_combout\ & (!\pwm_down|down_deal|stop~regout\)) # (!\init|Equal2~4_combout\ & (((!\init|LessThan0~2_combout\ & \init|led\(9))))), GLOBAL(\clk~combout\), VCC, , \init|led[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5530",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pwm_down|down_deal|stop~regout\,
	datab => \init|LessThan0~2_combout\,
	datac => \init|led\(9),
	datad => \init|Equal2~4_combout\,
	aclr => GND,
	ena => \init|led[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|led\(0));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_col1);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_col2);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_col3);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_col4);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sent~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_up|up_sign|MSEND_BYTE|sent~0_combout\,
	oe => VCC,
	padio => ww_sent);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rect_rcvd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rect_rcvd);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rect_sent~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rect_sent);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\adclk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ad|adclk~regout\,
	oe => VCC,
	padio => ww_adclk);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs_n~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ad|cs_n~regout\,
	oe => VCC,
	padio => ww_cs_n);

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\K_1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_down|dead|K_1~regout\,
	oe => VCC,
	padio => ww_K_1);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\K_2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_down|dead|K_2~regout\,
	oe => VCC,
	padio => ww_K_2);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\K_3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_down|dead|K_3~regout\,
	oe => VCC,
	padio => ww_K_3);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\K_4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pwm_down|dead|K_4~regout\,
	oe => VCC,
	padio => ww_K_4);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\bypass_o~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bypass_o~3_combout\,
	oe => VCC,
	padio => ww_bypass_o);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(0),
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(1),
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(2),
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(3),
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(4),
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(5),
	oe => VCC,
	padio => ww_led(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(6),
	oe => VCC,
	padio => ww_led(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(7),
	oe => VCC,
	padio => ww_led(7));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(8),
	oe => VCC,
	padio => ww_led(8));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \init|led\(9),
	oe => VCC,
	padio => ww_led(9));
END structure;


