onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pr -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L blk_mem_gen_v8_4_1 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_17 -L axis_switch_v1_1_17 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_19 -L xlconstant_v1_1_5 -L proc_sys_reset_v5_0_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pr xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pr.udo}

run -all

endsim

quit -force
