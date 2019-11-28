vcom -93 -work work {/home/alisson.b11/aula34_2/semaforo_v1.vhd}
 
vsim work.semaforo_v1(v1)
add wave -position insertpoint  \
sim:/semaforo_v1/rst \
sim:/semaforo_v1/pr_state \
sim:/semaforo_v1/nx_state \
sim:/semaforo_v1/l2_vm \
sim:/semaforo_v1/l2_vd \
sim:/semaforo_v1/l2_am \
sim:/semaforo_v1/l1_vm \
sim:/semaforo_v1/l1_vd \
sim:/semaforo_v1/l1_am \
sim:/semaforo_v1/clk \
sim:/semaforo_v1/G
force -freeze sim:/semaforo_v1/clk 1 0, 0 {0.5 sec} -r 1 sec
force -freeze sim:/semaforo_v1/rst 1 0, 0 100
force -freeze sim:/semaforo_v1/G 0 0, 1 1 min, 0 1.2 min, 1 5 min, 0 5.2 min
  
run 6 min


