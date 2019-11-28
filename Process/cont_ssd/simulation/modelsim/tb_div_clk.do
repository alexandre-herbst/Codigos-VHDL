# do cont_ssd_run_msim_rtl_vhdl.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
 vcom -93 -work work {/home/aluno/cont_ssd/div_clk.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity div_clk
# -- Compiling architecture ifsc of div_clk
# 
vsim work.div_clk(ifsc)
# vsim work.div_clk(ifsc) 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.9.0-8-amd64
# //
# //  Copyright 1991-2012 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# //  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS
# //  LICENSORS AND IS SUBJECT TO LICENSE TERMS.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.div_clk(ifsc)
add wave -position insertpoint  \
#sim:/div_clk/MAX \
#sim:/div_clk/clk_in \
#sim:/div_clk/rst \
#sim:/div_clk/clk_out \
#sim:/div_clk/clk_t
do wave.do

force -freeze sim:/div_clk/rst 1 0
force -freeze sim:/div_clk/clk_in 1 0, 0 {10000 ps} -r 20ns
run 1ns
force -freeze sim:/div_clk/rst 0 0
run 1ms


