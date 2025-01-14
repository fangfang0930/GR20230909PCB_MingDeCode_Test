onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MSEND_BYTE_tb/unit_en
add wave -noupdate /MSEND_BYTE_tb/sent
add wave -noupdate -radix binary /MSEND_BYTE_tb/sending
add wave -noupdate /MSEND_BYTE_tb/send_start
add wave -noupdate -radix binary /MSEND_BYTE_tb/send_done
add wave -noupdate /MSEND_BYTE_tb/send_data
add wave -noupdate /MSEND_BYTE_tb/rstn
add wave -noupdate /MSEND_BYTE_tb/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {115 ps} 0} {{Cursor 3} {105 ps} 0} {{Cursor 4} {125 ps} 0} {{Cursor 5} {285 ps} 0} {{Cursor 6} {205 ps} 0} {{Cursor 7} {165 ps} 0} {{Cursor 8} {245 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 153
configure wave -valuecolwidth 90
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
WaveRestoreZoom {0 ps} {704 ps}
