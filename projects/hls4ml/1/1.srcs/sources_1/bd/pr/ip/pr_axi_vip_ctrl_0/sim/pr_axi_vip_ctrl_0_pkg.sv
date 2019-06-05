///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package pr_axi_vip_ctrl_0_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter pr_axi_vip_ctrl_0_VIP_PROTOCOL           = 2;
      parameter pr_axi_vip_ctrl_0_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter pr_axi_vip_ctrl_0_VIP_INTERFACE_MODE     = 2;
      parameter pr_axi_vip_ctrl_0_VIP_ADDR_WIDTH         = 16;
      parameter pr_axi_vip_ctrl_0_VIP_DATA_WIDTH         = 32;
      parameter pr_axi_vip_ctrl_0_VIP_ID_WIDTH           = 0;
      parameter pr_axi_vip_ctrl_0_VIP_AWUSER_WIDTH       = 0;
      parameter pr_axi_vip_ctrl_0_VIP_ARUSER_WIDTH       = 0;
      parameter pr_axi_vip_ctrl_0_VIP_RUSER_WIDTH        = 0;
      parameter pr_axi_vip_ctrl_0_VIP_WUSER_WIDTH        = 0;
      parameter pr_axi_vip_ctrl_0_VIP_BUSER_WIDTH        = 0;
      parameter pr_axi_vip_ctrl_0_VIP_SUPPORTS_NARROW    = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_BURST          = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_LOCK           = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_CACHE          = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_REGION         = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_QOS            = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_PROT           = 1;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_WSTRB          = 1;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_BRESP          = 1;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_RRESP          = 1;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_ACLKEN         = 0;
      parameter pr_axi_vip_ctrl_0_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////


typedef axi_slv_agent #(pr_axi_vip_ctrl_0_VIP_PROTOCOL, 
                        pr_axi_vip_ctrl_0_VIP_ADDR_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_DATA_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_DATA_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_ID_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_ID_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_AWUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_WUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_BUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_ARUSER_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_RUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_SUPPORTS_NARROW, 
                        pr_axi_vip_ctrl_0_VIP_HAS_BURST,
                        pr_axi_vip_ctrl_0_VIP_HAS_LOCK,
                        pr_axi_vip_ctrl_0_VIP_HAS_CACHE,
                        pr_axi_vip_ctrl_0_VIP_HAS_REGION,
                        pr_axi_vip_ctrl_0_VIP_HAS_PROT,
                        pr_axi_vip_ctrl_0_VIP_HAS_QOS,
                        pr_axi_vip_ctrl_0_VIP_HAS_WSTRB,
                        pr_axi_vip_ctrl_0_VIP_HAS_BRESP,
                        pr_axi_vip_ctrl_0_VIP_HAS_RRESP,
                        pr_axi_vip_ctrl_0_VIP_HAS_ARESETN) pr_axi_vip_ctrl_0_slv_t;

typedef axi_slv_mem_agent #(pr_axi_vip_ctrl_0_VIP_PROTOCOL, 
                        pr_axi_vip_ctrl_0_VIP_ADDR_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_DATA_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_DATA_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_ID_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_ID_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_AWUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_WUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_BUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_ARUSER_WIDTH,
                        pr_axi_vip_ctrl_0_VIP_RUSER_WIDTH, 
                        pr_axi_vip_ctrl_0_VIP_SUPPORTS_NARROW, 
                        pr_axi_vip_ctrl_0_VIP_HAS_BURST,
                        pr_axi_vip_ctrl_0_VIP_HAS_LOCK,
                        pr_axi_vip_ctrl_0_VIP_HAS_CACHE,
                        pr_axi_vip_ctrl_0_VIP_HAS_REGION,
                        pr_axi_vip_ctrl_0_VIP_HAS_PROT,
                        pr_axi_vip_ctrl_0_VIP_HAS_QOS,
                        pr_axi_vip_ctrl_0_VIP_HAS_WSTRB,
                        pr_axi_vip_ctrl_0_VIP_HAS_BRESP,
                        pr_axi_vip_ctrl_0_VIP_HAS_RRESP,
                        pr_axi_vip_ctrl_0_VIP_HAS_ARESETN) pr_axi_vip_ctrl_0_slv_mem_t;
                        
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      pr_axi_vip_ctrl_0_slv_t  pr_axi_vip_ctrl_0_slv;
//      initial begin : START_pr_axi_vip_ctrl_0_SLAVE
//        pr_axi_vip_ctrl_0_slv = new("pr_axi_vip_ctrl_0_slv", `pr_axi_vip_ctrl_0_PATH_TO_INTERFACE);
//        pr_axi_vip_ctrl_0_slv.start_slave();
//      end

endpackage : pr_axi_vip_ctrl_0_pkg
