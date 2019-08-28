// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.labs:hls:echo_server_application:1.02
// IP Revision: 1802231009

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
echo_server_application_ip your_instance_name (
  .m_axis_close_connection_TVALID(m_axis_close_connection_TVALID),      // output wire m_axis_close_connection_TVALID
  .m_axis_close_connection_TREADY(m_axis_close_connection_TREADY),      // input wire m_axis_close_connection_TREADY
  .m_axis_close_connection_TDATA(m_axis_close_connection_TDATA),        // output wire [15 : 0] m_axis_close_connection_TDATA
  .m_axis_listen_port_TVALID(m_axis_listen_port_TVALID),                // output wire m_axis_listen_port_TVALID
  .m_axis_listen_port_TREADY(m_axis_listen_port_TREADY),                // input wire m_axis_listen_port_TREADY
  .m_axis_listen_port_TDATA(m_axis_listen_port_TDATA),                  // output wire [15 : 0] m_axis_listen_port_TDATA
  .m_axis_open_connection_TVALID(m_axis_open_connection_TVALID),        // output wire m_axis_open_connection_TVALID
  .m_axis_open_connection_TREADY(m_axis_open_connection_TREADY),        // input wire m_axis_open_connection_TREADY
  .m_axis_open_connection_TDATA(m_axis_open_connection_TDATA),          // output wire [47 : 0] m_axis_open_connection_TDATA
  .m_axis_read_package_TVALID(m_axis_read_package_TVALID),              // output wire m_axis_read_package_TVALID
  .m_axis_read_package_TREADY(m_axis_read_package_TREADY),              // input wire m_axis_read_package_TREADY
  .m_axis_read_package_TDATA(m_axis_read_package_TDATA),                // output wire [31 : 0] m_axis_read_package_TDATA
  .m_axis_tx_data_TVALID(m_axis_tx_data_TVALID),                        // output wire m_axis_tx_data_TVALID
  .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY),                        // input wire m_axis_tx_data_TREADY
  .m_axis_tx_data_TDATA(m_axis_tx_data_TDATA),                          // output wire [63 : 0] m_axis_tx_data_TDATA
  .m_axis_tx_data_TKEEP(m_axis_tx_data_TKEEP),                          // output wire [7 : 0] m_axis_tx_data_TKEEP
  .m_axis_tx_data_TLAST(m_axis_tx_data_TLAST),                          // output wire [0 : 0] m_axis_tx_data_TLAST
  .m_axis_tx_metadata_TVALID(m_axis_tx_metadata_TVALID),                // output wire m_axis_tx_metadata_TVALID
  .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),                // input wire m_axis_tx_metadata_TREADY
  .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),                  // output wire [15 : 0] m_axis_tx_metadata_TDATA
  .s_axis_listen_port_status_TVALID(s_axis_listen_port_status_TVALID),  // input wire s_axis_listen_port_status_TVALID
  .s_axis_listen_port_status_TREADY(s_axis_listen_port_status_TREADY),  // output wire s_axis_listen_port_status_TREADY
  .s_axis_listen_port_status_TDATA(s_axis_listen_port_status_TDATA),    // input wire [7 : 0] s_axis_listen_port_status_TDATA
  .s_axis_notifications_TVALID(s_axis_notifications_TVALID),            // input wire s_axis_notifications_TVALID
  .s_axis_notifications_TREADY(s_axis_notifications_TREADY),            // output wire s_axis_notifications_TREADY
  .s_axis_notifications_TDATA(s_axis_notifications_TDATA),              // input wire [87 : 0] s_axis_notifications_TDATA
  .s_axis_open_status_TVALID(s_axis_open_status_TVALID),                // input wire s_axis_open_status_TVALID
  .s_axis_open_status_TREADY(s_axis_open_status_TREADY),                // output wire s_axis_open_status_TREADY
  .s_axis_open_status_TDATA(s_axis_open_status_TDATA),                  // input wire [23 : 0] s_axis_open_status_TDATA
  .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),                        // input wire s_axis_rx_data_TVALID
  .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),                        // output wire s_axis_rx_data_TREADY
  .s_axis_rx_data_TDATA(s_axis_rx_data_TDATA),                          // input wire [63 : 0] s_axis_rx_data_TDATA
  .s_axis_rx_data_TKEEP(s_axis_rx_data_TKEEP),                          // input wire [7 : 0] s_axis_rx_data_TKEEP
  .s_axis_rx_data_TLAST(s_axis_rx_data_TLAST),                          // input wire [0 : 0] s_axis_rx_data_TLAST
  .s_axis_rx_metadata_TVALID(s_axis_rx_metadata_TVALID),                // input wire s_axis_rx_metadata_TVALID
  .s_axis_rx_metadata_TREADY(s_axis_rx_metadata_TREADY),                // output wire s_axis_rx_metadata_TREADY
  .s_axis_rx_metadata_TDATA(s_axis_rx_metadata_TDATA),                  // input wire [15 : 0] s_axis_rx_metadata_TDATA
  .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID),                    // input wire s_axis_tx_status_TVALID
  .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),                    // output wire s_axis_tx_status_TREADY
  .s_axis_tx_status_TDATA(s_axis_tx_status_TDATA),                      // input wire [23 : 0] s_axis_tx_status_TDATA
  .ap_start(ap_start),                                                  // input wire ap_start
  .ap_ready(ap_ready),                                                  // output wire ap_ready
  .ap_done(ap_done),                                                    // output wire ap_done
  .ap_idle(ap_idle),                                                    // output wire ap_idle
  .aclk(aclk),                                                          // input wire aclk
  .aresetn(aresetn)                                                    // input wire aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

