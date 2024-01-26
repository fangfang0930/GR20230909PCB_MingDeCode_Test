onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ads7822/uut/sample_data
add wave -noupdate /tb_ads7822/uut/rst_n
add wave -noupdate /tb_ads7822/uut/numer_cnt
add wave -noupdate /tb_ads7822/uut/div_cnt
add wave -noupdate /tb_ads7822/uut/data_valid
add wave -noupdate /tb_ads7822/uut/clk
add wave -noupdate /tb_ads7822/uut/ad_trig_syn1
add wave -noupdate /tb_ads7822/uut/ad_trig_syn
add wave -noupdate /tb_ads7822/uut/ad_syn
add wave -noupdate /tb_ads7822/uut/ad_dout_syn1
add wave -noupdate /tb_ads7822/uut/ad_dout_syn
add wave -noupdate /tb_ads7822/uut/ad_dout
add wave -noupdate /tb_ads7822/uut/ad_cs_reg
add wave -noupdate /tb_ads7822/uut/ad_cs
add wave -noupdate /tb_ads7822/uut/ad_clk
add wave -noupdate /tb_ads7822/uut/COUNT_M
add wave -noupdate /tb_ads7822/uut/COUNT_1MHZ
add wave -noupdate /tb_ads7822/uut/AD_trigger
add wave -noupdate /tb_ads7822/uut/AD_Work
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6560683 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {12637700 ps}
