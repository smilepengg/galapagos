# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7vx690tffg1157-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.cache/wt [current_project]
set_property parent.project_path /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx [current_project]
set_property ip_output_repo /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.srcs/sources_1/imports/7series/rx_interface.sv
read_ip -quiet /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.srcs/sources_1/ip/cmd_fifo_xgemac_rxif/cmd_fifo_xgemac_rxif.xci
set_property used_in_implementation false [get_files -all /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.srcs/sources_1/ip/cmd_fifo_xgemac_rxif/cmd_fifo_xgemac_rxif.xdc]

read_ip -quiet /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.srcs/sources_1/ip/axis_sync_fifo/axis_sync_fifo.xci
set_property used_in_implementation false [get_files -all /home/madanie1/Documents/2017.4/8v3/repo/network_packet_fifo_rx/network_packet_fifo_rx.srcs/sources_1/ip/axis_sync_fifo/axis_sync_fifo.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top rx_interface_wrapper -part xc7vx690tffg1157-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef rx_interface_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file rx_interface_wrapper_utilization_synth.rpt -pb rx_interface_wrapper_utilization_synth.pb"
