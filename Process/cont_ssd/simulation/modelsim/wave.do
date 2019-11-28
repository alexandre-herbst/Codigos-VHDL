onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /div_clk/MAX
add wave -noupdate /div_clk/clk_in
add wave -noupdate /div_clk/rst
add wave -noupdate /div_clk/clk_out
add wave -noupdate /div_clk/clk_t
add wave -noupdate /div_clk/line__18/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 1}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {1002500003 ps} {2052501053 ps}
