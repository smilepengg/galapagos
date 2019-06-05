onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+shell -L xilinx_vip -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_0_14 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_19 -L blk_mem_gen_v8_4_1 -L xlconstant_v1_1_5 -L gigantic_mux -L xlconcat_v2_1_1 -L util_vector_logic_v2_0_1 -L ten_gig_eth_mac_v15_1_6 -L gtwizard_ultrascale_v1_7_4 -L ten_gig_eth_pcs_pma_v6_0_13 -L fifo_generator_v13_2_1 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_17 -L microblaze_v10_0_7 -L proc_sys_reset_v5_0_12 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_15 -L iomodule_v3_1_3 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_17 -L fifo_generator_v13_2_2 -L axi_data_fifo_v2_1_16 -L axi_crossbar_v2_1_18 -L mdm_v3_2_14 -L xdma_v4_1_1 -L axi_mmu_v2_1_15 -L axi_protocol_converter_v2_1_17 -L axi_clock_converter_v2_1_16 -L axi_dwidth_converter_v2_1_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.shell xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {shell.udo}

run -all

endsim

quit -force
