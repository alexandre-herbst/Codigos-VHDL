# do shift_reg_run_msim_rtl_vhdl.do 
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
# vcom -93 -work work {/home/aluno/DLP/aulaConcorrente/serial para par/serial2par.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Loading package VITAL_Timing
# -- Loading package VITAL_Primitives
# -- Compiling entity serial2par
# -- Compiling architecture andre01 of serial2par
# -- Compiling architecture andre02 of serial2par
# -- Loading entity serial2par
# -- Compiling configuration serial2par_cfg
# -- Loading entity serial2par
# -- Loading architecture andre01 of serial2par
# 
vsim work.serial2par(andre02)
# vsim work.serial2par(andre02) 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.9.0-11-amd64
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
# Loading ieee.vital_timing(body)
# Loading ieee.vital_primitives(body)
# Loading work.serial2par(andre02)
add wave -position insertpoint  \
sim:/serial2par/N \
sim:/serial2par/clk \
sim:/serial2par/rst \
sim:/serial2par/din \
sim:/serial2par/qout \
sim:/serial2par/d \
sim:/serial2par/q
force -freeze sim:/serial2par/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/serial2par/rst 1 0
force -freeze sim:/serial2par/din 0 0
force -freeze sim:/serial2par/din 0 1
run



