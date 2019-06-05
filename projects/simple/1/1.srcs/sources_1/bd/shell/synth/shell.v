//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Fri Mar  8 23:44:05 2019
//Host        : batcomputer.arkham running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target shell.bd
//Design      : shell
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_imp_107RYSW
   (CLK_IN_D_clk_n,
    CLK_IN_D_clk_p,
    M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_rst_n);
  input [0:0]CLK_IN_D_clk_n;
  input [0:0]CLK_IN_D_clk_p;
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input sys_rst_n;

  wire [7:0]Conn1_rxn;
  wire [7:0]Conn1_rxp;
  wire [7:0]Conn1_txn;
  wire [7:0]Conn1_txp;
  wire [63:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [255:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [255:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [31:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [0:0]Conn3_CLK_N;
  wire [0:0]Conn3_CLK_P;
  wire [31:0]Conn4_ARADDR;
  wire [2:0]Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [31:0]Conn4_AWADDR;
  wire [2:0]Conn4_AWPROT;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire sys_rst_n_1;
  wire [0:0]util_ds_buf_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;

  assign Conn1_rxn = pcie_mgt_rxn[7:0];
  assign Conn1_rxp = pcie_mgt_rxp[7:0];
  assign Conn2_ARREADY = M_AXI_arready;
  assign Conn2_AWREADY = M_AXI_awready;
  assign Conn2_BID = M_AXI_bid[3:0];
  assign Conn2_BRESP = M_AXI_bresp[1:0];
  assign Conn2_BVALID = M_AXI_bvalid;
  assign Conn2_RDATA = M_AXI_rdata[255:0];
  assign Conn2_RID = M_AXI_rid[3:0];
  assign Conn2_RLAST = M_AXI_rlast;
  assign Conn2_RRESP = M_AXI_rresp[1:0];
  assign Conn2_RVALID = M_AXI_rvalid;
  assign Conn2_WREADY = M_AXI_wready;
  assign Conn3_CLK_N = CLK_IN_D_clk_n[0];
  assign Conn3_CLK_P = CLK_IN_D_clk_p[0];
  assign Conn4_ARREADY = M_AXI_LITE_arready;
  assign Conn4_AWREADY = M_AXI_LITE_awready;
  assign Conn4_BRESP = M_AXI_LITE_bresp[1:0];
  assign Conn4_BVALID = M_AXI_LITE_bvalid;
  assign Conn4_RDATA = M_AXI_LITE_rdata[31:0];
  assign Conn4_RRESP = M_AXI_LITE_rresp[1:0];
  assign Conn4_RVALID = M_AXI_LITE_rvalid;
  assign Conn4_WREADY = M_AXI_LITE_wready;
  assign M_AXI_LITE_araddr[31:0] = Conn4_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = Conn4_ARPROT;
  assign M_AXI_LITE_arvalid = Conn4_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = Conn4_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = Conn4_AWPROT;
  assign M_AXI_LITE_awvalid = Conn4_AWVALID;
  assign M_AXI_LITE_bready = Conn4_BREADY;
  assign M_AXI_LITE_rready = Conn4_RREADY;
  assign M_AXI_LITE_wdata[31:0] = Conn4_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = Conn4_WSTRB;
  assign M_AXI_LITE_wvalid = Conn4_WVALID;
  assign M_AXI_araddr[63:0] = Conn2_ARADDR;
  assign M_AXI_arburst[1:0] = Conn2_ARBURST;
  assign M_AXI_arcache[3:0] = Conn2_ARCACHE;
  assign M_AXI_arid[3:0] = Conn2_ARID;
  assign M_AXI_arlen[7:0] = Conn2_ARLEN;
  assign M_AXI_arlock[0] = Conn2_ARLOCK;
  assign M_AXI_arprot[2:0] = Conn2_ARPROT;
  assign M_AXI_arsize[2:0] = Conn2_ARSIZE;
  assign M_AXI_arvalid = Conn2_ARVALID;
  assign M_AXI_awaddr[63:0] = Conn2_AWADDR;
  assign M_AXI_awburst[1:0] = Conn2_AWBURST;
  assign M_AXI_awcache[3:0] = Conn2_AWCACHE;
  assign M_AXI_awid[3:0] = Conn2_AWID;
  assign M_AXI_awlen[7:0] = Conn2_AWLEN;
  assign M_AXI_awlock[0] = Conn2_AWLOCK;
  assign M_AXI_awprot[2:0] = Conn2_AWPROT;
  assign M_AXI_awsize[2:0] = Conn2_AWSIZE;
  assign M_AXI_awvalid = Conn2_AWVALID;
  assign M_AXI_bready = Conn2_BREADY;
  assign M_AXI_rready = Conn2_RREADY;
  assign M_AXI_wdata[255:0] = Conn2_WDATA;
  assign M_AXI_wlast = Conn2_WLAST;
  assign M_AXI_wstrb[31:0] = Conn2_WSTRB;
  assign M_AXI_wvalid = Conn2_WVALID;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = xdma_0_axi_aresetn;
  assign pcie_mgt_txn[7:0] = Conn1_txn;
  assign pcie_mgt_txp[7:0] = Conn1_txp;
  assign sys_rst_n_1 = sys_rst_n;
  shell_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(Conn3_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn3_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  shell_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(Conn2_ARADDR),
        .m_axi_arburst(Conn2_ARBURST),
        .m_axi_arcache(Conn2_ARCACHE),
        .m_axi_arid(Conn2_ARID),
        .m_axi_arlen(Conn2_ARLEN),
        .m_axi_arlock(Conn2_ARLOCK),
        .m_axi_arprot(Conn2_ARPROT),
        .m_axi_arready(Conn2_ARREADY),
        .m_axi_arsize(Conn2_ARSIZE),
        .m_axi_arvalid(Conn2_ARVALID),
        .m_axi_awaddr(Conn2_AWADDR),
        .m_axi_awburst(Conn2_AWBURST),
        .m_axi_awcache(Conn2_AWCACHE),
        .m_axi_awid(Conn2_AWID),
        .m_axi_awlen(Conn2_AWLEN),
        .m_axi_awlock(Conn2_AWLOCK),
        .m_axi_awprot(Conn2_AWPROT),
        .m_axi_awready(Conn2_AWREADY),
        .m_axi_awsize(Conn2_AWSIZE),
        .m_axi_awvalid(Conn2_AWVALID),
        .m_axi_bid(Conn2_BID),
        .m_axi_bready(Conn2_BREADY),
        .m_axi_bresp(Conn2_BRESP),
        .m_axi_bvalid(Conn2_BVALID),
        .m_axi_rdata(Conn2_RDATA),
        .m_axi_rid(Conn2_RID),
        .m_axi_rlast(Conn2_RLAST),
        .m_axi_rready(Conn2_RREADY),
        .m_axi_rresp(Conn2_RRESP),
        .m_axi_rvalid(Conn2_RVALID),
        .m_axi_wdata(Conn2_WDATA),
        .m_axi_wlast(Conn2_WLAST),
        .m_axi_wready(Conn2_WREADY),
        .m_axi_wstrb(Conn2_WSTRB),
        .m_axi_wvalid(Conn2_WVALID),
        .m_axil_araddr(Conn4_ARADDR),
        .m_axil_arprot(Conn4_ARPROT),
        .m_axil_arready(Conn4_ARREADY),
        .m_axil_arvalid(Conn4_ARVALID),
        .m_axil_awaddr(Conn4_AWADDR),
        .m_axil_awprot(Conn4_AWPROT),
        .m_axil_awready(Conn4_AWREADY),
        .m_axil_awvalid(Conn4_AWVALID),
        .m_axil_bready(Conn4_BREADY),
        .m_axil_bresp(Conn4_BRESP),
        .m_axil_bvalid(Conn4_BVALID),
        .m_axil_rdata(Conn4_RDATA),
        .m_axil_rready(Conn4_RREADY),
        .m_axil_rresp(Conn4_RRESP),
        .m_axil_rvalid(Conn4_RVALID),
        .m_axil_wdata(Conn4_WDATA),
        .m_axil_wready(Conn4_WREADY),
        .m_axil_wstrb(Conn4_WSTRB),
        .m_axil_wvalid(Conn4_WVALID),
        .pci_exp_rxn(Conn1_rxn),
        .pci_exp_rxp(Conn1_rxp),
        .pci_exp_txn(Conn1_txn),
        .pci_exp_txp(Conn1_txp),
        .sys_clk(util_ds_buf_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_IBUF_OUT),
        .sys_rst_n(sys_rst_n_1),
        .usr_irq_req(1'b0));
endmodule

module m00_couplers_imp_17RNK4V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_m00_couplers_ARADDR;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [11:0]auto_cc_to_m00_couplers_AWADDR;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [3:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_1KWAT1H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_4J5AN7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [511:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [511:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [63:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_A2B4UF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [8:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_WG87ZH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_ERMJ3Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m02_couplers_ARADDR;
  wire [2:0]auto_cc_to_m02_couplers_ARPROT;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [31:0]auto_cc_to_m02_couplers_AWADDR;
  wire [2:0]auto_cc_to_m02_couplers_AWPROT;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module mb_system_imp_VMXBLU
   (MB_AXI_araddr,
    MB_AXI_arprot,
    MB_AXI_arready,
    MB_AXI_arvalid,
    MB_AXI_awaddr,
    MB_AXI_awprot,
    MB_AXI_awready,
    MB_AXI_awvalid,
    MB_AXI_bready,
    MB_AXI_bresp,
    MB_AXI_bvalid,
    MB_AXI_rdata,
    MB_AXI_rready,
    MB_AXI_rresp,
    MB_AXI_rvalid,
    MB_AXI_wdata,
    MB_AXI_wready,
    MB_AXI_wstrb,
    MB_AXI_wvalid,
    clk100,
    ext_reset_in);
  output [31:0]MB_AXI_araddr;
  output [2:0]MB_AXI_arprot;
  input [0:0]MB_AXI_arready;
  output [0:0]MB_AXI_arvalid;
  output [31:0]MB_AXI_awaddr;
  output [2:0]MB_AXI_awprot;
  input [0:0]MB_AXI_awready;
  output [0:0]MB_AXI_awvalid;
  output [0:0]MB_AXI_bready;
  input [1:0]MB_AXI_bresp;
  input [0:0]MB_AXI_bvalid;
  input [31:0]MB_AXI_rdata;
  output [0:0]MB_AXI_rready;
  input [1:0]MB_AXI_rresp;
  input [0:0]MB_AXI_rvalid;
  output [31:0]MB_AXI_wdata;
  input [0:0]MB_AXI_wready;
  output [3:0]MB_AXI_wstrb;
  output [0:0]MB_AXI_wvalid;
  input clk100;
  input ext_reset_in;

  wire Clk_1;
  wire [0:0]ap_rst_n_1;
  wire ext_reset_in_1;
  wire mdm_1_Debug_SYS_Rst;
  wire mdm_1_MBDEBUG_0_CAPTURE;
  wire mdm_1_MBDEBUG_0_CLK;
  wire mdm_1_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_1_MBDEBUG_0_REG_EN;
  wire mdm_1_MBDEBUG_0_RST;
  wire mdm_1_MBDEBUG_0_SHIFT;
  wire mdm_1_MBDEBUG_0_TDI;
  wire mdm_1_MBDEBUG_0_TDO;
  wire mdm_1_MBDEBUG_0_UPDATE;
  wire [0:31]microblaze_0_DLMB_ABUS;
  wire microblaze_0_DLMB_ADDRSTROBE;
  wire [0:3]microblaze_0_DLMB_BE;
  wire microblaze_0_DLMB_CE;
  wire [0:31]microblaze_0_DLMB_READDBUS;
  wire microblaze_0_DLMB_READSTROBE;
  wire microblaze_0_DLMB_READY;
  wire microblaze_0_DLMB_UE;
  wire microblaze_0_DLMB_WAIT;
  wire [0:31]microblaze_0_DLMB_WRITEDBUS;
  wire microblaze_0_DLMB_WRITESTROBE;
  wire [0:31]microblaze_0_ILMB_ABUS;
  wire microblaze_0_ILMB_ADDRSTROBE;
  wire microblaze_0_ILMB_CE;
  wire [0:31]microblaze_0_ILMB_READDBUS;
  wire microblaze_0_ILMB_READSTROBE;
  wire microblaze_0_ILMB_READY;
  wire microblaze_0_ILMB_UE;
  wire microblaze_0_ILMB_WAIT;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire [0:0]microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire [0:0]microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire [0:0]microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire [0:0]microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire [0:0]microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_ARADDR;
  wire microblaze_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_AWADDR;
  wire microblaze_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]microblaze_0_axi_periph_M00_AXI_BRESP;
  wire microblaze_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]microblaze_0_axi_periph_M00_AXI_RRESP;
  wire microblaze_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_WDATA;
  wire microblaze_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]microblaze_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]microblaze_0_axi_periph_M01_AXI_ARPROT;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]microblaze_0_axi_periph_M01_AXI_AWPROT;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_0_axi_periph_M01_AXI_BRESP;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_0_axi_periph_M01_AXI_RRESP;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_WDATA;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_WVALID;
  wire [0:0]rst_clk_wiz_0_100M_bus_struct_reset;
  wire [0:0]rst_clk_wiz_0_100M_interconnect_aresetn;
  wire rst_clk_wiz_0_100M_mb_reset;

  assign Clk_1 = clk100;
  assign MB_AXI_araddr[31:0] = microblaze_0_axi_periph_M01_AXI_ARADDR;
  assign MB_AXI_arprot[2:0] = microblaze_0_axi_periph_M01_AXI_ARPROT;
  assign MB_AXI_arvalid[0] = microblaze_0_axi_periph_M01_AXI_ARVALID;
  assign MB_AXI_awaddr[31:0] = microblaze_0_axi_periph_M01_AXI_AWADDR;
  assign MB_AXI_awprot[2:0] = microblaze_0_axi_periph_M01_AXI_AWPROT;
  assign MB_AXI_awvalid[0] = microblaze_0_axi_periph_M01_AXI_AWVALID;
  assign MB_AXI_bready[0] = microblaze_0_axi_periph_M01_AXI_BREADY;
  assign MB_AXI_rready[0] = microblaze_0_axi_periph_M01_AXI_RREADY;
  assign MB_AXI_wdata[31:0] = microblaze_0_axi_periph_M01_AXI_WDATA;
  assign MB_AXI_wstrb[3:0] = microblaze_0_axi_periph_M01_AXI_WSTRB;
  assign MB_AXI_wvalid[0] = microblaze_0_axi_periph_M01_AXI_WVALID;
  assign ext_reset_in_1 = ext_reset_in;
  assign microblaze_0_axi_periph_M01_AXI_ARREADY = MB_AXI_arready[0];
  assign microblaze_0_axi_periph_M01_AXI_AWREADY = MB_AXI_awready[0];
  assign microblaze_0_axi_periph_M01_AXI_BRESP = MB_AXI_bresp[1:0];
  assign microblaze_0_axi_periph_M01_AXI_BVALID = MB_AXI_bvalid[0];
  assign microblaze_0_axi_periph_M01_AXI_RDATA = MB_AXI_rdata[31:0];
  assign microblaze_0_axi_periph_M01_AXI_RRESP = MB_AXI_rresp[1:0];
  assign microblaze_0_axi_periph_M01_AXI_RVALID = MB_AXI_rvalid[0];
  assign microblaze_0_axi_periph_M01_AXI_WREADY = MB_AXI_wready[0];
  shell_mdm_0_0 mdm_0
       (.Dbg_Capture_0(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_1_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mdm_1_Debug_SYS_Rst),
        .S_AXI_ACLK(Clk_1),
        .S_AXI_ARADDR(microblaze_0_axi_periph_M00_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(ap_rst_n_1),
        .S_AXI_ARREADY(microblaze_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_ARVALID(microblaze_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_AWADDR(microblaze_0_axi_periph_M00_AXI_AWADDR[3:0]),
        .S_AXI_AWREADY(microblaze_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_AWVALID(microblaze_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_BREADY(microblaze_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_BRESP(microblaze_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_BVALID(microblaze_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_RDATA(microblaze_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_RREADY(microblaze_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_RRESP(microblaze_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_RVALID(microblaze_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_WDATA(microblaze_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_WREADY(microblaze_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_WSTRB(microblaze_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_WVALID(microblaze_0_axi_periph_M00_AXI_WVALID));
  (* BMM_INFO_PROCESSOR = "microblaze-le > shell mb_system/microblaze_0_local_memory/dlmb_bram_if_cntlr shell axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_DLMB_BE),
        .Clk(Clk_1),
        .DCE(microblaze_0_DLMB_CE),
        .DReady(microblaze_0_DLMB_READY),
        .DUE(microblaze_0_DLMB_UE),
        .DWait(microblaze_0_DLMB_WAIT),
        .D_AS(microblaze_0_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_0_DLMB_ABUS),
        .Data_Read(microblaze_0_DLMB_READDBUS),
        .Data_Write(microblaze_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Shift(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Update(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_Rst(mdm_1_MBDEBUG_0_RST),
        .ICE(microblaze_0_ILMB_CE),
        .IFetch(microblaze_0_ILMB_READSTROBE),
        .IReady(microblaze_0_ILMB_READY),
        .IUE(microblaze_0_ILMB_UE),
        .IWAIT(microblaze_0_ILMB_WAIT),
        .I_AS(microblaze_0_ILMB_ADDRSTROBE),
        .Instr(microblaze_0_ILMB_READDBUS),
        .Instr_Addr(microblaze_0_ILMB_ABUS),
        .Interrupt(1'b0),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_0_DLMB_READSTROBE),
        .Reset(rst_clk_wiz_0_100M_mb_reset),
        .Write_Strobe(microblaze_0_DLMB_WRITESTROBE));
  shell_microblaze_0_axi_periph_0 microblaze_0_axi_periph
       (.ACLK(Clk_1),
        .ARESETN(rst_clk_wiz_0_100M_interconnect_aresetn),
        .M00_ACLK(Clk_1),
        .M00_ARESETN(ap_rst_n_1),
        .M00_AXI_araddr(microblaze_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(microblaze_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(microblaze_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(microblaze_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(microblaze_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(microblaze_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(microblaze_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(microblaze_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(microblaze_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(microblaze_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(microblaze_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(microblaze_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(microblaze_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(microblaze_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(microblaze_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(microblaze_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(microblaze_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(Clk_1),
        .M01_ARESETN(ap_rst_n_1),
        .M01_AXI_araddr(microblaze_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(microblaze_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(microblaze_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(microblaze_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(microblaze_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(microblaze_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(microblaze_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(microblaze_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(microblaze_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(Clk_1),
        .S00_ARESETN(ap_rst_n_1),
        .S00_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID));
  microblaze_0_local_memory_imp_1HEYJGJ microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_DLMB_ABUS),
        .DLMB_addrstrobe(microblaze_0_DLMB_ADDRSTROBE),
        .DLMB_be(microblaze_0_DLMB_BE),
        .DLMB_ce(microblaze_0_DLMB_CE),
        .DLMB_readdbus(microblaze_0_DLMB_READDBUS),
        .DLMB_readstrobe(microblaze_0_DLMB_READSTROBE),
        .DLMB_ready(microblaze_0_DLMB_READY),
        .DLMB_ue(microblaze_0_DLMB_UE),
        .DLMB_wait(microblaze_0_DLMB_WAIT),
        .DLMB_writedbus(microblaze_0_DLMB_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_DLMB_WRITESTROBE),
        .ILMB_abus(microblaze_0_ILMB_ABUS),
        .ILMB_addrstrobe(microblaze_0_ILMB_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ILMB_CE),
        .ILMB_readdbus(microblaze_0_ILMB_READDBUS),
        .ILMB_readstrobe(microblaze_0_ILMB_READSTROBE),
        .ILMB_ready(microblaze_0_ILMB_READY),
        .ILMB_ue(microblaze_0_ILMB_UE),
        .ILMB_wait(microblaze_0_ILMB_WAIT),
        .LMB_Clk(Clk_1),
        .SYS_Rst(rst_clk_wiz_0_100M_bus_struct_reset));
  shell_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_0_100M_bus_struct_reset),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(rst_clk_wiz_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_Debug_SYS_Rst),
        .mb_reset(rst_clk_wiz_0_100M_mb_reset),
        .peripheral_aresetn(ap_rst_n_1),
        .slowest_sync_clk(Clk_1));
endmodule

module mem_interface_imp_1EJ895G
   (ARESETN,
    MEM_AXI_0_araddr,
    MEM_AXI_0_arburst,
    MEM_AXI_0_arcache,
    MEM_AXI_0_arid,
    MEM_AXI_0_arlen,
    MEM_AXI_0_arlock,
    MEM_AXI_0_arprot,
    MEM_AXI_0_arqos,
    MEM_AXI_0_arready,
    MEM_AXI_0_arregion,
    MEM_AXI_0_arsize,
    MEM_AXI_0_arvalid,
    MEM_AXI_0_awaddr,
    MEM_AXI_0_awburst,
    MEM_AXI_0_awcache,
    MEM_AXI_0_awid,
    MEM_AXI_0_awlen,
    MEM_AXI_0_awlock,
    MEM_AXI_0_awprot,
    MEM_AXI_0_awqos,
    MEM_AXI_0_awready,
    MEM_AXI_0_awregion,
    MEM_AXI_0_awsize,
    MEM_AXI_0_awvalid,
    MEM_AXI_0_bid,
    MEM_AXI_0_bready,
    MEM_AXI_0_bresp,
    MEM_AXI_0_bvalid,
    MEM_AXI_0_rdata,
    MEM_AXI_0_rid,
    MEM_AXI_0_rlast,
    MEM_AXI_0_rready,
    MEM_AXI_0_rresp,
    MEM_AXI_0_rvalid,
    MEM_AXI_0_wdata,
    MEM_AXI_0_wlast,
    MEM_AXI_0_wready,
    MEM_AXI_0_wstrb,
    MEM_AXI_0_wvalid,
    MEM_AXI_1_araddr,
    MEM_AXI_1_arburst,
    MEM_AXI_1_arcache,
    MEM_AXI_1_arid,
    MEM_AXI_1_arlen,
    MEM_AXI_1_arlock,
    MEM_AXI_1_arprot,
    MEM_AXI_1_arqos,
    MEM_AXI_1_arready,
    MEM_AXI_1_arregion,
    MEM_AXI_1_arsize,
    MEM_AXI_1_arvalid,
    MEM_AXI_1_awaddr,
    MEM_AXI_1_awburst,
    MEM_AXI_1_awcache,
    MEM_AXI_1_awid,
    MEM_AXI_1_awlen,
    MEM_AXI_1_awlock,
    MEM_AXI_1_awprot,
    MEM_AXI_1_awqos,
    MEM_AXI_1_awready,
    MEM_AXI_1_awregion,
    MEM_AXI_1_awsize,
    MEM_AXI_1_awvalid,
    MEM_AXI_1_bid,
    MEM_AXI_1_bready,
    MEM_AXI_1_bresp,
    MEM_AXI_1_bvalid,
    MEM_AXI_1_rdata,
    MEM_AXI_1_rid,
    MEM_AXI_1_rlast,
    MEM_AXI_1_rready,
    MEM_AXI_1_rresp,
    MEM_AXI_1_rvalid,
    MEM_AXI_1_wdata,
    MEM_AXI_1_wlast,
    MEM_AXI_1_wready,
    MEM_AXI_1_wstrb,
    MEM_AXI_1_wvalid,
    PCIE_ACLK,
    PCIE_AXI_araddr,
    PCIE_AXI_arburst,
    PCIE_AXI_arcache,
    PCIE_AXI_arid,
    PCIE_AXI_arlen,
    PCIE_AXI_arlock,
    PCIE_AXI_arprot,
    PCIE_AXI_arready,
    PCIE_AXI_arsize,
    PCIE_AXI_arvalid,
    PCIE_AXI_awaddr,
    PCIE_AXI_awburst,
    PCIE_AXI_awcache,
    PCIE_AXI_awid,
    PCIE_AXI_awlen,
    PCIE_AXI_awlock,
    PCIE_AXI_awprot,
    PCIE_AXI_awready,
    PCIE_AXI_awsize,
    PCIE_AXI_awvalid,
    PCIE_AXI_bid,
    PCIE_AXI_bready,
    PCIE_AXI_bresp,
    PCIE_AXI_bvalid,
    PCIE_AXI_rdata,
    PCIE_AXI_rid,
    PCIE_AXI_rlast,
    PCIE_AXI_rready,
    PCIE_AXI_rresp,
    PCIE_AXI_rvalid,
    PCIE_AXI_wdata,
    PCIE_AXI_wlast,
    PCIE_AXI_wready,
    PCIE_AXI_wstrb,
    PCIE_AXI_wvalid,
    S_ARESETN,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_clk_n,
    c0_sys_clk_clk_p,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dm_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_reset_n,
    c1_sys_clk_clk_n,
    c1_sys_clk_clk_p,
    clk156_25,
    sys_rst);
  output [0:0]ARESETN;
  input [31:0]MEM_AXI_0_araddr;
  input [1:0]MEM_AXI_0_arburst;
  input [3:0]MEM_AXI_0_arcache;
  input [0:0]MEM_AXI_0_arid;
  input [7:0]MEM_AXI_0_arlen;
  input [0:0]MEM_AXI_0_arlock;
  input [2:0]MEM_AXI_0_arprot;
  input [3:0]MEM_AXI_0_arqos;
  output MEM_AXI_0_arready;
  input [3:0]MEM_AXI_0_arregion;
  input [2:0]MEM_AXI_0_arsize;
  input MEM_AXI_0_arvalid;
  input [31:0]MEM_AXI_0_awaddr;
  input [1:0]MEM_AXI_0_awburst;
  input [3:0]MEM_AXI_0_awcache;
  input [0:0]MEM_AXI_0_awid;
  input [7:0]MEM_AXI_0_awlen;
  input [0:0]MEM_AXI_0_awlock;
  input [2:0]MEM_AXI_0_awprot;
  input [3:0]MEM_AXI_0_awqos;
  output MEM_AXI_0_awready;
  input [3:0]MEM_AXI_0_awregion;
  input [2:0]MEM_AXI_0_awsize;
  input MEM_AXI_0_awvalid;
  output [0:0]MEM_AXI_0_bid;
  input MEM_AXI_0_bready;
  output [1:0]MEM_AXI_0_bresp;
  output MEM_AXI_0_bvalid;
  output [511:0]MEM_AXI_0_rdata;
  output [0:0]MEM_AXI_0_rid;
  output MEM_AXI_0_rlast;
  input MEM_AXI_0_rready;
  output [1:0]MEM_AXI_0_rresp;
  output MEM_AXI_0_rvalid;
  input [511:0]MEM_AXI_0_wdata;
  input MEM_AXI_0_wlast;
  output MEM_AXI_0_wready;
  input [63:0]MEM_AXI_0_wstrb;
  input MEM_AXI_0_wvalid;
  input [31:0]MEM_AXI_1_araddr;
  input [1:0]MEM_AXI_1_arburst;
  input [3:0]MEM_AXI_1_arcache;
  input [0:0]MEM_AXI_1_arid;
  input [7:0]MEM_AXI_1_arlen;
  input [0:0]MEM_AXI_1_arlock;
  input [2:0]MEM_AXI_1_arprot;
  input [3:0]MEM_AXI_1_arqos;
  output MEM_AXI_1_arready;
  input [3:0]MEM_AXI_1_arregion;
  input [2:0]MEM_AXI_1_arsize;
  input MEM_AXI_1_arvalid;
  input [31:0]MEM_AXI_1_awaddr;
  input [1:0]MEM_AXI_1_awburst;
  input [3:0]MEM_AXI_1_awcache;
  input [0:0]MEM_AXI_1_awid;
  input [7:0]MEM_AXI_1_awlen;
  input [0:0]MEM_AXI_1_awlock;
  input [2:0]MEM_AXI_1_awprot;
  input [3:0]MEM_AXI_1_awqos;
  output MEM_AXI_1_awready;
  input [3:0]MEM_AXI_1_awregion;
  input [2:0]MEM_AXI_1_awsize;
  input MEM_AXI_1_awvalid;
  output [0:0]MEM_AXI_1_bid;
  input MEM_AXI_1_bready;
  output [1:0]MEM_AXI_1_bresp;
  output MEM_AXI_1_bvalid;
  output [511:0]MEM_AXI_1_rdata;
  output [0:0]MEM_AXI_1_rid;
  output MEM_AXI_1_rlast;
  input MEM_AXI_1_rready;
  output [1:0]MEM_AXI_1_rresp;
  output MEM_AXI_1_rvalid;
  input [511:0]MEM_AXI_1_wdata;
  input MEM_AXI_1_wlast;
  output MEM_AXI_1_wready;
  input [63:0]MEM_AXI_1_wstrb;
  input MEM_AXI_1_wvalid;
  input PCIE_ACLK;
  input [63:0]PCIE_AXI_araddr;
  input [1:0]PCIE_AXI_arburst;
  input [3:0]PCIE_AXI_arcache;
  input [3:0]PCIE_AXI_arid;
  input [7:0]PCIE_AXI_arlen;
  input [0:0]PCIE_AXI_arlock;
  input [2:0]PCIE_AXI_arprot;
  output PCIE_AXI_arready;
  input [2:0]PCIE_AXI_arsize;
  input PCIE_AXI_arvalid;
  input [63:0]PCIE_AXI_awaddr;
  input [1:0]PCIE_AXI_awburst;
  input [3:0]PCIE_AXI_awcache;
  input [3:0]PCIE_AXI_awid;
  input [7:0]PCIE_AXI_awlen;
  input [0:0]PCIE_AXI_awlock;
  input [2:0]PCIE_AXI_awprot;
  output PCIE_AXI_awready;
  input [2:0]PCIE_AXI_awsize;
  input PCIE_AXI_awvalid;
  output [3:0]PCIE_AXI_bid;
  input PCIE_AXI_bready;
  output [1:0]PCIE_AXI_bresp;
  output PCIE_AXI_bvalid;
  output [255:0]PCIE_AXI_rdata;
  output [3:0]PCIE_AXI_rid;
  output PCIE_AXI_rlast;
  input PCIE_AXI_rready;
  output [1:0]PCIE_AXI_rresp;
  output PCIE_AXI_rvalid;
  input [255:0]PCIE_AXI_wdata;
  input PCIE_AXI_wlast;
  output PCIE_AXI_wready;
  input [31:0]PCIE_AXI_wstrb;
  input PCIE_AXI_wvalid;
  input S_ARESETN;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_clk_n;
  input c0_sys_clk_clk_p;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [1:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [7:0]c1_ddr4_dm_n;
  inout [63:0]c1_ddr4_dq;
  inout [7:0]c1_ddr4_dqs_c;
  inout [7:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_reset_n;
  input c1_sys_clk_clk_n;
  input c1_sys_clk_clk_p;
  input clk156_25;
  input [0:0]sys_rst;

  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [255:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [255:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [31:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [0:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [0:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [0:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [0:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [0:0]M00_ARESETN_1;
  wire [31:0]MEM_AXI_1_1_ARADDR;
  wire [1:0]MEM_AXI_1_1_ARBURST;
  wire [3:0]MEM_AXI_1_1_ARCACHE;
  wire [0:0]MEM_AXI_1_1_ARID;
  wire [7:0]MEM_AXI_1_1_ARLEN;
  wire [0:0]MEM_AXI_1_1_ARLOCK;
  wire [2:0]MEM_AXI_1_1_ARPROT;
  wire [3:0]MEM_AXI_1_1_ARQOS;
  wire MEM_AXI_1_1_ARREADY;
  wire [3:0]MEM_AXI_1_1_ARREGION;
  wire [2:0]MEM_AXI_1_1_ARSIZE;
  wire MEM_AXI_1_1_ARVALID;
  wire [31:0]MEM_AXI_1_1_AWADDR;
  wire [1:0]MEM_AXI_1_1_AWBURST;
  wire [3:0]MEM_AXI_1_1_AWCACHE;
  wire [0:0]MEM_AXI_1_1_AWID;
  wire [7:0]MEM_AXI_1_1_AWLEN;
  wire [0:0]MEM_AXI_1_1_AWLOCK;
  wire [2:0]MEM_AXI_1_1_AWPROT;
  wire [3:0]MEM_AXI_1_1_AWQOS;
  wire MEM_AXI_1_1_AWREADY;
  wire [3:0]MEM_AXI_1_1_AWREGION;
  wire [2:0]MEM_AXI_1_1_AWSIZE;
  wire MEM_AXI_1_1_AWVALID;
  wire [0:0]MEM_AXI_1_1_BID;
  wire MEM_AXI_1_1_BREADY;
  wire [1:0]MEM_AXI_1_1_BRESP;
  wire MEM_AXI_1_1_BVALID;
  wire [511:0]MEM_AXI_1_1_RDATA;
  wire [0:0]MEM_AXI_1_1_RID;
  wire MEM_AXI_1_1_RLAST;
  wire MEM_AXI_1_1_RREADY;
  wire [1:0]MEM_AXI_1_1_RRESP;
  wire MEM_AXI_1_1_RVALID;
  wire [511:0]MEM_AXI_1_1_WDATA;
  wire MEM_AXI_1_1_WLAST;
  wire MEM_AXI_1_1_WREADY;
  wire [63:0]MEM_AXI_1_1_WSTRB;
  wire MEM_AXI_1_1_WVALID;
  wire S00_ACLK_1;
  wire S01_ARESETN_1;
  wire c0_sys_clk_1_CLK_N;
  wire c0_sys_clk_1_CLK_P;
  wire c1_sys_clk_1_CLK_N;
  wire c1_sys_clk_1_CLK_P;
  wire [63:0]ddr0_interconnect_M00_ARADDR;
  wire [1:0]ddr0_interconnect_M00_ARBURST;
  wire [3:0]ddr0_interconnect_M00_ARCACHE;
  wire [1:0]ddr0_interconnect_M00_ARID;
  wire [7:0]ddr0_interconnect_M00_ARLEN;
  wire [0:0]ddr0_interconnect_M00_ARLOCK;
  wire [2:0]ddr0_interconnect_M00_ARPROT;
  wire [3:0]ddr0_interconnect_M00_ARQOS;
  wire ddr0_interconnect_M00_ARREADY;
  wire [2:0]ddr0_interconnect_M00_ARSIZE;
  wire [0:0]ddr0_interconnect_M00_ARVALID;
  wire [63:0]ddr0_interconnect_M00_AWADDR;
  wire [1:0]ddr0_interconnect_M00_AWBURST;
  wire [3:0]ddr0_interconnect_M00_AWCACHE;
  wire [1:0]ddr0_interconnect_M00_AWID;
  wire [7:0]ddr0_interconnect_M00_AWLEN;
  wire [0:0]ddr0_interconnect_M00_AWLOCK;
  wire [2:0]ddr0_interconnect_M00_AWPROT;
  wire [3:0]ddr0_interconnect_M00_AWQOS;
  wire ddr0_interconnect_M00_AWREADY;
  wire [2:0]ddr0_interconnect_M00_AWSIZE;
  wire [0:0]ddr0_interconnect_M00_AWVALID;
  wire [1:0]ddr0_interconnect_M00_BID;
  wire [0:0]ddr0_interconnect_M00_BREADY;
  wire [1:0]ddr0_interconnect_M00_BRESP;
  wire ddr0_interconnect_M00_BVALID;
  wire [511:0]ddr0_interconnect_M00_RDATA;
  wire [1:0]ddr0_interconnect_M00_RID;
  wire ddr0_interconnect_M00_RLAST;
  wire [0:0]ddr0_interconnect_M00_RREADY;
  wire [1:0]ddr0_interconnect_M00_RRESP;
  wire ddr0_interconnect_M00_RVALID;
  wire [511:0]ddr0_interconnect_M00_WDATA;
  wire [0:0]ddr0_interconnect_M00_WLAST;
  wire ddr0_interconnect_M00_WREADY;
  wire [63:0]ddr0_interconnect_M00_WSTRB;
  wire [0:0]ddr0_interconnect_M00_WVALID;
  wire [31:0]ddr1_interconnect_M00_ARADDR;
  wire [1:0]ddr1_interconnect_M00_ARBURST;
  wire [3:0]ddr1_interconnect_M00_ARCACHE;
  wire [0:0]ddr1_interconnect_M00_ARID;
  wire [7:0]ddr1_interconnect_M00_ARLEN;
  wire [0:0]ddr1_interconnect_M00_ARLOCK;
  wire [2:0]ddr1_interconnect_M00_ARPROT;
  wire [3:0]ddr1_interconnect_M00_ARQOS;
  wire ddr1_interconnect_M00_ARREADY;
  wire [2:0]ddr1_interconnect_M00_ARSIZE;
  wire ddr1_interconnect_M00_ARVALID;
  wire [31:0]ddr1_interconnect_M00_AWADDR;
  wire [1:0]ddr1_interconnect_M00_AWBURST;
  wire [3:0]ddr1_interconnect_M00_AWCACHE;
  wire [0:0]ddr1_interconnect_M00_AWID;
  wire [7:0]ddr1_interconnect_M00_AWLEN;
  wire [0:0]ddr1_interconnect_M00_AWLOCK;
  wire [2:0]ddr1_interconnect_M00_AWPROT;
  wire [3:0]ddr1_interconnect_M00_AWQOS;
  wire ddr1_interconnect_M00_AWREADY;
  wire [2:0]ddr1_interconnect_M00_AWSIZE;
  wire ddr1_interconnect_M00_AWVALID;
  wire [0:0]ddr1_interconnect_M00_BID;
  wire ddr1_interconnect_M00_BREADY;
  wire [1:0]ddr1_interconnect_M00_BRESP;
  wire ddr1_interconnect_M00_BVALID;
  wire [511:0]ddr1_interconnect_M00_RDATA;
  wire [0:0]ddr1_interconnect_M00_RID;
  wire ddr1_interconnect_M00_RLAST;
  wire ddr1_interconnect_M00_RREADY;
  wire [1:0]ddr1_interconnect_M00_RRESP;
  wire ddr1_interconnect_M00_RVALID;
  wire [511:0]ddr1_interconnect_M00_WDATA;
  wire ddr1_interconnect_M00_WLAST;
  wire ddr1_interconnect_M00_WREADY;
  wire [63:0]ddr1_interconnect_M00_WSTRB;
  wire ddr1_interconnect_M00_WVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire [0:0]ddr4_0_c0_init_calib_complete;
  wire ddr4_0_c0_init_calib_complete1;
  wire ddr4_1_C0_DDR4_ACT_N;
  wire [16:0]ddr4_1_C0_DDR4_ADR;
  wire [1:0]ddr4_1_C0_DDR4_BA;
  wire [1:0]ddr4_1_C0_DDR4_BG;
  wire [0:0]ddr4_1_C0_DDR4_CKE;
  wire [0:0]ddr4_1_C0_DDR4_CK_C;
  wire [0:0]ddr4_1_C0_DDR4_CK_T;
  wire [0:0]ddr4_1_C0_DDR4_CS_N;
  wire [7:0]ddr4_1_C0_DDR4_DM_N;
  wire [63:0]ddr4_1_C0_DDR4_DQ;
  wire [7:0]ddr4_1_C0_DDR4_DQS_C;
  wire [7:0]ddr4_1_C0_DDR4_DQS_T;
  wire [0:0]ddr4_1_C0_DDR4_ODT;
  wire ddr4_1_C0_DDR4_RESET_N;
  wire ddr4_1_c0_ddr4_ui_clk;
  wire ddr4_1_c0_ddr4_ui_clk1;
  wire ddr4_1_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_1_c0_init_calib_complete;
  wire m_axi_mm2s_aclk_1;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]sys_rst_1;
  wire [0:0]util_vector_logic_4_Res;

  assign ARESETN[0] = ddr4_0_c0_init_calib_complete;
  assign Conn1_ARADDR = PCIE_AXI_araddr[63:0];
  assign Conn1_ARBURST = PCIE_AXI_arburst[1:0];
  assign Conn1_ARCACHE = PCIE_AXI_arcache[3:0];
  assign Conn1_ARID = PCIE_AXI_arid[3:0];
  assign Conn1_ARLEN = PCIE_AXI_arlen[7:0];
  assign Conn1_ARLOCK = PCIE_AXI_arlock[0];
  assign Conn1_ARPROT = PCIE_AXI_arprot[2:0];
  assign Conn1_ARSIZE = PCIE_AXI_arsize[2:0];
  assign Conn1_ARVALID = PCIE_AXI_arvalid;
  assign Conn1_AWADDR = PCIE_AXI_awaddr[63:0];
  assign Conn1_AWBURST = PCIE_AXI_awburst[1:0];
  assign Conn1_AWCACHE = PCIE_AXI_awcache[3:0];
  assign Conn1_AWID = PCIE_AXI_awid[3:0];
  assign Conn1_AWLEN = PCIE_AXI_awlen[7:0];
  assign Conn1_AWLOCK = PCIE_AXI_awlock[0];
  assign Conn1_AWPROT = PCIE_AXI_awprot[2:0];
  assign Conn1_AWSIZE = PCIE_AXI_awsize[2:0];
  assign Conn1_AWVALID = PCIE_AXI_awvalid;
  assign Conn1_BREADY = PCIE_AXI_bready;
  assign Conn1_RREADY = PCIE_AXI_rready;
  assign Conn1_WDATA = PCIE_AXI_wdata[255:0];
  assign Conn1_WLAST = PCIE_AXI_wlast;
  assign Conn1_WSTRB = PCIE_AXI_wstrb[31:0];
  assign Conn1_WVALID = PCIE_AXI_wvalid;
  assign Conn2_ARADDR = MEM_AXI_0_araddr[31:0];
  assign Conn2_ARBURST = MEM_AXI_0_arburst[1:0];
  assign Conn2_ARCACHE = MEM_AXI_0_arcache[3:0];
  assign Conn2_ARID = MEM_AXI_0_arid[0];
  assign Conn2_ARLEN = MEM_AXI_0_arlen[7:0];
  assign Conn2_ARLOCK = MEM_AXI_0_arlock[0];
  assign Conn2_ARPROT = MEM_AXI_0_arprot[2:0];
  assign Conn2_ARQOS = MEM_AXI_0_arqos[3:0];
  assign Conn2_ARREGION = MEM_AXI_0_arregion[3:0];
  assign Conn2_ARSIZE = MEM_AXI_0_arsize[2:0];
  assign Conn2_ARVALID = MEM_AXI_0_arvalid;
  assign Conn2_AWADDR = MEM_AXI_0_awaddr[31:0];
  assign Conn2_AWBURST = MEM_AXI_0_awburst[1:0];
  assign Conn2_AWCACHE = MEM_AXI_0_awcache[3:0];
  assign Conn2_AWID = MEM_AXI_0_awid[0];
  assign Conn2_AWLEN = MEM_AXI_0_awlen[7:0];
  assign Conn2_AWLOCK = MEM_AXI_0_awlock[0];
  assign Conn2_AWPROT = MEM_AXI_0_awprot[2:0];
  assign Conn2_AWQOS = MEM_AXI_0_awqos[3:0];
  assign Conn2_AWREGION = MEM_AXI_0_awregion[3:0];
  assign Conn2_AWSIZE = MEM_AXI_0_awsize[2:0];
  assign Conn2_AWVALID = MEM_AXI_0_awvalid;
  assign Conn2_BREADY = MEM_AXI_0_bready;
  assign Conn2_RREADY = MEM_AXI_0_rready;
  assign Conn2_WDATA = MEM_AXI_0_wdata[511:0];
  assign Conn2_WLAST = MEM_AXI_0_wlast;
  assign Conn2_WSTRB = MEM_AXI_0_wstrb[63:0];
  assign Conn2_WVALID = MEM_AXI_0_wvalid;
  assign MEM_AXI_0_arready = Conn2_ARREADY;
  assign MEM_AXI_0_awready = Conn2_AWREADY;
  assign MEM_AXI_0_bid[0] = Conn2_BID;
  assign MEM_AXI_0_bresp[1:0] = Conn2_BRESP;
  assign MEM_AXI_0_bvalid = Conn2_BVALID;
  assign MEM_AXI_0_rdata[511:0] = Conn2_RDATA;
  assign MEM_AXI_0_rid[0] = Conn2_RID;
  assign MEM_AXI_0_rlast = Conn2_RLAST;
  assign MEM_AXI_0_rresp[1:0] = Conn2_RRESP;
  assign MEM_AXI_0_rvalid = Conn2_RVALID;
  assign MEM_AXI_0_wready = Conn2_WREADY;
  assign MEM_AXI_1_1_ARADDR = MEM_AXI_1_araddr[31:0];
  assign MEM_AXI_1_1_ARBURST = MEM_AXI_1_arburst[1:0];
  assign MEM_AXI_1_1_ARCACHE = MEM_AXI_1_arcache[3:0];
  assign MEM_AXI_1_1_ARID = MEM_AXI_1_arid[0];
  assign MEM_AXI_1_1_ARLEN = MEM_AXI_1_arlen[7:0];
  assign MEM_AXI_1_1_ARLOCK = MEM_AXI_1_arlock[0];
  assign MEM_AXI_1_1_ARPROT = MEM_AXI_1_arprot[2:0];
  assign MEM_AXI_1_1_ARQOS = MEM_AXI_1_arqos[3:0];
  assign MEM_AXI_1_1_ARREGION = MEM_AXI_1_arregion[3:0];
  assign MEM_AXI_1_1_ARSIZE = MEM_AXI_1_arsize[2:0];
  assign MEM_AXI_1_1_ARVALID = MEM_AXI_1_arvalid;
  assign MEM_AXI_1_1_AWADDR = MEM_AXI_1_awaddr[31:0];
  assign MEM_AXI_1_1_AWBURST = MEM_AXI_1_awburst[1:0];
  assign MEM_AXI_1_1_AWCACHE = MEM_AXI_1_awcache[3:0];
  assign MEM_AXI_1_1_AWID = MEM_AXI_1_awid[0];
  assign MEM_AXI_1_1_AWLEN = MEM_AXI_1_awlen[7:0];
  assign MEM_AXI_1_1_AWLOCK = MEM_AXI_1_awlock[0];
  assign MEM_AXI_1_1_AWPROT = MEM_AXI_1_awprot[2:0];
  assign MEM_AXI_1_1_AWQOS = MEM_AXI_1_awqos[3:0];
  assign MEM_AXI_1_1_AWREGION = MEM_AXI_1_awregion[3:0];
  assign MEM_AXI_1_1_AWSIZE = MEM_AXI_1_awsize[2:0];
  assign MEM_AXI_1_1_AWVALID = MEM_AXI_1_awvalid;
  assign MEM_AXI_1_1_BREADY = MEM_AXI_1_bready;
  assign MEM_AXI_1_1_RREADY = MEM_AXI_1_rready;
  assign MEM_AXI_1_1_WDATA = MEM_AXI_1_wdata[511:0];
  assign MEM_AXI_1_1_WLAST = MEM_AXI_1_wlast;
  assign MEM_AXI_1_1_WSTRB = MEM_AXI_1_wstrb[63:0];
  assign MEM_AXI_1_1_WVALID = MEM_AXI_1_wvalid;
  assign MEM_AXI_1_arready = MEM_AXI_1_1_ARREADY;
  assign MEM_AXI_1_awready = MEM_AXI_1_1_AWREADY;
  assign MEM_AXI_1_bid[0] = MEM_AXI_1_1_BID;
  assign MEM_AXI_1_bresp[1:0] = MEM_AXI_1_1_BRESP;
  assign MEM_AXI_1_bvalid = MEM_AXI_1_1_BVALID;
  assign MEM_AXI_1_rdata[511:0] = MEM_AXI_1_1_RDATA;
  assign MEM_AXI_1_rid[0] = MEM_AXI_1_1_RID;
  assign MEM_AXI_1_rlast = MEM_AXI_1_1_RLAST;
  assign MEM_AXI_1_rresp[1:0] = MEM_AXI_1_1_RRESP;
  assign MEM_AXI_1_rvalid = MEM_AXI_1_1_RVALID;
  assign MEM_AXI_1_wready = MEM_AXI_1_1_WREADY;
  assign PCIE_AXI_arready = Conn1_ARREADY;
  assign PCIE_AXI_awready = Conn1_AWREADY;
  assign PCIE_AXI_bid[3:0] = Conn1_BID;
  assign PCIE_AXI_bresp[1:0] = Conn1_BRESP;
  assign PCIE_AXI_bvalid = Conn1_BVALID;
  assign PCIE_AXI_rdata[255:0] = Conn1_RDATA;
  assign PCIE_AXI_rid[3:0] = Conn1_RID;
  assign PCIE_AXI_rlast = Conn1_RLAST;
  assign PCIE_AXI_rresp[1:0] = Conn1_RRESP;
  assign PCIE_AXI_rvalid = Conn1_RVALID;
  assign PCIE_AXI_wready = Conn1_WREADY;
  assign S00_ACLK_1 = PCIE_ACLK;
  assign S01_ARESETN_1 = S_ARESETN;
  assign c0_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign c0_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign c0_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign c0_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign c0_ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign c0_ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign c0_ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign c0_ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign c0_ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign c0_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign c0_sys_clk_1_CLK_N = c0_sys_clk_clk_n;
  assign c0_sys_clk_1_CLK_P = c0_sys_clk_clk_p;
  assign c1_ddr4_act_n = ddr4_1_C0_DDR4_ACT_N;
  assign c1_ddr4_adr[16:0] = ddr4_1_C0_DDR4_ADR;
  assign c1_ddr4_ba[1:0] = ddr4_1_C0_DDR4_BA;
  assign c1_ddr4_bg[1:0] = ddr4_1_C0_DDR4_BG;
  assign c1_ddr4_ck_c[0] = ddr4_1_C0_DDR4_CK_C;
  assign c1_ddr4_ck_t[0] = ddr4_1_C0_DDR4_CK_T;
  assign c1_ddr4_cke[0] = ddr4_1_C0_DDR4_CKE;
  assign c1_ddr4_cs_n[0] = ddr4_1_C0_DDR4_CS_N;
  assign c1_ddr4_odt[0] = ddr4_1_C0_DDR4_ODT;
  assign c1_ddr4_reset_n = ddr4_1_C0_DDR4_RESET_N;
  assign c1_sys_clk_1_CLK_N = c1_sys_clk_clk_n;
  assign c1_sys_clk_1_CLK_P = c1_sys_clk_clk_p;
  assign m_axi_mm2s_aclk_1 = clk156_25;
  assign sys_rst_1 = sys_rst[0];
  shell_ddr0_interconnect_0 ddr0_interconnect
       (.ACLK(ddr4_1_c0_ddr4_ui_clk),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(ddr4_1_c0_ddr4_ui_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(ddr0_interconnect_M00_ARADDR),
        .M00_AXI_arburst(ddr0_interconnect_M00_ARBURST),
        .M00_AXI_arcache(ddr0_interconnect_M00_ARCACHE),
        .M00_AXI_arid(ddr0_interconnect_M00_ARID),
        .M00_AXI_arlen(ddr0_interconnect_M00_ARLEN),
        .M00_AXI_arlock(ddr0_interconnect_M00_ARLOCK),
        .M00_AXI_arprot(ddr0_interconnect_M00_ARPROT),
        .M00_AXI_arqos(ddr0_interconnect_M00_ARQOS),
        .M00_AXI_arready(ddr0_interconnect_M00_ARREADY),
        .M00_AXI_arsize(ddr0_interconnect_M00_ARSIZE),
        .M00_AXI_arvalid(ddr0_interconnect_M00_ARVALID),
        .M00_AXI_awaddr(ddr0_interconnect_M00_AWADDR),
        .M00_AXI_awburst(ddr0_interconnect_M00_AWBURST),
        .M00_AXI_awcache(ddr0_interconnect_M00_AWCACHE),
        .M00_AXI_awid(ddr0_interconnect_M00_AWID),
        .M00_AXI_awlen(ddr0_interconnect_M00_AWLEN),
        .M00_AXI_awlock(ddr0_interconnect_M00_AWLOCK),
        .M00_AXI_awprot(ddr0_interconnect_M00_AWPROT),
        .M00_AXI_awqos(ddr0_interconnect_M00_AWQOS),
        .M00_AXI_awready(ddr0_interconnect_M00_AWREADY),
        .M00_AXI_awsize(ddr0_interconnect_M00_AWSIZE),
        .M00_AXI_awvalid(ddr0_interconnect_M00_AWVALID),
        .M00_AXI_bid(ddr0_interconnect_M00_BID),
        .M00_AXI_bready(ddr0_interconnect_M00_BREADY),
        .M00_AXI_bresp(ddr0_interconnect_M00_BRESP),
        .M00_AXI_bvalid(ddr0_interconnect_M00_BVALID),
        .M00_AXI_rdata(ddr0_interconnect_M00_RDATA),
        .M00_AXI_rid(ddr0_interconnect_M00_RID),
        .M00_AXI_rlast(ddr0_interconnect_M00_RLAST),
        .M00_AXI_rready(ddr0_interconnect_M00_RREADY),
        .M00_AXI_rresp(ddr0_interconnect_M00_RRESP),
        .M00_AXI_rvalid(ddr0_interconnect_M00_RVALID),
        .M00_AXI_wdata(ddr0_interconnect_M00_WDATA),
        .M00_AXI_wlast(ddr0_interconnect_M00_WLAST),
        .M00_AXI_wready(ddr0_interconnect_M00_WREADY),
        .M00_AXI_wstrb(ddr0_interconnect_M00_WSTRB),
        .M00_AXI_wvalid(ddr0_interconnect_M00_WVALID),
        .S00_ACLK(m_axi_mm2s_aclk_1),
        .S00_ARESETN(S01_ARESETN_1),
        .S00_AXI_araddr(Conn2_ARADDR),
        .S00_AXI_arburst(Conn2_ARBURST),
        .S00_AXI_arcache(Conn2_ARCACHE),
        .S00_AXI_arid(Conn2_ARID),
        .S00_AXI_arlen(Conn2_ARLEN),
        .S00_AXI_arlock(Conn2_ARLOCK),
        .S00_AXI_arprot(Conn2_ARPROT),
        .S00_AXI_arqos(Conn2_ARQOS),
        .S00_AXI_arready(Conn2_ARREADY),
        .S00_AXI_arregion(Conn2_ARREGION),
        .S00_AXI_arsize(Conn2_ARSIZE),
        .S00_AXI_arvalid(Conn2_ARVALID),
        .S00_AXI_awaddr(Conn2_AWADDR),
        .S00_AXI_awburst(Conn2_AWBURST),
        .S00_AXI_awcache(Conn2_AWCACHE),
        .S00_AXI_awid(Conn2_AWID),
        .S00_AXI_awlen(Conn2_AWLEN),
        .S00_AXI_awlock(Conn2_AWLOCK),
        .S00_AXI_awprot(Conn2_AWPROT),
        .S00_AXI_awqos(Conn2_AWQOS),
        .S00_AXI_awready(Conn2_AWREADY),
        .S00_AXI_awregion(Conn2_AWREGION),
        .S00_AXI_awsize(Conn2_AWSIZE),
        .S00_AXI_awvalid(Conn2_AWVALID),
        .S00_AXI_bid(Conn2_BID),
        .S00_AXI_bready(Conn2_BREADY),
        .S00_AXI_bresp(Conn2_BRESP),
        .S00_AXI_bvalid(Conn2_BVALID),
        .S00_AXI_rdata(Conn2_RDATA),
        .S00_AXI_rid(Conn2_RID),
        .S00_AXI_rlast(Conn2_RLAST),
        .S00_AXI_rready(Conn2_RREADY),
        .S00_AXI_rresp(Conn2_RRESP),
        .S00_AXI_rvalid(Conn2_RVALID),
        .S00_AXI_wdata(Conn2_WDATA),
        .S00_AXI_wlast(Conn2_WLAST),
        .S00_AXI_wready(Conn2_WREADY),
        .S00_AXI_wstrb(Conn2_WSTRB),
        .S00_AXI_wvalid(Conn2_WVALID),
        .S01_ACLK(S00_ACLK_1),
        .S01_ARESETN(S01_ARESETN_1),
        .S01_AXI_araddr(Conn1_ARADDR),
        .S01_AXI_arburst(Conn1_ARBURST),
        .S01_AXI_arcache(Conn1_ARCACHE),
        .S01_AXI_arid(Conn1_ARID),
        .S01_AXI_arlen(Conn1_ARLEN),
        .S01_AXI_arlock(Conn1_ARLOCK),
        .S01_AXI_arprot(Conn1_ARPROT),
        .S01_AXI_arready(Conn1_ARREADY),
        .S01_AXI_arsize(Conn1_ARSIZE),
        .S01_AXI_arvalid(Conn1_ARVALID),
        .S01_AXI_awaddr(Conn1_AWADDR),
        .S01_AXI_awburst(Conn1_AWBURST),
        .S01_AXI_awcache(Conn1_AWCACHE),
        .S01_AXI_awid(Conn1_AWID),
        .S01_AXI_awlen(Conn1_AWLEN),
        .S01_AXI_awlock(Conn1_AWLOCK),
        .S01_AXI_awprot(Conn1_AWPROT),
        .S01_AXI_awready(Conn1_AWREADY),
        .S01_AXI_awsize(Conn1_AWSIZE),
        .S01_AXI_awvalid(Conn1_AWVALID),
        .S01_AXI_bid(Conn1_BID),
        .S01_AXI_bready(Conn1_BREADY),
        .S01_AXI_bresp(Conn1_BRESP),
        .S01_AXI_bvalid(Conn1_BVALID),
        .S01_AXI_rdata(Conn1_RDATA),
        .S01_AXI_rid(Conn1_RID),
        .S01_AXI_rlast(Conn1_RLAST),
        .S01_AXI_rready(Conn1_RREADY),
        .S01_AXI_rresp(Conn1_RRESP),
        .S01_AXI_rvalid(Conn1_RVALID),
        .S01_AXI_wdata(Conn1_WDATA),
        .S01_AXI_wlast(Conn1_WLAST),
        .S01_AXI_wready(Conn1_WREADY),
        .S01_AXI_wstrb(Conn1_WSTRB),
        .S01_AXI_wvalid(Conn1_WVALID));
  shell_ddr1_interconnect_0 ddr1_interconnect
       (.ACLK(ddr4_1_c0_ddr4_ui_clk1),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(ddr4_1_c0_ddr4_ui_clk1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(ddr1_interconnect_M00_ARADDR),
        .M00_AXI_arburst(ddr1_interconnect_M00_ARBURST),
        .M00_AXI_arcache(ddr1_interconnect_M00_ARCACHE),
        .M00_AXI_arid(ddr1_interconnect_M00_ARID),
        .M00_AXI_arlen(ddr1_interconnect_M00_ARLEN),
        .M00_AXI_arlock(ddr1_interconnect_M00_ARLOCK),
        .M00_AXI_arprot(ddr1_interconnect_M00_ARPROT),
        .M00_AXI_arqos(ddr1_interconnect_M00_ARQOS),
        .M00_AXI_arready(ddr1_interconnect_M00_ARREADY),
        .M00_AXI_arsize(ddr1_interconnect_M00_ARSIZE),
        .M00_AXI_arvalid(ddr1_interconnect_M00_ARVALID),
        .M00_AXI_awaddr(ddr1_interconnect_M00_AWADDR),
        .M00_AXI_awburst(ddr1_interconnect_M00_AWBURST),
        .M00_AXI_awcache(ddr1_interconnect_M00_AWCACHE),
        .M00_AXI_awid(ddr1_interconnect_M00_AWID),
        .M00_AXI_awlen(ddr1_interconnect_M00_AWLEN),
        .M00_AXI_awlock(ddr1_interconnect_M00_AWLOCK),
        .M00_AXI_awprot(ddr1_interconnect_M00_AWPROT),
        .M00_AXI_awqos(ddr1_interconnect_M00_AWQOS),
        .M00_AXI_awready(ddr1_interconnect_M00_AWREADY),
        .M00_AXI_awsize(ddr1_interconnect_M00_AWSIZE),
        .M00_AXI_awvalid(ddr1_interconnect_M00_AWVALID),
        .M00_AXI_bid(ddr1_interconnect_M00_BID),
        .M00_AXI_bready(ddr1_interconnect_M00_BREADY),
        .M00_AXI_bresp(ddr1_interconnect_M00_BRESP),
        .M00_AXI_bvalid(ddr1_interconnect_M00_BVALID),
        .M00_AXI_rdata(ddr1_interconnect_M00_RDATA),
        .M00_AXI_rid(ddr1_interconnect_M00_RID),
        .M00_AXI_rlast(ddr1_interconnect_M00_RLAST),
        .M00_AXI_rready(ddr1_interconnect_M00_RREADY),
        .M00_AXI_rresp(ddr1_interconnect_M00_RRESP),
        .M00_AXI_rvalid(ddr1_interconnect_M00_RVALID),
        .M00_AXI_wdata(ddr1_interconnect_M00_WDATA),
        .M00_AXI_wlast(ddr1_interconnect_M00_WLAST),
        .M00_AXI_wready(ddr1_interconnect_M00_WREADY),
        .M00_AXI_wstrb(ddr1_interconnect_M00_WSTRB),
        .M00_AXI_wvalid(ddr1_interconnect_M00_WVALID),
        .S00_ACLK(m_axi_mm2s_aclk_1),
        .S00_ARESETN(S01_ARESETN_1),
        .S00_AXI_araddr(MEM_AXI_1_1_ARADDR),
        .S00_AXI_arburst(MEM_AXI_1_1_ARBURST),
        .S00_AXI_arcache(MEM_AXI_1_1_ARCACHE),
        .S00_AXI_arid(MEM_AXI_1_1_ARID),
        .S00_AXI_arlen(MEM_AXI_1_1_ARLEN),
        .S00_AXI_arlock(MEM_AXI_1_1_ARLOCK),
        .S00_AXI_arprot(MEM_AXI_1_1_ARPROT),
        .S00_AXI_arqos(MEM_AXI_1_1_ARQOS),
        .S00_AXI_arready(MEM_AXI_1_1_ARREADY),
        .S00_AXI_arregion(MEM_AXI_1_1_ARREGION),
        .S00_AXI_arsize(MEM_AXI_1_1_ARSIZE),
        .S00_AXI_arvalid(MEM_AXI_1_1_ARVALID),
        .S00_AXI_awaddr(MEM_AXI_1_1_AWADDR),
        .S00_AXI_awburst(MEM_AXI_1_1_AWBURST),
        .S00_AXI_awcache(MEM_AXI_1_1_AWCACHE),
        .S00_AXI_awid(MEM_AXI_1_1_AWID),
        .S00_AXI_awlen(MEM_AXI_1_1_AWLEN),
        .S00_AXI_awlock(MEM_AXI_1_1_AWLOCK),
        .S00_AXI_awprot(MEM_AXI_1_1_AWPROT),
        .S00_AXI_awqos(MEM_AXI_1_1_AWQOS),
        .S00_AXI_awready(MEM_AXI_1_1_AWREADY),
        .S00_AXI_awregion(MEM_AXI_1_1_AWREGION),
        .S00_AXI_awsize(MEM_AXI_1_1_AWSIZE),
        .S00_AXI_awvalid(MEM_AXI_1_1_AWVALID),
        .S00_AXI_bid(MEM_AXI_1_1_BID),
        .S00_AXI_bready(MEM_AXI_1_1_BREADY),
        .S00_AXI_bresp(MEM_AXI_1_1_BRESP),
        .S00_AXI_bvalid(MEM_AXI_1_1_BVALID),
        .S00_AXI_rdata(MEM_AXI_1_1_RDATA),
        .S00_AXI_rid(MEM_AXI_1_1_RID),
        .S00_AXI_rlast(MEM_AXI_1_1_RLAST),
        .S00_AXI_rready(MEM_AXI_1_1_RREADY),
        .S00_AXI_rresp(MEM_AXI_1_1_RRESP),
        .S00_AXI_rvalid(MEM_AXI_1_1_RVALID),
        .S00_AXI_wdata(MEM_AXI_1_1_WDATA),
        .S00_AXI_wlast(MEM_AXI_1_1_WLAST),
        .S00_AXI_wready(MEM_AXI_1_1_WREADY),
        .S00_AXI_wstrb(MEM_AXI_1_1_WSTRB),
        .S00_AXI_wvalid(MEM_AXI_1_1_WVALID));
  shell_ddr4_0_0 ddr4_0
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(M00_ARESETN_1),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(c0_ddr4_dm_n[7:0]),
        .c0_ddr4_dq(c0_ddr4_dq[63:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(ddr0_interconnect_M00_ARADDR[32:0]),
        .c0_ddr4_s_axi_arburst(ddr0_interconnect_M00_ARBURST),
        .c0_ddr4_s_axi_arcache(ddr0_interconnect_M00_ARCACHE),
        .c0_ddr4_s_axi_arid(ddr0_interconnect_M00_ARID),
        .c0_ddr4_s_axi_arlen(ddr0_interconnect_M00_ARLEN),
        .c0_ddr4_s_axi_arlock(ddr0_interconnect_M00_ARLOCK),
        .c0_ddr4_s_axi_arprot(ddr0_interconnect_M00_ARPROT),
        .c0_ddr4_s_axi_arqos(ddr0_interconnect_M00_ARQOS),
        .c0_ddr4_s_axi_arready(ddr0_interconnect_M00_ARREADY),
        .c0_ddr4_s_axi_arsize(ddr0_interconnect_M00_ARSIZE),
        .c0_ddr4_s_axi_arvalid(ddr0_interconnect_M00_ARVALID),
        .c0_ddr4_s_axi_awaddr(ddr0_interconnect_M00_AWADDR[32:0]),
        .c0_ddr4_s_axi_awburst(ddr0_interconnect_M00_AWBURST),
        .c0_ddr4_s_axi_awcache(ddr0_interconnect_M00_AWCACHE),
        .c0_ddr4_s_axi_awid(ddr0_interconnect_M00_AWID),
        .c0_ddr4_s_axi_awlen(ddr0_interconnect_M00_AWLEN),
        .c0_ddr4_s_axi_awlock(ddr0_interconnect_M00_AWLOCK),
        .c0_ddr4_s_axi_awprot(ddr0_interconnect_M00_AWPROT),
        .c0_ddr4_s_axi_awqos(ddr0_interconnect_M00_AWQOS),
        .c0_ddr4_s_axi_awready(ddr0_interconnect_M00_AWREADY),
        .c0_ddr4_s_axi_awsize(ddr0_interconnect_M00_AWSIZE),
        .c0_ddr4_s_axi_awvalid(ddr0_interconnect_M00_AWVALID),
        .c0_ddr4_s_axi_bid(ddr0_interconnect_M00_BID),
        .c0_ddr4_s_axi_bready(ddr0_interconnect_M00_BREADY),
        .c0_ddr4_s_axi_bresp(ddr0_interconnect_M00_BRESP),
        .c0_ddr4_s_axi_bvalid(ddr0_interconnect_M00_BVALID),
        .c0_ddr4_s_axi_rdata(ddr0_interconnect_M00_RDATA),
        .c0_ddr4_s_axi_rid(ddr0_interconnect_M00_RID),
        .c0_ddr4_s_axi_rlast(ddr0_interconnect_M00_RLAST),
        .c0_ddr4_s_axi_rready(ddr0_interconnect_M00_RREADY),
        .c0_ddr4_s_axi_rresp(ddr0_interconnect_M00_RRESP),
        .c0_ddr4_s_axi_rvalid(ddr0_interconnect_M00_RVALID),
        .c0_ddr4_s_axi_wdata(ddr0_interconnect_M00_WDATA),
        .c0_ddr4_s_axi_wlast(ddr0_interconnect_M00_WLAST),
        .c0_ddr4_s_axi_wready(ddr0_interconnect_M00_WREADY),
        .c0_ddr4_s_axi_wstrb(ddr0_interconnect_M00_WSTRB),
        .c0_ddr4_s_axi_wvalid(ddr0_interconnect_M00_WVALID),
        .c0_ddr4_ui_clk(ddr4_1_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete1),
        .c0_sys_clk_n(c0_sys_clk_1_CLK_N),
        .c0_sys_clk_p(c0_sys_clk_1_CLK_P),
        .sys_rst(sys_rst_1));
  shell_ddr4_1_0 ddr4_1
       (.c0_ddr4_act_n(ddr4_1_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_1_C0_DDR4_ADR),
        .c0_ddr4_aresetn(M00_ARESETN_1),
        .c0_ddr4_ba(ddr4_1_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_1_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_1_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_1_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_1_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_1_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(c1_ddr4_dm_n[7:0]),
        .c0_ddr4_dq(c1_ddr4_dq[63:0]),
        .c0_ddr4_dqs_c(c1_ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(c1_ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_1_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_1_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr({1'b0,ddr1_interconnect_M00_ARADDR}),
        .c0_ddr4_s_axi_arburst(ddr1_interconnect_M00_ARBURST),
        .c0_ddr4_s_axi_arcache(ddr1_interconnect_M00_ARCACHE),
        .c0_ddr4_s_axi_arid(ddr1_interconnect_M00_ARID),
        .c0_ddr4_s_axi_arlen(ddr1_interconnect_M00_ARLEN),
        .c0_ddr4_s_axi_arlock(ddr1_interconnect_M00_ARLOCK),
        .c0_ddr4_s_axi_arprot(ddr1_interconnect_M00_ARPROT),
        .c0_ddr4_s_axi_arqos(ddr1_interconnect_M00_ARQOS),
        .c0_ddr4_s_axi_arready(ddr1_interconnect_M00_ARREADY),
        .c0_ddr4_s_axi_arsize(ddr1_interconnect_M00_ARSIZE),
        .c0_ddr4_s_axi_arvalid(ddr1_interconnect_M00_ARVALID),
        .c0_ddr4_s_axi_awaddr({1'b0,ddr1_interconnect_M00_AWADDR}),
        .c0_ddr4_s_axi_awburst(ddr1_interconnect_M00_AWBURST),
        .c0_ddr4_s_axi_awcache(ddr1_interconnect_M00_AWCACHE),
        .c0_ddr4_s_axi_awid(ddr1_interconnect_M00_AWID),
        .c0_ddr4_s_axi_awlen(ddr1_interconnect_M00_AWLEN),
        .c0_ddr4_s_axi_awlock(ddr1_interconnect_M00_AWLOCK),
        .c0_ddr4_s_axi_awprot(ddr1_interconnect_M00_AWPROT),
        .c0_ddr4_s_axi_awqos(ddr1_interconnect_M00_AWQOS),
        .c0_ddr4_s_axi_awready(ddr1_interconnect_M00_AWREADY),
        .c0_ddr4_s_axi_awsize(ddr1_interconnect_M00_AWSIZE),
        .c0_ddr4_s_axi_awvalid(ddr1_interconnect_M00_AWVALID),
        .c0_ddr4_s_axi_bid(ddr1_interconnect_M00_BID),
        .c0_ddr4_s_axi_bready(ddr1_interconnect_M00_BREADY),
        .c0_ddr4_s_axi_bresp(ddr1_interconnect_M00_BRESP),
        .c0_ddr4_s_axi_bvalid(ddr1_interconnect_M00_BVALID),
        .c0_ddr4_s_axi_rdata(ddr1_interconnect_M00_RDATA),
        .c0_ddr4_s_axi_rid(ddr1_interconnect_M00_RID),
        .c0_ddr4_s_axi_rlast(ddr1_interconnect_M00_RLAST),
        .c0_ddr4_s_axi_rready(ddr1_interconnect_M00_RREADY),
        .c0_ddr4_s_axi_rresp(ddr1_interconnect_M00_RRESP),
        .c0_ddr4_s_axi_rvalid(ddr1_interconnect_M00_RVALID),
        .c0_ddr4_s_axi_wdata(ddr1_interconnect_M00_WDATA),
        .c0_ddr4_s_axi_wlast(ddr1_interconnect_M00_WLAST),
        .c0_ddr4_s_axi_wready(ddr1_interconnect_M00_WREADY),
        .c0_ddr4_s_axi_wstrb(ddr1_interconnect_M00_WSTRB),
        .c0_ddr4_s_axi_wvalid(ddr1_interconnect_M00_WVALID),
        .c0_ddr4_ui_clk(ddr4_1_c0_ddr4_ui_clk1),
        .c0_ddr4_ui_clk_sync_rst(ddr4_1_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_1_c0_init_calib_complete),
        .c0_sys_clk_n(c1_sys_clk_1_CLK_N),
        .c0_sys_clk_p(c1_sys_clk_1_CLK_P),
        .sys_rst(sys_rst_1));
  shell_ddr_aresetn_0 ddr_aresetn
       (.Op1(ddr4_0_c0_init_calib_complete1),
        .Op2(ddr4_1_c0_init_calib_complete),
        .Res(ddr4_0_c0_init_calib_complete));
  shell_ddr_aux_reset_0 ddr_aux_reset
       (.Op1(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .Op2(ddr4_1_c0_ddr4_ui_clk_sync_rst),
        .Res(util_vector_logic_4_Res));
  shell_ddr_proc_sys_reset_0 ddr_proc_sys_reset
       (.aux_reset_in(util_vector_logic_4_Res),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_init_calib_complete),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_1),
        .slowest_sync_clk(ddr4_1_c0_ddr4_ui_clk));
endmodule

module microblaze_0_local_memory_imp_1HEYJGJ
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > shell mb_system/microblaze_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  shell_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  shell_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  shell_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  shell_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

module network_imp_10F7WL8
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    aresetn,
    clk_100,
    clk_156,
    network_reset_done,
    refclk_n,
    refclk_p,
    reset,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txp);
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [63:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input aresetn;
  input clk_100;
  output clk_156;
  output network_reset_done;
  input refclk_n;
  input refclk_p;
  input reset;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txp;

  wire [63:0]S_AXIS_1_TDATA;
  wire [7:0]S_AXIS_1_TKEEP;
  wire S_AXIS_1_TLAST;
  wire S_AXIS_1_TREADY;
  wire S_AXIS_1_TVALID;
  wire [63:0]axi_10g_ethernet_0_m_axis_rx_TDATA;
  wire [7:0]axi_10g_ethernet_0_m_axis_rx_TKEEP;
  wire axi_10g_ethernet_0_m_axis_rx_TLAST;
  wire axi_10g_ethernet_0_m_axis_rx_TUSER;
  wire axi_10g_ethernet_0_m_axis_rx_TVALID;
  wire axi_10g_ethernet_0_resetdone_out;
  wire axi_10g_ethernet_0_rx_statistics_valid;
  wire [29:0]axi_10g_ethernet_0_rx_statistics_vector;
  wire axi_10g_ethernet_0_tx_statistics_valid;
  wire [25:0]axi_10g_ethernet_0_tx_statistics_vector;
  wire axi_10g_ethernet_0_txn;
  wire axi_10g_ethernet_0_txp;
  wire axi_10g_ethernet_0_txusrclk2_out;
  wire dclk_1;
  wire [0:0]gnd_dout;
  wire [7:0]ifg_delay_dout;
  wire [79:0]mac_config_vector_dout;
  wire [63:0]network_packet_fifo_0_m_axis_TDATA;
  wire [7:0]network_packet_fifo_0_m_axis_TKEEP;
  wire network_packet_fifo_0_m_axis_TLAST;
  wire network_packet_fifo_0_m_axis_TREADY;
  wire network_packet_fifo_0_m_axis_TVALID;
  wire [63:0]network_packet_fifo_1_m_axis_TDATA;
  wire [7:0]network_packet_fifo_1_m_axis_TKEEP;
  wire network_packet_fifo_1_m_axis_TLAST;
  wire network_packet_fifo_1_m_axis_TREADY;
  wire network_packet_fifo_1_m_axis_TUSER;
  wire network_packet_fifo_1_m_axis_TVALID;
  wire [535:0]pcs_config_vector_dout;
  wire refclk_n_1;
  wire refclk_p_1;
  wire reset_1;
  wire [63:0]rx_register_slice_1_M_AXIS_TDATA;
  wire [7:0]rx_register_slice_1_M_AXIS_TKEEP;
  wire rx_register_slice_1_M_AXIS_TLAST;
  wire rx_register_slice_1_M_AXIS_TREADY;
  wire rx_register_slice_1_M_AXIS_TVALID;
  wire rxn_1;
  wire rxp_1;
  wire tx_axis_aresetn_1;
  wire [63:0]tx_register_slice_0_M_AXIS_TDATA;
  wire [7:0]tx_register_slice_0_M_AXIS_TKEEP;
  wire tx_register_slice_0_M_AXIS_TLAST;
  wire tx_register_slice_0_M_AXIS_TREADY;
  wire tx_register_slice_0_M_AXIS_TVALID;
  wire [0:0]vcc_dout;

  assign M_AXIS_tdata[63:0] = rx_register_slice_1_M_AXIS_TDATA;
  assign M_AXIS_tkeep[7:0] = rx_register_slice_1_M_AXIS_TKEEP;
  assign M_AXIS_tlast = rx_register_slice_1_M_AXIS_TLAST;
  assign M_AXIS_tvalid = rx_register_slice_1_M_AXIS_TVALID;
  assign S_AXIS_1_TDATA = S_AXIS_tdata[63:0];
  assign S_AXIS_1_TKEEP = S_AXIS_tkeep[7:0];
  assign S_AXIS_1_TLAST = S_AXIS_tlast;
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign clk_156 = axi_10g_ethernet_0_txusrclk2_out;
  assign dclk_1 = clk_100;
  assign network_reset_done = axi_10g_ethernet_0_resetdone_out;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign reset_1 = reset;
  assign rx_register_slice_1_M_AXIS_TREADY = M_AXIS_tready;
  assign rx_statistics_valid = axi_10g_ethernet_0_rx_statistics_valid;
  assign rx_statistics_vector[29:0] = axi_10g_ethernet_0_rx_statistics_vector;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign tx_axis_aresetn_1 = aresetn;
  assign tx_statistics_valid = axi_10g_ethernet_0_tx_statistics_valid;
  assign tx_statistics_vector[25:0] = axi_10g_ethernet_0_tx_statistics_vector;
  assign txn = axi_10g_ethernet_0_txn;
  assign txp = axi_10g_ethernet_0_txp;
  shell_axi_10g_ethernet_0_0 axi_10g_ethernet_0
       (.dclk(dclk_1),
        .m_axis_rx_tdata(axi_10g_ethernet_0_m_axis_rx_TDATA),
        .m_axis_rx_tkeep(axi_10g_ethernet_0_m_axis_rx_TKEEP),
        .m_axis_rx_tlast(axi_10g_ethernet_0_m_axis_rx_TLAST),
        .m_axis_rx_tuser(axi_10g_ethernet_0_m_axis_rx_TUSER),
        .m_axis_rx_tvalid(axi_10g_ethernet_0_m_axis_rx_TVALID),
        .mac_rx_configuration_vector(mac_config_vector_dout),
        .mac_tx_configuration_vector(mac_config_vector_dout),
        .pcs_pma_configuration_vector(pcs_config_vector_dout),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(reset_1),
        .resetdone_out(axi_10g_ethernet_0_resetdone_out),
        .rx_axis_aresetn(tx_axis_aresetn_1),
        .rx_statistics_valid(axi_10g_ethernet_0_rx_statistics_valid),
        .rx_statistics_vector(axi_10g_ethernet_0_rx_statistics_vector),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .s_axis_pause_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_pause_tvalid(1'b0),
        .s_axis_tx_tdata(network_packet_fifo_1_m_axis_TDATA),
        .s_axis_tx_tkeep(network_packet_fifo_1_m_axis_TKEEP),
        .s_axis_tx_tlast(network_packet_fifo_1_m_axis_TLAST),
        .s_axis_tx_tready(network_packet_fifo_1_m_axis_TREADY),
        .s_axis_tx_tuser(network_packet_fifo_1_m_axis_TUSER),
        .s_axis_tx_tvalid(network_packet_fifo_1_m_axis_TVALID),
        .signal_detect(vcc_dout),
        .sim_speedup_control(gnd_dout),
        .tx_axis_aresetn(tx_axis_aresetn_1),
        .tx_fault(gnd_dout),
        .tx_ifg_delay(ifg_delay_dout),
        .tx_statistics_valid(axi_10g_ethernet_0_tx_statistics_valid),
        .tx_statistics_vector(axi_10g_ethernet_0_tx_statistics_vector),
        .txn(axi_10g_ethernet_0_txn),
        .txp(axi_10g_ethernet_0_txp),
        .txusrclk2_out(axi_10g_ethernet_0_txusrclk2_out));
  shell_gnd_1 gnd
       (.dout(gnd_dout));
  shell_ifg_delay_0 ifg_delay
       (.dout(ifg_delay_dout));
  shell_mac_config_vector_0 mac_config_vector
       (.dout(mac_config_vector_dout));
  shell_network_packet_fifo_0_0 network_packet_fifo_0
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(network_packet_fifo_0_m_axis_TDATA),
        .m_axis_tkeep(network_packet_fifo_0_m_axis_TKEEP),
        .m_axis_tlast(network_packet_fifo_0_m_axis_TLAST),
        .m_axis_tready(network_packet_fifo_0_m_axis_TREADY),
        .m_axis_tvalid(network_packet_fifo_0_m_axis_TVALID),
        .rx_statistics_valid(axi_10g_ethernet_0_rx_statistics_valid),
        .rx_statistics_vector(axi_10g_ethernet_0_rx_statistics_vector),
        .s_axis_tdata(axi_10g_ethernet_0_m_axis_rx_TDATA),
        .s_axis_tkeep(axi_10g_ethernet_0_m_axis_rx_TKEEP),
        .s_axis_tlast(axi_10g_ethernet_0_m_axis_rx_TLAST),
        .s_axis_tuser(axi_10g_ethernet_0_m_axis_rx_TUSER),
        .s_axis_tvalid(axi_10g_ethernet_0_m_axis_rx_TVALID));
  shell_network_packet_fifo_1_0 network_packet_fifo_1
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(network_packet_fifo_1_m_axis_TDATA),
        .m_axis_tkeep(network_packet_fifo_1_m_axis_TKEEP),
        .m_axis_tlast(network_packet_fifo_1_m_axis_TLAST),
        .m_axis_tready(network_packet_fifo_1_m_axis_TREADY),
        .m_axis_tuser(network_packet_fifo_1_m_axis_TUSER),
        .m_axis_tvalid(network_packet_fifo_1_m_axis_TVALID),
        .s_axis_tdata(tx_register_slice_0_M_AXIS_TDATA),
        .s_axis_tkeep(tx_register_slice_0_M_AXIS_TKEEP),
        .s_axis_tlast(tx_register_slice_0_M_AXIS_TLAST),
        .s_axis_tready(tx_register_slice_0_M_AXIS_TREADY),
        .s_axis_tvalid(tx_register_slice_0_M_AXIS_TVALID));
  shell_pcs_config_vector_0 pcs_config_vector
       (.dout(pcs_config_vector_dout));
  shell_rx_register_slice_1_0 rx_register_slice_1
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(rx_register_slice_1_M_AXIS_TDATA),
        .m_axis_tkeep(rx_register_slice_1_M_AXIS_TKEEP),
        .m_axis_tlast(rx_register_slice_1_M_AXIS_TLAST),
        .m_axis_tready(rx_register_slice_1_M_AXIS_TREADY),
        .m_axis_tvalid(rx_register_slice_1_M_AXIS_TVALID),
        .s_axis_tdata(network_packet_fifo_0_m_axis_TDATA),
        .s_axis_tkeep(network_packet_fifo_0_m_axis_TKEEP),
        .s_axis_tlast(network_packet_fifo_0_m_axis_TLAST),
        .s_axis_tready(network_packet_fifo_0_m_axis_TREADY),
        .s_axis_tvalid(network_packet_fifo_0_m_axis_TVALID));
  shell_tx_register_slice_0_0 tx_register_slice_0
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(tx_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(tx_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(tx_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(tx_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(tx_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_1_TDATA),
        .s_axis_tkeep(S_AXIS_1_TKEEP),
        .s_axis_tlast(S_AXIS_1_TLAST),
        .s_axis_tready(S_AXIS_1_TREADY),
        .s_axis_tvalid(S_AXIS_1_TVALID));
  shell_vcc_0 vcc
       (.dout(vcc_dout));
endmodule

module s00_couplers_imp_1751KRY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1F1P3S2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_ARCACHE;
  wire [0:0]auto_cc_to_s00_data_fifo_ARID;
  wire [7:0]auto_cc_to_s00_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_ARQOS;
  wire auto_cc_to_s00_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_ARSIZE;
  wire auto_cc_to_s00_data_fifo_ARVALID;
  wire [31:0]auto_cc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_AWCACHE;
  wire [0:0]auto_cc_to_s00_data_fifo_AWID;
  wire [7:0]auto_cc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_AWQOS;
  wire auto_cc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_AWSIZE;
  wire auto_cc_to_s00_data_fifo_AWVALID;
  wire [0:0]auto_cc_to_s00_data_fifo_BID;
  wire auto_cc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_BRESP;
  wire auto_cc_to_s00_data_fifo_BVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_RDATA;
  wire [0:0]auto_cc_to_s00_data_fifo_RID;
  wire auto_cc_to_s00_data_fifo_RLAST;
  wire auto_cc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_RRESP;
  wire auto_cc_to_s00_data_fifo_RVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_WDATA;
  wire auto_cc_to_s00_data_fifo_WLAST;
  wire auto_cc_to_s00_data_fifo_WREADY;
  wire [63:0]auto_cc_to_s00_data_fifo_WSTRB;
  wire auto_cc_to_s00_data_fifo_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [3:0]s00_couplers_to_auto_cc_ARREGION;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [3:0]s00_couplers_to_auto_cc_AWREGION;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [511:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [511:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [63:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [0:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [0:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [63:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  shell_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .m_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .m_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .m_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
  shell_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .s_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .s_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .s_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_1KJMYX0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_JGGR7S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_ARCACHE;
  wire [0:0]auto_cc_to_s00_data_fifo_ARID;
  wire [7:0]auto_cc_to_s00_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_ARQOS;
  wire auto_cc_to_s00_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_ARSIZE;
  wire auto_cc_to_s00_data_fifo_ARVALID;
  wire [31:0]auto_cc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_AWCACHE;
  wire [0:0]auto_cc_to_s00_data_fifo_AWID;
  wire [7:0]auto_cc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_AWQOS;
  wire auto_cc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_AWSIZE;
  wire auto_cc_to_s00_data_fifo_AWVALID;
  wire [0:0]auto_cc_to_s00_data_fifo_BID;
  wire auto_cc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_BRESP;
  wire auto_cc_to_s00_data_fifo_BVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_RDATA;
  wire [0:0]auto_cc_to_s00_data_fifo_RID;
  wire auto_cc_to_s00_data_fifo_RLAST;
  wire auto_cc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_RRESP;
  wire auto_cc_to_s00_data_fifo_RVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_WDATA;
  wire auto_cc_to_s00_data_fifo_WLAST;
  wire auto_cc_to_s00_data_fifo_WREADY;
  wire [63:0]auto_cc_to_s00_data_fifo_WSTRB;
  wire auto_cc_to_s00_data_fifo_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [3:0]s00_couplers_to_auto_cc_ARREGION;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [3:0]s00_couplers_to_auto_cc_AWREGION;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [511:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [511:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [63:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [1:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [1:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [63:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[1:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[1:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  shell_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .m_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .m_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .m_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
  shell_s00_data_fifo_1 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID[0]),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID[0]),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .s_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .s_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .s_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_1YZPESG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_cc_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARQOS;
  wire auto_us_cc_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARSIZE;
  wire auto_us_cc_df_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_cc_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWQOS;
  wire auto_us_cc_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWSIZE;
  wire auto_us_cc_df_to_s01_couplers_AWVALID;
  wire auto_us_cc_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_BRESP;
  wire auto_us_cc_df_to_s01_couplers_BVALID;
  wire [511:0]auto_us_cc_df_to_s01_couplers_RDATA;
  wire auto_us_cc_df_to_s01_couplers_RLAST;
  wire auto_us_cc_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_RRESP;
  wire auto_us_cc_df_to_s01_couplers_RVALID;
  wire [511:0]auto_us_cc_df_to_s01_couplers_WDATA;
  wire auto_us_cc_df_to_s01_couplers_WLAST;
  wire auto_us_cc_df_to_s01_couplers_WREADY;
  wire [63:0]auto_us_cc_df_to_s01_couplers_WSTRB;
  wire auto_us_cc_df_to_s01_couplers_WVALID;
  wire [63:0]s01_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_cc_df_ARCACHE;
  wire [3:0]s01_couplers_to_auto_us_cc_df_ARID;
  wire [7:0]s01_couplers_to_auto_us_cc_df_ARLEN;
  wire [0:0]s01_couplers_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_cc_df_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_cc_df_ARQOS;
  wire s01_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_cc_df_ARSIZE;
  wire s01_couplers_to_auto_us_cc_df_ARVALID;
  wire [63:0]s01_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWCACHE;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWID;
  wire [7:0]s01_couplers_to_auto_us_cc_df_AWLEN;
  wire [0:0]s01_couplers_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_couplers_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWQOS;
  wire s01_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s01_couplers_to_auto_us_cc_df_AWSIZE;
  wire s01_couplers_to_auto_us_cc_df_AWVALID;
  wire [3:0]s01_couplers_to_auto_us_cc_df_BID;
  wire s01_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_couplers_to_auto_us_cc_df_BRESP;
  wire s01_couplers_to_auto_us_cc_df_BVALID;
  wire [255:0]s01_couplers_to_auto_us_cc_df_RDATA;
  wire [3:0]s01_couplers_to_auto_us_cc_df_RID;
  wire s01_couplers_to_auto_us_cc_df_RLAST;
  wire s01_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s01_couplers_to_auto_us_cc_df_RRESP;
  wire s01_couplers_to_auto_us_cc_df_RVALID;
  wire [255:0]s01_couplers_to_auto_us_cc_df_WDATA;
  wire s01_couplers_to_auto_us_cc_df_WLAST;
  wire s01_couplers_to_auto_us_cc_df_WREADY;
  wire [31:0]s01_couplers_to_auto_us_cc_df_WSTRB;
  wire s01_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_cc_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_cc_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_cc_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_cc_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bid[3:0] = s01_couplers_to_auto_us_cc_df_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_rdata[255:0] = s01_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rid[3:0] = s01_couplers_to_auto_us_cc_df_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_us_cc_df_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_cc_df_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_cc_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_cc_df_ARID = S_AXI_arid[3:0];
  assign s01_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_cc_df_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_cc_df_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWID = S_AXI_awid[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_cc_df_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_cc_df_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[255:0];
  assign s01_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[31:0];
  assign s01_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  shell_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_us_cc_df_ARID),
        .s_axi_arlen(s01_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_us_cc_df_AWID),
        .s_axi_awlen(s01_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_us_cc_df_BID),
        .s_axi_bready(s01_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rid(s01_couplers_to_auto_us_cc_df_RID),
        .s_axi_rlast(s01_couplers_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_cc_df_WVALID));
endmodule

module s01_couplers_imp_VOMHM4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s01_couplers_ARADDR;
  wire [2:0]auto_cc_to_s01_couplers_ARPROT;
  wire auto_cc_to_s01_couplers_ARREADY;
  wire auto_cc_to_s01_couplers_ARVALID;
  wire [31:0]auto_cc_to_s01_couplers_AWADDR;
  wire [2:0]auto_cc_to_s01_couplers_AWPROT;
  wire auto_cc_to_s01_couplers_AWREADY;
  wire auto_cc_to_s01_couplers_AWVALID;
  wire auto_cc_to_s01_couplers_BREADY;
  wire [1:0]auto_cc_to_s01_couplers_BRESP;
  wire auto_cc_to_s01_couplers_BVALID;
  wire [31:0]auto_cc_to_s01_couplers_RDATA;
  wire auto_cc_to_s01_couplers_RREADY;
  wire [1:0]auto_cc_to_s01_couplers_RRESP;
  wire auto_cc_to_s01_couplers_RVALID;
  wire [31:0]auto_cc_to_s01_couplers_WDATA;
  wire auto_cc_to_s01_couplers_WREADY;
  wire [3:0]auto_cc_to_s01_couplers_WSTRB;
  wire auto_cc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_cc_ARADDR;
  wire [2:0]s01_couplers_to_auto_cc_ARPROT;
  wire s01_couplers_to_auto_cc_ARREADY;
  wire s01_couplers_to_auto_cc_ARVALID;
  wire [31:0]s01_couplers_to_auto_cc_AWADDR;
  wire [2:0]s01_couplers_to_auto_cc_AWPROT;
  wire s01_couplers_to_auto_cc_AWREADY;
  wire s01_couplers_to_auto_cc_AWVALID;
  wire s01_couplers_to_auto_cc_BREADY;
  wire [1:0]s01_couplers_to_auto_cc_BRESP;
  wire s01_couplers_to_auto_cc_BVALID;
  wire [31:0]s01_couplers_to_auto_cc_RDATA;
  wire s01_couplers_to_auto_cc_RREADY;
  wire [1:0]s01_couplers_to_auto_cc_RRESP;
  wire s01_couplers_to_auto_cc_RVALID;
  wire [31:0]s01_couplers_to_auto_cc_WDATA;
  wire s01_couplers_to_auto_cc_WREADY;
  wire [3:0]s01_couplers_to_auto_cc_WSTRB;
  wire s01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_cc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "shell,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shell,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=70,numReposBlks=49,numNonXlnxBlks=2,numHierBlks=21,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "shell.hwdef" *) 
module shell
   (ARESETN,
    CLK_DATA,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    M_AXI_CONTROL_araddr,
    M_AXI_CONTROL_arprot,
    M_AXI_CONTROL_arready,
    M_AXI_CONTROL_arvalid,
    M_AXI_CONTROL_awaddr,
    M_AXI_CONTROL_awprot,
    M_AXI_CONTROL_awready,
    M_AXI_CONTROL_awvalid,
    M_AXI_CONTROL_bready,
    M_AXI_CONTROL_bresp,
    M_AXI_CONTROL_bvalid,
    M_AXI_CONTROL_rdata,
    M_AXI_CONTROL_rready,
    M_AXI_CONTROL_rresp,
    M_AXI_CONTROL_rvalid,
    M_AXI_CONTROL_wdata,
    M_AXI_CONTROL_wready,
    M_AXI_CONTROL_wstrb,
    M_AXI_CONTROL_wvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_MEM_0_araddr,
    S_AXI_MEM_0_arburst,
    S_AXI_MEM_0_arcache,
    S_AXI_MEM_0_arid,
    S_AXI_MEM_0_arlen,
    S_AXI_MEM_0_arlock,
    S_AXI_MEM_0_arprot,
    S_AXI_MEM_0_arqos,
    S_AXI_MEM_0_arready,
    S_AXI_MEM_0_arregion,
    S_AXI_MEM_0_arsize,
    S_AXI_MEM_0_arvalid,
    S_AXI_MEM_0_awaddr,
    S_AXI_MEM_0_awburst,
    S_AXI_MEM_0_awcache,
    S_AXI_MEM_0_awid,
    S_AXI_MEM_0_awlen,
    S_AXI_MEM_0_awlock,
    S_AXI_MEM_0_awprot,
    S_AXI_MEM_0_awqos,
    S_AXI_MEM_0_awready,
    S_AXI_MEM_0_awregion,
    S_AXI_MEM_0_awsize,
    S_AXI_MEM_0_awvalid,
    S_AXI_MEM_0_bid,
    S_AXI_MEM_0_bready,
    S_AXI_MEM_0_bresp,
    S_AXI_MEM_0_bvalid,
    S_AXI_MEM_0_rdata,
    S_AXI_MEM_0_rid,
    S_AXI_MEM_0_rlast,
    S_AXI_MEM_0_rready,
    S_AXI_MEM_0_rresp,
    S_AXI_MEM_0_rvalid,
    S_AXI_MEM_0_wdata,
    S_AXI_MEM_0_wlast,
    S_AXI_MEM_0_wready,
    S_AXI_MEM_0_wstrb,
    S_AXI_MEM_0_wvalid,
    S_AXI_MEM_1_araddr,
    S_AXI_MEM_1_arburst,
    S_AXI_MEM_1_arcache,
    S_AXI_MEM_1_arid,
    S_AXI_MEM_1_arlen,
    S_AXI_MEM_1_arlock,
    S_AXI_MEM_1_arprot,
    S_AXI_MEM_1_arqos,
    S_AXI_MEM_1_arready,
    S_AXI_MEM_1_arregion,
    S_AXI_MEM_1_arsize,
    S_AXI_MEM_1_arvalid,
    S_AXI_MEM_1_awaddr,
    S_AXI_MEM_1_awburst,
    S_AXI_MEM_1_awcache,
    S_AXI_MEM_1_awid,
    S_AXI_MEM_1_awlen,
    S_AXI_MEM_1_awlock,
    S_AXI_MEM_1_awprot,
    S_AXI_MEM_1_awqos,
    S_AXI_MEM_1_awready,
    S_AXI_MEM_1_awregion,
    S_AXI_MEM_1_awsize,
    S_AXI_MEM_1_awvalid,
    S_AXI_MEM_1_bid,
    S_AXI_MEM_1_bready,
    S_AXI_MEM_1_bresp,
    S_AXI_MEM_1_bvalid,
    S_AXI_MEM_1_rdata,
    S_AXI_MEM_1_rid,
    S_AXI_MEM_1_rlast,
    S_AXI_MEM_1_rready,
    S_AXI_MEM_1_rresp,
    S_AXI_MEM_1_rvalid,
    S_AXI_MEM_1_wdata,
    S_AXI_MEM_1_wlast,
    S_AXI_MEM_1_wready,
    S_AXI_MEM_1_wstrb,
    S_AXI_MEM_1_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_clk_n,
    c0_sys_clk_clk_p,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dm_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_reset_n,
    c1_sys_clk_clk_n,
    c1_sys_clk_clk_p,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    pcie_7x_mgt_rtl_rxn,
    pcie_7x_mgt_rtl_rxp,
    pcie_7x_mgt_rtl_txn,
    pcie_7x_mgt_rtl_txp,
    perst_n,
    refclk200,
    refclk_n,
    refclk_p,
    rxn,
    rxp,
    sfp_tx_disable,
    txn,
    txp);
  output [0:0]ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_DATA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_DATA, ASSOCIATED_BUSIF M_AXIS:S_AXIS:S_AXI_MEM_0:M_AXI_CONTROL:S_AXI_MEM_1, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, PHASE 0.000" *) output CLK_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [7:0]M_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_CONTROL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, DATA_WIDTH 32, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_CONTROL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARPROT" *) output [2:0]M_AXI_CONTROL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARREADY" *) input M_AXI_CONTROL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARVALID" *) output M_AXI_CONTROL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWADDR" *) output [31:0]M_AXI_CONTROL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWPROT" *) output [2:0]M_AXI_CONTROL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWREADY" *) input M_AXI_CONTROL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWVALID" *) output M_AXI_CONTROL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BREADY" *) output M_AXI_CONTROL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BRESP" *) input [1:0]M_AXI_CONTROL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BVALID" *) input M_AXI_CONTROL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RDATA" *) input [31:0]M_AXI_CONTROL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RREADY" *) output M_AXI_CONTROL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RRESP" *) input [1:0]M_AXI_CONTROL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RVALID" *) input M_AXI_CONTROL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WDATA" *) output [31:0]M_AXI_CONTROL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WREADY" *) input M_AXI_CONTROL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WSTRB" *) output [3:0]M_AXI_CONTROL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WVALID" *) output M_AXI_CONTROL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]S_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MEM_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, DATA_WIDTH 512, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_MEM_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARBURST" *) input [1:0]S_AXI_MEM_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARCACHE" *) input [3:0]S_AXI_MEM_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARID" *) input [0:0]S_AXI_MEM_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARLEN" *) input [7:0]S_AXI_MEM_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARLOCK" *) input [0:0]S_AXI_MEM_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARPROT" *) input [2:0]S_AXI_MEM_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARQOS" *) input [3:0]S_AXI_MEM_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARREADY" *) output S_AXI_MEM_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARREGION" *) input [3:0]S_AXI_MEM_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARSIZE" *) input [2:0]S_AXI_MEM_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 ARVALID" *) input S_AXI_MEM_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWADDR" *) input [31:0]S_AXI_MEM_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWBURST" *) input [1:0]S_AXI_MEM_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWCACHE" *) input [3:0]S_AXI_MEM_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWID" *) input [0:0]S_AXI_MEM_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWLEN" *) input [7:0]S_AXI_MEM_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWLOCK" *) input [0:0]S_AXI_MEM_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWPROT" *) input [2:0]S_AXI_MEM_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWQOS" *) input [3:0]S_AXI_MEM_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWREADY" *) output S_AXI_MEM_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWREGION" *) input [3:0]S_AXI_MEM_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWSIZE" *) input [2:0]S_AXI_MEM_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 AWVALID" *) input S_AXI_MEM_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 BID" *) output [0:0]S_AXI_MEM_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 BREADY" *) input S_AXI_MEM_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 BRESP" *) output [1:0]S_AXI_MEM_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 BVALID" *) output S_AXI_MEM_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RDATA" *) output [511:0]S_AXI_MEM_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RID" *) output [0:0]S_AXI_MEM_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RLAST" *) output S_AXI_MEM_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RREADY" *) input S_AXI_MEM_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RRESP" *) output [1:0]S_AXI_MEM_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 RVALID" *) output S_AXI_MEM_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 WDATA" *) input [511:0]S_AXI_MEM_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 WLAST" *) input S_AXI_MEM_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 WREADY" *) output S_AXI_MEM_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 WSTRB" *) input [63:0]S_AXI_MEM_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_0 WVALID" *) input S_AXI_MEM_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MEM_1, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, DATA_WIDTH 512, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_MEM_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARBURST" *) input [1:0]S_AXI_MEM_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARCACHE" *) input [3:0]S_AXI_MEM_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARID" *) input [0:0]S_AXI_MEM_1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARLEN" *) input [7:0]S_AXI_MEM_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARLOCK" *) input [0:0]S_AXI_MEM_1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARPROT" *) input [2:0]S_AXI_MEM_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARQOS" *) input [3:0]S_AXI_MEM_1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARREADY" *) output S_AXI_MEM_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARREGION" *) input [3:0]S_AXI_MEM_1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARSIZE" *) input [2:0]S_AXI_MEM_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 ARVALID" *) input S_AXI_MEM_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWADDR" *) input [31:0]S_AXI_MEM_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWBURST" *) input [1:0]S_AXI_MEM_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWCACHE" *) input [3:0]S_AXI_MEM_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWID" *) input [0:0]S_AXI_MEM_1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWLEN" *) input [7:0]S_AXI_MEM_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWLOCK" *) input [0:0]S_AXI_MEM_1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWPROT" *) input [2:0]S_AXI_MEM_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWQOS" *) input [3:0]S_AXI_MEM_1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWREADY" *) output S_AXI_MEM_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWREGION" *) input [3:0]S_AXI_MEM_1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWSIZE" *) input [2:0]S_AXI_MEM_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 AWVALID" *) input S_AXI_MEM_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 BID" *) output [0:0]S_AXI_MEM_1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 BREADY" *) input S_AXI_MEM_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 BRESP" *) output [1:0]S_AXI_MEM_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 BVALID" *) output S_AXI_MEM_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RDATA" *) output [511:0]S_AXI_MEM_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RID" *) output [0:0]S_AXI_MEM_1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RLAST" *) output S_AXI_MEM_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RREADY" *) input S_AXI_MEM_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RRESP" *) output [1:0]S_AXI_MEM_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 RVALID" *) output S_AXI_MEM_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 WDATA" *) input [511:0]S_AXI_MEM_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 WLAST" *) input S_AXI_MEM_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 WREADY" *) output S_AXI_MEM_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 WSTRB" *) input [63:0]S_AXI_MEM_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM_1 WVALID" *) input S_AXI_MEM_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 11, CS_ENABLED true, CUSTOM_PARTS ../../../../imports/srcs/custom_parts_2133.csv, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART CUSTOM_DBI_MT40A1G8PM-083E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 939" *) output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ADR" *) output [16:0]c0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BA" *) output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 BG" *) output [1:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_C" *) output [0:0]c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CK_T" *) output [0:0]c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CKE" *) output [0:0]c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 CS_N" *) output [0:0]c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DM_N" *) inout [7:0]c0_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQ" *) inout [63:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_C" *) inout [7:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 DQS_T" *) inout [7:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 ODT" *) output [0:0]c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 RESET_N" *) output c0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_sys_clk, CAN_DEBUG false, FREQ_HZ 300000000" *) input c0_sys_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys_clk CLK_P" *) input c0_sys_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c1_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 11, CS_ENABLED true, CUSTOM_PARTS ../../../../imports/srcs/custom_parts_2133.csv, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART CUSTOM_DBI_MT40A1G8PM-083E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 939" *) output c1_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ADR" *) output [16:0]c1_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BA" *) output [1:0]c1_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BG" *) output [1:0]c1_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_C" *) output [0:0]c1_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_T" *) output [0:0]c1_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CKE" *) output [0:0]c1_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CS_N" *) output [0:0]c1_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DM_N" *) inout [7:0]c1_ddr4_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQ" *) inout [63:0]c1_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_C" *) inout [7:0]c1_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_T" *) inout [7:0]c1_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ODT" *) output [0:0]c1_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 RESET_N" *) output c1_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c1_sys_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c1_sys_clk, CAN_DEBUG false, FREQ_HZ 300000000" *) input c1_sys_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c1_sys_clk CLK_P" *) input c1_sys_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_clock_rtl, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]diff_clock_rtl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl CLK_P" *) input [0:0]diff_clock_rtl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl rxn" *) input [7:0]pcie_7x_mgt_rtl_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl rxp" *) input [7:0]pcie_7x_mgt_rtl_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl txn" *) output [7:0]pcie_7x_mgt_rtl_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl txp" *) output [7:0]pcie_7x_mgt_rtl_txp;
  input perst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK200 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK200, CLK_DOMAIN shell_refclk200, FREQ_HZ 200000000, PHASE 0.000" *) input refclk200;
  input refclk_n;
  input refclk_p;
  input rxn;
  input rxp;
  output [1:0]sfp_tx_disable;
  output txn;
  output txp;

  wire [63:0]PCIe_M_AXI_ARADDR;
  wire [1:0]PCIe_M_AXI_ARBURST;
  wire [3:0]PCIe_M_AXI_ARCACHE;
  wire [3:0]PCIe_M_AXI_ARID;
  wire [7:0]PCIe_M_AXI_ARLEN;
  wire [0:0]PCIe_M_AXI_ARLOCK;
  wire [2:0]PCIe_M_AXI_ARPROT;
  wire PCIe_M_AXI_ARREADY;
  wire [2:0]PCIe_M_AXI_ARSIZE;
  wire PCIe_M_AXI_ARVALID;
  wire [63:0]PCIe_M_AXI_AWADDR;
  wire [1:0]PCIe_M_AXI_AWBURST;
  wire [3:0]PCIe_M_AXI_AWCACHE;
  wire [3:0]PCIe_M_AXI_AWID;
  wire [7:0]PCIe_M_AXI_AWLEN;
  wire [0:0]PCIe_M_AXI_AWLOCK;
  wire [2:0]PCIe_M_AXI_AWPROT;
  wire PCIe_M_AXI_AWREADY;
  wire [2:0]PCIe_M_AXI_AWSIZE;
  wire PCIe_M_AXI_AWVALID;
  wire [3:0]PCIe_M_AXI_BID;
  wire PCIe_M_AXI_BREADY;
  wire [1:0]PCIe_M_AXI_BRESP;
  wire PCIe_M_AXI_BVALID;
  wire [255:0]PCIe_M_AXI_RDATA;
  wire [3:0]PCIe_M_AXI_RID;
  wire PCIe_M_AXI_RLAST;
  wire PCIe_M_AXI_RREADY;
  wire [1:0]PCIe_M_AXI_RRESP;
  wire PCIe_M_AXI_RVALID;
  wire [255:0]PCIe_M_AXI_WDATA;
  wire PCIe_M_AXI_WLAST;
  wire PCIe_M_AXI_WREADY;
  wire [31:0]PCIe_M_AXI_WSTRB;
  wire PCIe_M_AXI_WVALID;
  wire PCIe_axi_aclk;
  wire PCIe_axi_aresetn;
  wire [7:0]PCIe_pcie_mgt_rxn;
  wire [7:0]PCIe_pcie_mgt_rxp;
  wire [7:0]PCIe_pcie_mgt_txn;
  wire [7:0]PCIe_pcie_mgt_txp;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]S_AXIS_1_TDATA;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]S_AXIS_1_TKEEP;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire S_AXIS_1_TLAST;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire S_AXIS_1_TREADY;
  (* CONN_BUS_INFO = "S_AXIS_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire S_AXIS_1_TVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]S_AXI_MEM_1_1_ARADDR;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_1_ARBURST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_ARCACHE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_ARID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_MEM_1_1_ARLEN;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_ARLOCK;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_1_ARPROT;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_ARQOS;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_ARREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_ARREGION;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_1_ARSIZE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_ARVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]S_AXI_MEM_1_1_AWADDR;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_1_AWBURST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_AWCACHE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_AWID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_MEM_1_1_AWLEN;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_AWLOCK;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_1_AWPROT;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_AWQOS;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_AWREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_1_AWREGION;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_1_AWSIZE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_AWVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_BID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_BREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_1_BRESP;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_BVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_MEM_1_1_RDATA;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_1_RID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_RLAST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_RREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_1_RRESP;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_RVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_MEM_1_1_WDATA;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_WLAST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_WREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]S_AXI_MEM_1_1_WSTRB;
  (* CONN_BUS_INFO = "S_AXI_MEM_1_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_1_WVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]S_AXI_MEM_1_ARADDR;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_ARBURST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_ARCACHE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_ARID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_MEM_1_ARLEN;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_ARLOCK;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_ARPROT;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_ARQOS;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_ARREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_ARREGION;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_ARSIZE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_ARVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]S_AXI_MEM_1_AWADDR;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_AWBURST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_AWCACHE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_AWID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_MEM_1_AWLEN;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_AWLOCK;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_AWPROT;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_AWQOS;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_AWREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DONT_TOUCH *) wire [3:0]S_AXI_MEM_1_AWREGION;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_MEM_1_AWSIZE;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_AWVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_BID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_BREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_BRESP;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_BVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_MEM_1_RDATA;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [0:0]S_AXI_MEM_1_RID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_RLAST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_RREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_MEM_1_RRESP;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_RVALID;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_MEM_1_WDATA;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_WLAST;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_WREADY;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]S_AXI_MEM_1_WSTRB;
  (* CONN_BUS_INFO = "S_AXI_MEM_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire S_AXI_MEM_1_WVALID;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [11:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [11:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [8:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [8:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M02_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M02_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_interconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M02_AXI_WVALID;
  wire c0_sys_clk_1_CLK_N;
  wire c0_sys_clk_1_CLK_P;
  wire c1_sys_clk_1_CLK_N;
  wire c1_sys_clk_1_CLK_P;
  wire [0:0]diff_clock_rtl_1_CLK_N;
  wire [0:0]diff_clock_rtl_1_CLK_P;
  wire [1:0]gnd_dout;
  wire [0:0]mem_interface_ARESETN;
  wire mem_interface_c0_ddr4_ACT_N;
  wire [16:0]mem_interface_c0_ddr4_ADR;
  wire [1:0]mem_interface_c0_ddr4_BA;
  wire [1:0]mem_interface_c0_ddr4_BG;
  wire [0:0]mem_interface_c0_ddr4_CKE;
  wire [0:0]mem_interface_c0_ddr4_CK_C;
  wire [0:0]mem_interface_c0_ddr4_CK_T;
  wire [0:0]mem_interface_c0_ddr4_CS_N;
  wire [7:0]mem_interface_c0_ddr4_DM_N;
  wire [63:0]mem_interface_c0_ddr4_DQ;
  wire [7:0]mem_interface_c0_ddr4_DQS_C;
  wire [7:0]mem_interface_c0_ddr4_DQS_T;
  wire [0:0]mem_interface_c0_ddr4_ODT;
  wire mem_interface_c0_ddr4_RESET_N;
  wire mem_interface_c1_ddr4_ACT_N;
  wire [16:0]mem_interface_c1_ddr4_ADR;
  wire [1:0]mem_interface_c1_ddr4_BA;
  wire [1:0]mem_interface_c1_ddr4_BG;
  wire [0:0]mem_interface_c1_ddr4_CKE;
  wire [0:0]mem_interface_c1_ddr4_CK_C;
  wire [0:0]mem_interface_c1_ddr4_CK_T;
  wire [0:0]mem_interface_c1_ddr4_CS_N;
  wire [7:0]mem_interface_c1_ddr4_DM_N;
  wire [63:0]mem_interface_c1_ddr4_DQ;
  wire [7:0]mem_interface_c1_ddr4_DQS_C;
  wire [7:0]mem_interface_c1_ddr4_DQS_T;
  wire [0:0]mem_interface_c1_ddr4_ODT;
  wire mem_interface_c1_ddr4_RESET_N;
  wire microblaze_0_Clk;
  (* CONN_BUS_INFO = "network_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]network_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "network_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]network_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "network_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire network_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "network_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire network_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "network_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire network_M_AXIS_TVALID;
  wire network_clk_156;
  wire network_network_reset_done;
  wire network_txn;
  wire network_txp;
  wire perst_n_1;
  wire refclk200_1;
  wire refclk_n_1;
  wire refclk_p_1;
  wire rxn_1;
  wire rxp_1;
  wire [0:0]sys_rst_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [31:0]vio_0_probe_out0;

  assign ARESETN[0] = mem_interface_ARESETN;
  assign CLK_DATA = network_clk_156;
  assign M_AXIS_tdata[63:0] = network_M_AXIS_TDATA;
  assign M_AXIS_tkeep[7:0] = network_M_AXIS_TKEEP;
  assign M_AXIS_tlast = network_M_AXIS_TLAST;
  assign M_AXIS_tvalid = network_M_AXIS_TVALID;
  assign M_AXI_CONTROL_araddr[31:0] = axi_interconnect_0_M02_AXI_ARADDR;
  assign M_AXI_CONTROL_arprot[2:0] = axi_interconnect_0_M02_AXI_ARPROT;
  assign M_AXI_CONTROL_arvalid = axi_interconnect_0_M02_AXI_ARVALID;
  assign M_AXI_CONTROL_awaddr[31:0] = axi_interconnect_0_M02_AXI_AWADDR;
  assign M_AXI_CONTROL_awprot[2:0] = axi_interconnect_0_M02_AXI_AWPROT;
  assign M_AXI_CONTROL_awvalid = axi_interconnect_0_M02_AXI_AWVALID;
  assign M_AXI_CONTROL_bready = axi_interconnect_0_M02_AXI_BREADY;
  assign M_AXI_CONTROL_rready = axi_interconnect_0_M02_AXI_RREADY;
  assign M_AXI_CONTROL_wdata[31:0] = axi_interconnect_0_M02_AXI_WDATA;
  assign M_AXI_CONTROL_wstrb[3:0] = axi_interconnect_0_M02_AXI_WSTRB;
  assign M_AXI_CONTROL_wvalid = axi_interconnect_0_M02_AXI_WVALID;
  assign PCIe_pcie_mgt_rxn = pcie_7x_mgt_rtl_rxn[7:0];
  assign PCIe_pcie_mgt_rxp = pcie_7x_mgt_rtl_rxp[7:0];
  assign S_AXIS_1_TDATA = S_AXIS_tdata[63:0];
  assign S_AXIS_1_TKEEP = S_AXIS_tkeep[7:0];
  assign S_AXIS_1_TLAST = S_AXIS_tlast;
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign S_AXI_MEM_0_arready = S_AXI_MEM_1_ARREADY;
  assign S_AXI_MEM_0_awready = S_AXI_MEM_1_AWREADY;
  assign S_AXI_MEM_0_bid[0] = S_AXI_MEM_1_BID;
  assign S_AXI_MEM_0_bresp[1:0] = S_AXI_MEM_1_BRESP;
  assign S_AXI_MEM_0_bvalid = S_AXI_MEM_1_BVALID;
  assign S_AXI_MEM_0_rdata[511:0] = S_AXI_MEM_1_RDATA;
  assign S_AXI_MEM_0_rid[0] = S_AXI_MEM_1_RID;
  assign S_AXI_MEM_0_rlast = S_AXI_MEM_1_RLAST;
  assign S_AXI_MEM_0_rresp[1:0] = S_AXI_MEM_1_RRESP;
  assign S_AXI_MEM_0_rvalid = S_AXI_MEM_1_RVALID;
  assign S_AXI_MEM_0_wready = S_AXI_MEM_1_WREADY;
  assign S_AXI_MEM_1_1_ARADDR = S_AXI_MEM_1_araddr[31:0];
  assign S_AXI_MEM_1_1_ARBURST = S_AXI_MEM_1_arburst[1:0];
  assign S_AXI_MEM_1_1_ARCACHE = S_AXI_MEM_1_arcache[3:0];
  assign S_AXI_MEM_1_1_ARID = S_AXI_MEM_1_arid[0];
  assign S_AXI_MEM_1_1_ARLEN = S_AXI_MEM_1_arlen[7:0];
  assign S_AXI_MEM_1_1_ARLOCK = S_AXI_MEM_1_arlock[0];
  assign S_AXI_MEM_1_1_ARPROT = S_AXI_MEM_1_arprot[2:0];
  assign S_AXI_MEM_1_1_ARQOS = S_AXI_MEM_1_arqos[3:0];
  assign S_AXI_MEM_1_1_ARREGION = S_AXI_MEM_1_arregion[3:0];
  assign S_AXI_MEM_1_1_ARSIZE = S_AXI_MEM_1_arsize[2:0];
  assign S_AXI_MEM_1_1_ARVALID = S_AXI_MEM_1_arvalid;
  assign S_AXI_MEM_1_1_AWADDR = S_AXI_MEM_1_awaddr[31:0];
  assign S_AXI_MEM_1_1_AWBURST = S_AXI_MEM_1_awburst[1:0];
  assign S_AXI_MEM_1_1_AWCACHE = S_AXI_MEM_1_awcache[3:0];
  assign S_AXI_MEM_1_1_AWID = S_AXI_MEM_1_awid[0];
  assign S_AXI_MEM_1_1_AWLEN = S_AXI_MEM_1_awlen[7:0];
  assign S_AXI_MEM_1_1_AWLOCK = S_AXI_MEM_1_awlock[0];
  assign S_AXI_MEM_1_1_AWPROT = S_AXI_MEM_1_awprot[2:0];
  assign S_AXI_MEM_1_1_AWQOS = S_AXI_MEM_1_awqos[3:0];
  assign S_AXI_MEM_1_1_AWREGION = S_AXI_MEM_1_awregion[3:0];
  assign S_AXI_MEM_1_1_AWSIZE = S_AXI_MEM_1_awsize[2:0];
  assign S_AXI_MEM_1_1_AWVALID = S_AXI_MEM_1_awvalid;
  assign S_AXI_MEM_1_1_BREADY = S_AXI_MEM_1_bready;
  assign S_AXI_MEM_1_1_RREADY = S_AXI_MEM_1_rready;
  assign S_AXI_MEM_1_1_WDATA = S_AXI_MEM_1_wdata[511:0];
  assign S_AXI_MEM_1_1_WLAST = S_AXI_MEM_1_wlast;
  assign S_AXI_MEM_1_1_WSTRB = S_AXI_MEM_1_wstrb[63:0];
  assign S_AXI_MEM_1_1_WVALID = S_AXI_MEM_1_wvalid;
  assign S_AXI_MEM_1_ARADDR = S_AXI_MEM_0_araddr[31:0];
  assign S_AXI_MEM_1_ARBURST = S_AXI_MEM_0_arburst[1:0];
  assign S_AXI_MEM_1_ARCACHE = S_AXI_MEM_0_arcache[3:0];
  assign S_AXI_MEM_1_ARID = S_AXI_MEM_0_arid[0];
  assign S_AXI_MEM_1_ARLEN = S_AXI_MEM_0_arlen[7:0];
  assign S_AXI_MEM_1_ARLOCK = S_AXI_MEM_0_arlock[0];
  assign S_AXI_MEM_1_ARPROT = S_AXI_MEM_0_arprot[2:0];
  assign S_AXI_MEM_1_ARQOS = S_AXI_MEM_0_arqos[3:0];
  assign S_AXI_MEM_1_ARREGION = S_AXI_MEM_0_arregion[3:0];
  assign S_AXI_MEM_1_ARSIZE = S_AXI_MEM_0_arsize[2:0];
  assign S_AXI_MEM_1_ARVALID = S_AXI_MEM_0_arvalid;
  assign S_AXI_MEM_1_AWADDR = S_AXI_MEM_0_awaddr[31:0];
  assign S_AXI_MEM_1_AWBURST = S_AXI_MEM_0_awburst[1:0];
  assign S_AXI_MEM_1_AWCACHE = S_AXI_MEM_0_awcache[3:0];
  assign S_AXI_MEM_1_AWID = S_AXI_MEM_0_awid[0];
  assign S_AXI_MEM_1_AWLEN = S_AXI_MEM_0_awlen[7:0];
  assign S_AXI_MEM_1_AWLOCK = S_AXI_MEM_0_awlock[0];
  assign S_AXI_MEM_1_AWPROT = S_AXI_MEM_0_awprot[2:0];
  assign S_AXI_MEM_1_AWQOS = S_AXI_MEM_0_awqos[3:0];
  assign S_AXI_MEM_1_AWREGION = S_AXI_MEM_0_awregion[3:0];
  assign S_AXI_MEM_1_AWSIZE = S_AXI_MEM_0_awsize[2:0];
  assign S_AXI_MEM_1_AWVALID = S_AXI_MEM_0_awvalid;
  assign S_AXI_MEM_1_BREADY = S_AXI_MEM_0_bready;
  assign S_AXI_MEM_1_RREADY = S_AXI_MEM_0_rready;
  assign S_AXI_MEM_1_WDATA = S_AXI_MEM_0_wdata[511:0];
  assign S_AXI_MEM_1_WLAST = S_AXI_MEM_0_wlast;
  assign S_AXI_MEM_1_WSTRB = S_AXI_MEM_0_wstrb[63:0];
  assign S_AXI_MEM_1_WVALID = S_AXI_MEM_0_wvalid;
  assign S_AXI_MEM_1_arready = S_AXI_MEM_1_1_ARREADY;
  assign S_AXI_MEM_1_awready = S_AXI_MEM_1_1_AWREADY;
  assign S_AXI_MEM_1_bid[0] = S_AXI_MEM_1_1_BID;
  assign S_AXI_MEM_1_bresp[1:0] = S_AXI_MEM_1_1_BRESP;
  assign S_AXI_MEM_1_bvalid = S_AXI_MEM_1_1_BVALID;
  assign S_AXI_MEM_1_rdata[511:0] = S_AXI_MEM_1_1_RDATA;
  assign S_AXI_MEM_1_rid[0] = S_AXI_MEM_1_1_RID;
  assign S_AXI_MEM_1_rlast = S_AXI_MEM_1_1_RLAST;
  assign S_AXI_MEM_1_rresp[1:0] = S_AXI_MEM_1_1_RRESP;
  assign S_AXI_MEM_1_rvalid = S_AXI_MEM_1_1_RVALID;
  assign S_AXI_MEM_1_wready = S_AXI_MEM_1_1_WREADY;
  assign axi_interconnect_0_M02_AXI_ARREADY = M_AXI_CONTROL_arready;
  assign axi_interconnect_0_M02_AXI_AWREADY = M_AXI_CONTROL_awready;
  assign axi_interconnect_0_M02_AXI_BRESP = M_AXI_CONTROL_bresp[1:0];
  assign axi_interconnect_0_M02_AXI_BVALID = M_AXI_CONTROL_bvalid;
  assign axi_interconnect_0_M02_AXI_RDATA = M_AXI_CONTROL_rdata[31:0];
  assign axi_interconnect_0_M02_AXI_RRESP = M_AXI_CONTROL_rresp[1:0];
  assign axi_interconnect_0_M02_AXI_RVALID = M_AXI_CONTROL_rvalid;
  assign axi_interconnect_0_M02_AXI_WREADY = M_AXI_CONTROL_wready;
  assign c0_ddr4_act_n = mem_interface_c0_ddr4_ACT_N;
  assign c0_ddr4_adr[16:0] = mem_interface_c0_ddr4_ADR;
  assign c0_ddr4_ba[1:0] = mem_interface_c0_ddr4_BA;
  assign c0_ddr4_bg[1:0] = mem_interface_c0_ddr4_BG;
  assign c0_ddr4_ck_c[0] = mem_interface_c0_ddr4_CK_C;
  assign c0_ddr4_ck_t[0] = mem_interface_c0_ddr4_CK_T;
  assign c0_ddr4_cke[0] = mem_interface_c0_ddr4_CKE;
  assign c0_ddr4_cs_n[0] = mem_interface_c0_ddr4_CS_N;
  assign c0_ddr4_odt[0] = mem_interface_c0_ddr4_ODT;
  assign c0_ddr4_reset_n = mem_interface_c0_ddr4_RESET_N;
  assign c0_sys_clk_1_CLK_N = c0_sys_clk_clk_n;
  assign c0_sys_clk_1_CLK_P = c0_sys_clk_clk_p;
  assign c1_ddr4_act_n = mem_interface_c1_ddr4_ACT_N;
  assign c1_ddr4_adr[16:0] = mem_interface_c1_ddr4_ADR;
  assign c1_ddr4_ba[1:0] = mem_interface_c1_ddr4_BA;
  assign c1_ddr4_bg[1:0] = mem_interface_c1_ddr4_BG;
  assign c1_ddr4_ck_c[0] = mem_interface_c1_ddr4_CK_C;
  assign c1_ddr4_ck_t[0] = mem_interface_c1_ddr4_CK_T;
  assign c1_ddr4_cke[0] = mem_interface_c1_ddr4_CKE;
  assign c1_ddr4_cs_n[0] = mem_interface_c1_ddr4_CS_N;
  assign c1_ddr4_odt[0] = mem_interface_c1_ddr4_ODT;
  assign c1_ddr4_reset_n = mem_interface_c1_ddr4_RESET_N;
  assign c1_sys_clk_1_CLK_N = c1_sys_clk_clk_n;
  assign c1_sys_clk_1_CLK_P = c1_sys_clk_clk_p;
  assign diff_clock_rtl_1_CLK_N = diff_clock_rtl_clk_n[0];
  assign diff_clock_rtl_1_CLK_P = diff_clock_rtl_clk_p[0];
  assign network_M_AXIS_TREADY = M_AXIS_tready;
  assign pcie_7x_mgt_rtl_txn[7:0] = PCIe_pcie_mgt_txn;
  assign pcie_7x_mgt_rtl_txp[7:0] = PCIe_pcie_mgt_txp;
  assign perst_n_1 = perst_n;
  assign refclk200_1 = refclk200;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign sfp_tx_disable[1:0] = gnd_dout;
  assign txn = network_txn;
  assign txp = network_txp;
  PCIe_imp_107RYSW PCIe
       (.CLK_IN_D_clk_n(diff_clock_rtl_1_CLK_N),
        .CLK_IN_D_clk_p(diff_clock_rtl_1_CLK_P),
        .M_AXI_LITE_araddr(S01_AXI_1_ARADDR),
        .M_AXI_LITE_arprot(S01_AXI_1_ARPROT),
        .M_AXI_LITE_arready(S01_AXI_1_ARREADY),
        .M_AXI_LITE_arvalid(S01_AXI_1_ARVALID),
        .M_AXI_LITE_awaddr(S01_AXI_1_AWADDR),
        .M_AXI_LITE_awprot(S01_AXI_1_AWPROT),
        .M_AXI_LITE_awready(S01_AXI_1_AWREADY),
        .M_AXI_LITE_awvalid(S01_AXI_1_AWVALID),
        .M_AXI_LITE_bready(S01_AXI_1_BREADY),
        .M_AXI_LITE_bresp(S01_AXI_1_BRESP),
        .M_AXI_LITE_bvalid(S01_AXI_1_BVALID),
        .M_AXI_LITE_rdata(S01_AXI_1_RDATA),
        .M_AXI_LITE_rready(S01_AXI_1_RREADY),
        .M_AXI_LITE_rresp(S01_AXI_1_RRESP),
        .M_AXI_LITE_rvalid(S01_AXI_1_RVALID),
        .M_AXI_LITE_wdata(S01_AXI_1_WDATA),
        .M_AXI_LITE_wready(S01_AXI_1_WREADY),
        .M_AXI_LITE_wstrb(S01_AXI_1_WSTRB),
        .M_AXI_LITE_wvalid(S01_AXI_1_WVALID),
        .M_AXI_araddr(PCIe_M_AXI_ARADDR),
        .M_AXI_arburst(PCIe_M_AXI_ARBURST),
        .M_AXI_arcache(PCIe_M_AXI_ARCACHE),
        .M_AXI_arid(PCIe_M_AXI_ARID),
        .M_AXI_arlen(PCIe_M_AXI_ARLEN),
        .M_AXI_arlock(PCIe_M_AXI_ARLOCK),
        .M_AXI_arprot(PCIe_M_AXI_ARPROT),
        .M_AXI_arready(PCIe_M_AXI_ARREADY),
        .M_AXI_arsize(PCIe_M_AXI_ARSIZE),
        .M_AXI_arvalid(PCIe_M_AXI_ARVALID),
        .M_AXI_awaddr(PCIe_M_AXI_AWADDR),
        .M_AXI_awburst(PCIe_M_AXI_AWBURST),
        .M_AXI_awcache(PCIe_M_AXI_AWCACHE),
        .M_AXI_awid(PCIe_M_AXI_AWID),
        .M_AXI_awlen(PCIe_M_AXI_AWLEN),
        .M_AXI_awlock(PCIe_M_AXI_AWLOCK),
        .M_AXI_awprot(PCIe_M_AXI_AWPROT),
        .M_AXI_awready(PCIe_M_AXI_AWREADY),
        .M_AXI_awsize(PCIe_M_AXI_AWSIZE),
        .M_AXI_awvalid(PCIe_M_AXI_AWVALID),
        .M_AXI_bid(PCIe_M_AXI_BID),
        .M_AXI_bready(PCIe_M_AXI_BREADY),
        .M_AXI_bresp(PCIe_M_AXI_BRESP),
        .M_AXI_bvalid(PCIe_M_AXI_BVALID),
        .M_AXI_rdata(PCIe_M_AXI_RDATA),
        .M_AXI_rid(PCIe_M_AXI_RID),
        .M_AXI_rlast(PCIe_M_AXI_RLAST),
        .M_AXI_rready(PCIe_M_AXI_RREADY),
        .M_AXI_rresp(PCIe_M_AXI_RRESP),
        .M_AXI_rvalid(PCIe_M_AXI_RVALID),
        .M_AXI_wdata(PCIe_M_AXI_WDATA),
        .M_AXI_wlast(PCIe_M_AXI_WLAST),
        .M_AXI_wready(PCIe_M_AXI_WREADY),
        .M_AXI_wstrb(PCIe_M_AXI_WSTRB),
        .M_AXI_wvalid(PCIe_M_AXI_WVALID),
        .axi_aclk(PCIe_axi_aclk),
        .axi_aresetn(PCIe_axi_aresetn),
        .pcie_mgt_rxn(PCIe_pcie_mgt_rxn),
        .pcie_mgt_rxp(PCIe_pcie_mgt_rxp),
        .pcie_mgt_txn(PCIe_pcie_mgt_txn),
        .pcie_mgt_txp(PCIe_pcie_mgt_txp),
        .sys_rst_n(perst_n_1));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC0000000 32 > shell blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(network_clk_156),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(util_vector_logic_2_Res),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  shell_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(vio_0_probe_out0),
        .s_axi_aclk(network_clk_156),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(util_vector_logic_2_Res),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  shell_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(microblaze_0_Clk),
        .ARESETN(util_vector_logic_2_Res),
        .M00_ACLK(network_clk_156),
        .M00_ARESETN(util_vector_logic_2_Res),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(network_clk_156),
        .M01_ARESETN(PCIe_axi_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(network_clk_156),
        .M02_ARESETN(util_vector_logic_2_Res),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(util_vector_logic_2_Res),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_ACLK(PCIe_axi_aclk),
        .S01_ARESETN(PCIe_axi_aresetn),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID));
  shell_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  shell_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(refclk200_1),
        .clk_out1(microblaze_0_Clk));
  shell_gnd_0 gnd
       (.dout(gnd_dout));
  mb_system_imp_VMXBLU mb_system
       (.MB_AXI_araddr(S00_AXI_1_ARADDR),
        .MB_AXI_arprot(S00_AXI_1_ARPROT),
        .MB_AXI_arready(S00_AXI_1_ARREADY),
        .MB_AXI_arvalid(S00_AXI_1_ARVALID),
        .MB_AXI_awaddr(S00_AXI_1_AWADDR),
        .MB_AXI_awprot(S00_AXI_1_AWPROT),
        .MB_AXI_awready(S00_AXI_1_AWREADY),
        .MB_AXI_awvalid(S00_AXI_1_AWVALID),
        .MB_AXI_bready(S00_AXI_1_BREADY),
        .MB_AXI_bresp(S00_AXI_1_BRESP),
        .MB_AXI_bvalid(S00_AXI_1_BVALID),
        .MB_AXI_rdata(S00_AXI_1_RDATA),
        .MB_AXI_rready(S00_AXI_1_RREADY),
        .MB_AXI_rresp(S00_AXI_1_RRESP),
        .MB_AXI_rvalid(S00_AXI_1_RVALID),
        .MB_AXI_wdata(S00_AXI_1_WDATA),
        .MB_AXI_wready(S00_AXI_1_WREADY),
        .MB_AXI_wstrb(S00_AXI_1_WSTRB),
        .MB_AXI_wvalid(S00_AXI_1_WVALID),
        .clk100(microblaze_0_Clk),
        .ext_reset_in(util_vector_logic_2_Res));
  mem_interface_imp_1EJ895G mem_interface
       (.ARESETN(mem_interface_ARESETN),
        .MEM_AXI_0_araddr(S_AXI_MEM_1_ARADDR),
        .MEM_AXI_0_arburst(S_AXI_MEM_1_ARBURST),
        .MEM_AXI_0_arcache(S_AXI_MEM_1_ARCACHE),
        .MEM_AXI_0_arid(S_AXI_MEM_1_ARID),
        .MEM_AXI_0_arlen(S_AXI_MEM_1_ARLEN),
        .MEM_AXI_0_arlock(S_AXI_MEM_1_ARLOCK),
        .MEM_AXI_0_arprot(S_AXI_MEM_1_ARPROT),
        .MEM_AXI_0_arqos(S_AXI_MEM_1_ARQOS),
        .MEM_AXI_0_arready(S_AXI_MEM_1_ARREADY),
        .MEM_AXI_0_arregion(S_AXI_MEM_1_ARREGION),
        .MEM_AXI_0_arsize(S_AXI_MEM_1_ARSIZE),
        .MEM_AXI_0_arvalid(S_AXI_MEM_1_ARVALID),
        .MEM_AXI_0_awaddr(S_AXI_MEM_1_AWADDR),
        .MEM_AXI_0_awburst(S_AXI_MEM_1_AWBURST),
        .MEM_AXI_0_awcache(S_AXI_MEM_1_AWCACHE),
        .MEM_AXI_0_awid(S_AXI_MEM_1_AWID),
        .MEM_AXI_0_awlen(S_AXI_MEM_1_AWLEN),
        .MEM_AXI_0_awlock(S_AXI_MEM_1_AWLOCK),
        .MEM_AXI_0_awprot(S_AXI_MEM_1_AWPROT),
        .MEM_AXI_0_awqos(S_AXI_MEM_1_AWQOS),
        .MEM_AXI_0_awready(S_AXI_MEM_1_AWREADY),
        .MEM_AXI_0_awregion(S_AXI_MEM_1_AWREGION),
        .MEM_AXI_0_awsize(S_AXI_MEM_1_AWSIZE),
        .MEM_AXI_0_awvalid(S_AXI_MEM_1_AWVALID),
        .MEM_AXI_0_bid(S_AXI_MEM_1_BID),
        .MEM_AXI_0_bready(S_AXI_MEM_1_BREADY),
        .MEM_AXI_0_bresp(S_AXI_MEM_1_BRESP),
        .MEM_AXI_0_bvalid(S_AXI_MEM_1_BVALID),
        .MEM_AXI_0_rdata(S_AXI_MEM_1_RDATA),
        .MEM_AXI_0_rid(S_AXI_MEM_1_RID),
        .MEM_AXI_0_rlast(S_AXI_MEM_1_RLAST),
        .MEM_AXI_0_rready(S_AXI_MEM_1_RREADY),
        .MEM_AXI_0_rresp(S_AXI_MEM_1_RRESP),
        .MEM_AXI_0_rvalid(S_AXI_MEM_1_RVALID),
        .MEM_AXI_0_wdata(S_AXI_MEM_1_WDATA),
        .MEM_AXI_0_wlast(S_AXI_MEM_1_WLAST),
        .MEM_AXI_0_wready(S_AXI_MEM_1_WREADY),
        .MEM_AXI_0_wstrb(S_AXI_MEM_1_WSTRB),
        .MEM_AXI_0_wvalid(S_AXI_MEM_1_WVALID),
        .MEM_AXI_1_araddr(S_AXI_MEM_1_1_ARADDR),
        .MEM_AXI_1_arburst(S_AXI_MEM_1_1_ARBURST),
        .MEM_AXI_1_arcache(S_AXI_MEM_1_1_ARCACHE),
        .MEM_AXI_1_arid(S_AXI_MEM_1_1_ARID),
        .MEM_AXI_1_arlen(S_AXI_MEM_1_1_ARLEN),
        .MEM_AXI_1_arlock(S_AXI_MEM_1_1_ARLOCK),
        .MEM_AXI_1_arprot(S_AXI_MEM_1_1_ARPROT),
        .MEM_AXI_1_arqos(S_AXI_MEM_1_1_ARQOS),
        .MEM_AXI_1_arready(S_AXI_MEM_1_1_ARREADY),
        .MEM_AXI_1_arregion(S_AXI_MEM_1_1_ARREGION),
        .MEM_AXI_1_arsize(S_AXI_MEM_1_1_ARSIZE),
        .MEM_AXI_1_arvalid(S_AXI_MEM_1_1_ARVALID),
        .MEM_AXI_1_awaddr(S_AXI_MEM_1_1_AWADDR),
        .MEM_AXI_1_awburst(S_AXI_MEM_1_1_AWBURST),
        .MEM_AXI_1_awcache(S_AXI_MEM_1_1_AWCACHE),
        .MEM_AXI_1_awid(S_AXI_MEM_1_1_AWID),
        .MEM_AXI_1_awlen(S_AXI_MEM_1_1_AWLEN),
        .MEM_AXI_1_awlock(S_AXI_MEM_1_1_AWLOCK),
        .MEM_AXI_1_awprot(S_AXI_MEM_1_1_AWPROT),
        .MEM_AXI_1_awqos(S_AXI_MEM_1_1_AWQOS),
        .MEM_AXI_1_awready(S_AXI_MEM_1_1_AWREADY),
        .MEM_AXI_1_awregion(S_AXI_MEM_1_1_AWREGION),
        .MEM_AXI_1_awsize(S_AXI_MEM_1_1_AWSIZE),
        .MEM_AXI_1_awvalid(S_AXI_MEM_1_1_AWVALID),
        .MEM_AXI_1_bid(S_AXI_MEM_1_1_BID),
        .MEM_AXI_1_bready(S_AXI_MEM_1_1_BREADY),
        .MEM_AXI_1_bresp(S_AXI_MEM_1_1_BRESP),
        .MEM_AXI_1_bvalid(S_AXI_MEM_1_1_BVALID),
        .MEM_AXI_1_rdata(S_AXI_MEM_1_1_RDATA),
        .MEM_AXI_1_rid(S_AXI_MEM_1_1_RID),
        .MEM_AXI_1_rlast(S_AXI_MEM_1_1_RLAST),
        .MEM_AXI_1_rready(S_AXI_MEM_1_1_RREADY),
        .MEM_AXI_1_rresp(S_AXI_MEM_1_1_RRESP),
        .MEM_AXI_1_rvalid(S_AXI_MEM_1_1_RVALID),
        .MEM_AXI_1_wdata(S_AXI_MEM_1_1_WDATA),
        .MEM_AXI_1_wlast(S_AXI_MEM_1_1_WLAST),
        .MEM_AXI_1_wready(S_AXI_MEM_1_1_WREADY),
        .MEM_AXI_1_wstrb(S_AXI_MEM_1_1_WSTRB),
        .MEM_AXI_1_wvalid(S_AXI_MEM_1_1_WVALID),
        .PCIE_ACLK(PCIe_axi_aclk),
        .PCIE_AXI_araddr(PCIe_M_AXI_ARADDR),
        .PCIE_AXI_arburst(PCIe_M_AXI_ARBURST),
        .PCIE_AXI_arcache(PCIe_M_AXI_ARCACHE),
        .PCIE_AXI_arid(PCIe_M_AXI_ARID),
        .PCIE_AXI_arlen(PCIe_M_AXI_ARLEN),
        .PCIE_AXI_arlock(PCIe_M_AXI_ARLOCK),
        .PCIE_AXI_arprot(PCIe_M_AXI_ARPROT),
        .PCIE_AXI_arready(PCIe_M_AXI_ARREADY),
        .PCIE_AXI_arsize(PCIe_M_AXI_ARSIZE),
        .PCIE_AXI_arvalid(PCIe_M_AXI_ARVALID),
        .PCIE_AXI_awaddr(PCIe_M_AXI_AWADDR),
        .PCIE_AXI_awburst(PCIe_M_AXI_AWBURST),
        .PCIE_AXI_awcache(PCIe_M_AXI_AWCACHE),
        .PCIE_AXI_awid(PCIe_M_AXI_AWID),
        .PCIE_AXI_awlen(PCIe_M_AXI_AWLEN),
        .PCIE_AXI_awlock(PCIe_M_AXI_AWLOCK),
        .PCIE_AXI_awprot(PCIe_M_AXI_AWPROT),
        .PCIE_AXI_awready(PCIe_M_AXI_AWREADY),
        .PCIE_AXI_awsize(PCIe_M_AXI_AWSIZE),
        .PCIE_AXI_awvalid(PCIe_M_AXI_AWVALID),
        .PCIE_AXI_bid(PCIe_M_AXI_BID),
        .PCIE_AXI_bready(PCIe_M_AXI_BREADY),
        .PCIE_AXI_bresp(PCIe_M_AXI_BRESP),
        .PCIE_AXI_bvalid(PCIe_M_AXI_BVALID),
        .PCIE_AXI_rdata(PCIe_M_AXI_RDATA),
        .PCIE_AXI_rid(PCIe_M_AXI_RID),
        .PCIE_AXI_rlast(PCIe_M_AXI_RLAST),
        .PCIE_AXI_rready(PCIe_M_AXI_RREADY),
        .PCIE_AXI_rresp(PCIe_M_AXI_RRESP),
        .PCIE_AXI_rvalid(PCIe_M_AXI_RVALID),
        .PCIE_AXI_wdata(PCIe_M_AXI_WDATA),
        .PCIE_AXI_wlast(PCIe_M_AXI_WLAST),
        .PCIE_AXI_wready(PCIe_M_AXI_WREADY),
        .PCIE_AXI_wstrb(PCIe_M_AXI_WSTRB),
        .PCIE_AXI_wvalid(PCIe_M_AXI_WVALID),
        .S_ARESETN(util_vector_logic_2_Res),
        .c0_ddr4_act_n(mem_interface_c0_ddr4_ACT_N),
        .c0_ddr4_adr(mem_interface_c0_ddr4_ADR),
        .c0_ddr4_ba(mem_interface_c0_ddr4_BA),
        .c0_ddr4_bg(mem_interface_c0_ddr4_BG),
        .c0_ddr4_ck_c(mem_interface_c0_ddr4_CK_C),
        .c0_ddr4_ck_t(mem_interface_c0_ddr4_CK_T),
        .c0_ddr4_cke(mem_interface_c0_ddr4_CKE),
        .c0_ddr4_cs_n(mem_interface_c0_ddr4_CS_N),
        .c0_ddr4_dm_n(c0_ddr4_dm_n[7:0]),
        .c0_ddr4_dq(c0_ddr4_dq[63:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(mem_interface_c0_ddr4_ODT),
        .c0_ddr4_reset_n(mem_interface_c0_ddr4_RESET_N),
        .c0_sys_clk_clk_n(c0_sys_clk_1_CLK_N),
        .c0_sys_clk_clk_p(c0_sys_clk_1_CLK_P),
        .c1_ddr4_act_n(mem_interface_c1_ddr4_ACT_N),
        .c1_ddr4_adr(mem_interface_c1_ddr4_ADR),
        .c1_ddr4_ba(mem_interface_c1_ddr4_BA),
        .c1_ddr4_bg(mem_interface_c1_ddr4_BG),
        .c1_ddr4_ck_c(mem_interface_c1_ddr4_CK_C),
        .c1_ddr4_ck_t(mem_interface_c1_ddr4_CK_T),
        .c1_ddr4_cke(mem_interface_c1_ddr4_CKE),
        .c1_ddr4_cs_n(mem_interface_c1_ddr4_CS_N),
        .c1_ddr4_dm_n(c1_ddr4_dm_n[7:0]),
        .c1_ddr4_dq(c1_ddr4_dq[63:0]),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c[7:0]),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t[7:0]),
        .c1_ddr4_odt(mem_interface_c1_ddr4_ODT),
        .c1_ddr4_reset_n(mem_interface_c1_ddr4_RESET_N),
        .c1_sys_clk_clk_n(c1_sys_clk_1_CLK_N),
        .c1_sys_clk_clk_p(c1_sys_clk_1_CLK_P),
        .clk156_25(network_clk_156),
        .sys_rst(sys_rst_1));
  network_imp_10F7WL8 network
       (.M_AXIS_tdata(network_M_AXIS_TDATA),
        .M_AXIS_tkeep(network_M_AXIS_TKEEP),
        .M_AXIS_tlast(network_M_AXIS_TLAST),
        .M_AXIS_tready(network_M_AXIS_TREADY),
        .M_AXIS_tvalid(network_M_AXIS_TVALID),
        .S_AXIS_tdata(S_AXIS_1_TDATA),
        .S_AXIS_tkeep(S_AXIS_1_TKEEP),
        .S_AXIS_tlast(S_AXIS_1_TLAST),
        .S_AXIS_tready(S_AXIS_1_TREADY),
        .S_AXIS_tvalid(S_AXIS_1_TVALID),
        .aresetn(util_vector_logic_2_Res),
        .clk_100(microblaze_0_Clk),
        .clk_156(network_clk_156),
        .network_reset_done(network_network_reset_done),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(util_vector_logic_1_Res),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .txn(network_txn),
        .txp(network_txp));
  shell_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(S_AXI_MEM_1_ARADDR),
        .SLOT_0_AXI_arburst(S_AXI_MEM_1_ARBURST),
        .SLOT_0_AXI_arcache(S_AXI_MEM_1_ARCACHE),
        .SLOT_0_AXI_arid(S_AXI_MEM_1_ARID),
        .SLOT_0_AXI_arlen(S_AXI_MEM_1_ARLEN),
        .SLOT_0_AXI_arlock(S_AXI_MEM_1_ARLOCK),
        .SLOT_0_AXI_arprot(S_AXI_MEM_1_ARPROT),
        .SLOT_0_AXI_arqos(S_AXI_MEM_1_ARQOS),
        .SLOT_0_AXI_arready(S_AXI_MEM_1_ARREADY),
        .SLOT_0_AXI_arregion(S_AXI_MEM_1_ARREGION),
        .SLOT_0_AXI_arsize(S_AXI_MEM_1_ARSIZE),
        .SLOT_0_AXI_arvalid(S_AXI_MEM_1_ARVALID),
        .SLOT_0_AXI_awaddr(S_AXI_MEM_1_AWADDR),
        .SLOT_0_AXI_awburst(S_AXI_MEM_1_AWBURST),
        .SLOT_0_AXI_awcache(S_AXI_MEM_1_AWCACHE),
        .SLOT_0_AXI_awid(S_AXI_MEM_1_AWID),
        .SLOT_0_AXI_awlen(S_AXI_MEM_1_AWLEN),
        .SLOT_0_AXI_awlock(S_AXI_MEM_1_AWLOCK),
        .SLOT_0_AXI_awprot(S_AXI_MEM_1_AWPROT),
        .SLOT_0_AXI_awqos(S_AXI_MEM_1_AWQOS),
        .SLOT_0_AXI_awready(S_AXI_MEM_1_AWREADY),
        .SLOT_0_AXI_awregion(S_AXI_MEM_1_AWREGION),
        .SLOT_0_AXI_awsize(S_AXI_MEM_1_AWSIZE),
        .SLOT_0_AXI_awvalid(S_AXI_MEM_1_AWVALID),
        .SLOT_0_AXI_bid(S_AXI_MEM_1_BID),
        .SLOT_0_AXI_bready(S_AXI_MEM_1_BREADY),
        .SLOT_0_AXI_bresp(S_AXI_MEM_1_BRESP),
        .SLOT_0_AXI_bvalid(S_AXI_MEM_1_BVALID),
        .SLOT_0_AXI_rdata(S_AXI_MEM_1_RDATA),
        .SLOT_0_AXI_rid(S_AXI_MEM_1_RID),
        .SLOT_0_AXI_rlast(S_AXI_MEM_1_RLAST),
        .SLOT_0_AXI_rready(S_AXI_MEM_1_RREADY),
        .SLOT_0_AXI_rresp(S_AXI_MEM_1_RRESP),
        .SLOT_0_AXI_rvalid(S_AXI_MEM_1_RVALID),
        .SLOT_0_AXI_wdata(S_AXI_MEM_1_WDATA),
        .SLOT_0_AXI_wlast(S_AXI_MEM_1_WLAST),
        .SLOT_0_AXI_wready(S_AXI_MEM_1_WREADY),
        .SLOT_0_AXI_wstrb(S_AXI_MEM_1_WSTRB),
        .SLOT_0_AXI_wvalid(S_AXI_MEM_1_WVALID),
        .SLOT_1_AXI_araddr(S_AXI_MEM_1_1_ARADDR),
        .SLOT_1_AXI_arburst(S_AXI_MEM_1_1_ARBURST),
        .SLOT_1_AXI_arcache(S_AXI_MEM_1_1_ARCACHE),
        .SLOT_1_AXI_arid(S_AXI_MEM_1_1_ARID),
        .SLOT_1_AXI_arlen(S_AXI_MEM_1_1_ARLEN),
        .SLOT_1_AXI_arlock(S_AXI_MEM_1_1_ARLOCK),
        .SLOT_1_AXI_arprot(S_AXI_MEM_1_1_ARPROT),
        .SLOT_1_AXI_arqos(S_AXI_MEM_1_1_ARQOS),
        .SLOT_1_AXI_arready(S_AXI_MEM_1_1_ARREADY),
        .SLOT_1_AXI_arregion(S_AXI_MEM_1_1_ARREGION),
        .SLOT_1_AXI_arsize(S_AXI_MEM_1_1_ARSIZE),
        .SLOT_1_AXI_arvalid(S_AXI_MEM_1_1_ARVALID),
        .SLOT_1_AXI_awaddr(S_AXI_MEM_1_1_AWADDR),
        .SLOT_1_AXI_awburst(S_AXI_MEM_1_1_AWBURST),
        .SLOT_1_AXI_awcache(S_AXI_MEM_1_1_AWCACHE),
        .SLOT_1_AXI_awid(S_AXI_MEM_1_1_AWID),
        .SLOT_1_AXI_awlen(S_AXI_MEM_1_1_AWLEN),
        .SLOT_1_AXI_awlock(S_AXI_MEM_1_1_AWLOCK),
        .SLOT_1_AXI_awprot(S_AXI_MEM_1_1_AWPROT),
        .SLOT_1_AXI_awqos(S_AXI_MEM_1_1_AWQOS),
        .SLOT_1_AXI_awready(S_AXI_MEM_1_1_AWREADY),
        .SLOT_1_AXI_awregion(S_AXI_MEM_1_1_AWREGION),
        .SLOT_1_AXI_awsize(S_AXI_MEM_1_1_AWSIZE),
        .SLOT_1_AXI_awvalid(S_AXI_MEM_1_1_AWVALID),
        .SLOT_1_AXI_bid(S_AXI_MEM_1_1_BID),
        .SLOT_1_AXI_bready(S_AXI_MEM_1_1_BREADY),
        .SLOT_1_AXI_bresp(S_AXI_MEM_1_1_BRESP),
        .SLOT_1_AXI_bvalid(S_AXI_MEM_1_1_BVALID),
        .SLOT_1_AXI_rdata(S_AXI_MEM_1_1_RDATA),
        .SLOT_1_AXI_rid(S_AXI_MEM_1_1_RID),
        .SLOT_1_AXI_rlast(S_AXI_MEM_1_1_RLAST),
        .SLOT_1_AXI_rready(S_AXI_MEM_1_1_RREADY),
        .SLOT_1_AXI_rresp(S_AXI_MEM_1_1_RRESP),
        .SLOT_1_AXI_rvalid(S_AXI_MEM_1_1_RVALID),
        .SLOT_1_AXI_wdata(S_AXI_MEM_1_1_WDATA),
        .SLOT_1_AXI_wlast(S_AXI_MEM_1_1_WLAST),
        .SLOT_1_AXI_wready(S_AXI_MEM_1_1_WREADY),
        .SLOT_1_AXI_wstrb(S_AXI_MEM_1_1_WSTRB),
        .SLOT_1_AXI_wvalid(S_AXI_MEM_1_1_WVALID),
        .SLOT_2_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .SLOT_2_AXI_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .SLOT_2_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .SLOT_2_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .SLOT_2_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .SLOT_2_AXI_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .SLOT_2_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .SLOT_2_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .SLOT_2_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .SLOT_2_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .SLOT_2_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .SLOT_2_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .SLOT_2_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .SLOT_2_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .SLOT_2_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .SLOT_2_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .SLOT_2_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .SLOT_2_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .SLOT_2_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .SLOT_3_AXIS_tdata(S_AXIS_1_TDATA),
        .SLOT_3_AXIS_tkeep(S_AXIS_1_TKEEP),
        .SLOT_3_AXIS_tlast(S_AXIS_1_TLAST),
        .SLOT_3_AXIS_tready(S_AXIS_1_TREADY),
        .SLOT_3_AXIS_tvalid(S_AXIS_1_TVALID),
        .SLOT_4_AXIS_tdata(network_M_AXIS_TDATA),
        .SLOT_4_AXIS_tkeep(network_M_AXIS_TKEEP),
        .SLOT_4_AXIS_tlast(network_M_AXIS_TLAST),
        .SLOT_4_AXIS_tready(network_M_AXIS_TREADY),
        .SLOT_4_AXIS_tvalid(network_M_AXIS_TVALID),
        .clk(network_clk_156),
        .resetn(1'b1));
  shell_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(perst_n_1),
        .Op2(network_network_reset_done),
        .Res(util_vector_logic_0_Res));
  shell_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(perst_n_1),
        .Res(util_vector_logic_1_Res));
  shell_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(PCIe_axi_aresetn),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
  shell_util_vector_logic_3_0 util_vector_logic_3
       (.Op1(util_vector_logic_2_Res),
        .Res(sys_rst_1));
  shell_vio_0_0 vio_0
       (.clk(network_clk_156),
        .probe_out0(vio_0_probe_out0));
endmodule

module shell_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [11:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [11:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [8:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [8:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARPROT;
  wire axi_interconnect_0_to_s01_couplers_ARREADY;
  wire axi_interconnect_0_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWPROT;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_RDATA;
  wire axi_interconnect_0_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_RRESP;
  wire axi_interconnect_0_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire [11:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [11:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_0_ARPROT;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_0_AWPROT;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[11:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[11:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[8:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[8:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_interconnect_0_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_interconnect_0_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rresp[1:0] = axi_interconnect_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign axi_interconnect_0_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  m00_couplers_imp_17RNK4V m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_A2B4UF m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_ERMJ3Y m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_1KJMYX0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_VOMHM4 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s01_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  shell_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module shell_ddr0_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [255:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [255:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [31:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire [63:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [3:0]S01_AXI_1_ARID;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [0:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [63:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [3:0]S01_AXI_1_AWID;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [0:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire [3:0]S01_AXI_1_BID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [255:0]S01_AXI_1_RDATA;
  wire [3:0]S01_AXI_1_RID;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [255:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [31:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire ddr0_interconnect_ACLK_net;
  wire ddr0_interconnect_ARESETN_net;
  wire [31:0]ddr0_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]ddr0_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]ddr0_interconnect_to_s00_couplers_ARCACHE;
  wire [0:0]ddr0_interconnect_to_s00_couplers_ARID;
  wire [7:0]ddr0_interconnect_to_s00_couplers_ARLEN;
  wire [0:0]ddr0_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]ddr0_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]ddr0_interconnect_to_s00_couplers_ARQOS;
  wire ddr0_interconnect_to_s00_couplers_ARREADY;
  wire [3:0]ddr0_interconnect_to_s00_couplers_ARREGION;
  wire [2:0]ddr0_interconnect_to_s00_couplers_ARSIZE;
  wire ddr0_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]ddr0_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]ddr0_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]ddr0_interconnect_to_s00_couplers_AWCACHE;
  wire [0:0]ddr0_interconnect_to_s00_couplers_AWID;
  wire [7:0]ddr0_interconnect_to_s00_couplers_AWLEN;
  wire [0:0]ddr0_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]ddr0_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]ddr0_interconnect_to_s00_couplers_AWQOS;
  wire ddr0_interconnect_to_s00_couplers_AWREADY;
  wire [3:0]ddr0_interconnect_to_s00_couplers_AWREGION;
  wire [2:0]ddr0_interconnect_to_s00_couplers_AWSIZE;
  wire ddr0_interconnect_to_s00_couplers_AWVALID;
  wire [0:0]ddr0_interconnect_to_s00_couplers_BID;
  wire ddr0_interconnect_to_s00_couplers_BREADY;
  wire [1:0]ddr0_interconnect_to_s00_couplers_BRESP;
  wire ddr0_interconnect_to_s00_couplers_BVALID;
  wire [511:0]ddr0_interconnect_to_s00_couplers_RDATA;
  wire [0:0]ddr0_interconnect_to_s00_couplers_RID;
  wire ddr0_interconnect_to_s00_couplers_RLAST;
  wire ddr0_interconnect_to_s00_couplers_RREADY;
  wire [1:0]ddr0_interconnect_to_s00_couplers_RRESP;
  wire ddr0_interconnect_to_s00_couplers_RVALID;
  wire [511:0]ddr0_interconnect_to_s00_couplers_WDATA;
  wire ddr0_interconnect_to_s00_couplers_WLAST;
  wire ddr0_interconnect_to_s00_couplers_WREADY;
  wire [63:0]ddr0_interconnect_to_s00_couplers_WSTRB;
  wire ddr0_interconnect_to_s00_couplers_WVALID;
  wire [63:0]m00_couplers_to_ddr0_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_ddr0_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_ddr0_interconnect_ARCACHE;
  wire [1:0]m00_couplers_to_ddr0_interconnect_ARID;
  wire [7:0]m00_couplers_to_ddr0_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_ddr0_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_ddr0_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_ddr0_interconnect_ARQOS;
  wire [0:0]m00_couplers_to_ddr0_interconnect_ARREADY;
  wire [2:0]m00_couplers_to_ddr0_interconnect_ARSIZE;
  wire [0:0]m00_couplers_to_ddr0_interconnect_ARVALID;
  wire [63:0]m00_couplers_to_ddr0_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_ddr0_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_ddr0_interconnect_AWCACHE;
  wire [1:0]m00_couplers_to_ddr0_interconnect_AWID;
  wire [7:0]m00_couplers_to_ddr0_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_ddr0_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_ddr0_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_ddr0_interconnect_AWQOS;
  wire [0:0]m00_couplers_to_ddr0_interconnect_AWREADY;
  wire [2:0]m00_couplers_to_ddr0_interconnect_AWSIZE;
  wire [0:0]m00_couplers_to_ddr0_interconnect_AWVALID;
  wire [1:0]m00_couplers_to_ddr0_interconnect_BID;
  wire [0:0]m00_couplers_to_ddr0_interconnect_BREADY;
  wire [1:0]m00_couplers_to_ddr0_interconnect_BRESP;
  wire [0:0]m00_couplers_to_ddr0_interconnect_BVALID;
  wire [511:0]m00_couplers_to_ddr0_interconnect_RDATA;
  wire [1:0]m00_couplers_to_ddr0_interconnect_RID;
  wire [0:0]m00_couplers_to_ddr0_interconnect_RLAST;
  wire [0:0]m00_couplers_to_ddr0_interconnect_RREADY;
  wire [1:0]m00_couplers_to_ddr0_interconnect_RRESP;
  wire [0:0]m00_couplers_to_ddr0_interconnect_RVALID;
  wire [511:0]m00_couplers_to_ddr0_interconnect_WDATA;
  wire [0:0]m00_couplers_to_ddr0_interconnect_WLAST;
  wire [0:0]m00_couplers_to_ddr0_interconnect_WREADY;
  wire [63:0]m00_couplers_to_ddr0_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_ddr0_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [0:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [0:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [1:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [1:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [3:0]s01_mmu_M_AXI_ARID;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [63:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [3:0]s01_mmu_M_AXI_AWID;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire [3:0]s01_mmu_M_AXI_BID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [255:0]s01_mmu_M_AXI_RDATA;
  wire [3:0]s01_mmu_M_AXI_RID;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [255:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [31:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_ddr0_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_ddr0_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_ddr0_interconnect_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_ddr0_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_ddr0_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_ddr0_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ddr0_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_ddr0_interconnect_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_ddr0_interconnect_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ddr0_interconnect_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_ddr0_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_ddr0_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_ddr0_interconnect_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_ddr0_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_ddr0_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_ddr0_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ddr0_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_ddr0_interconnect_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_ddr0_interconnect_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ddr0_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ddr0_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ddr0_interconnect_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_ddr0_interconnect_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_ddr0_interconnect_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_ddr0_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ddr0_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ddr0_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ddr0_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = ddr0_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ddr0_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ddr0_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = ddr0_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = ddr0_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = ddr0_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ddr0_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ddr0_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ddr0_interconnect_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[63:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARID = S01_AXI_arid[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[63:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWID = S01_AXI_awid[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[255:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[31:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bid[3:0] = S01_AXI_1_BID;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[255:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rid[3:0] = S01_AXI_1_RID;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign ddr0_interconnect_ACLK_net = ACLK;
  assign ddr0_interconnect_ARESETN_net = ARESETN;
  assign ddr0_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ddr0_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ddr0_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ddr0_interconnect_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign ddr0_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ddr0_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ddr0_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ddr0_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ddr0_interconnect_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign ddr0_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ddr0_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ddr0_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ddr0_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ddr0_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ddr0_interconnect_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign ddr0_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ddr0_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ddr0_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ddr0_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ddr0_interconnect_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign ddr0_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ddr0_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ddr0_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ddr0_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ddr0_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign ddr0_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ddr0_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign ddr0_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_ddr0_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ddr0_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ddr0_interconnect_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_ddr0_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ddr0_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ddr0_interconnect_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_ddr0_interconnect_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_ddr0_interconnect_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_ddr0_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ddr0_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ddr0_interconnect_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_4J5AN7 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ddr0_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_ddr0_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_ddr0_interconnect_ARCACHE),
        .M_AXI_arid(m00_couplers_to_ddr0_interconnect_ARID),
        .M_AXI_arlen(m00_couplers_to_ddr0_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_ddr0_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_ddr0_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_ddr0_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_ddr0_interconnect_ARREADY),
        .M_AXI_arsize(m00_couplers_to_ddr0_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_ddr0_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ddr0_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_ddr0_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_ddr0_interconnect_AWCACHE),
        .M_AXI_awid(m00_couplers_to_ddr0_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_ddr0_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_ddr0_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_ddr0_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_ddr0_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_ddr0_interconnect_AWREADY),
        .M_AXI_awsize(m00_couplers_to_ddr0_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_ddr0_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_ddr0_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_ddr0_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_ddr0_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ddr0_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_ddr0_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_ddr0_interconnect_RID),
        .M_AXI_rlast(m00_couplers_to_ddr0_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_ddr0_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_ddr0_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ddr0_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_ddr0_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_ddr0_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_ddr0_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ddr0_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ddr0_interconnect_WVALID),
        .S_ACLK(ddr0_interconnect_ACLK_net),
        .S_ARESETN(ddr0_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_JGGR7S s00_couplers
       (.M_ACLK(ddr0_interconnect_ACLK_net),
        .M_ARESETN(ddr0_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ddr0_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ddr0_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ddr0_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ddr0_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(ddr0_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ddr0_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ddr0_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ddr0_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(ddr0_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arregion(ddr0_interconnect_to_s00_couplers_ARREGION),
        .S_AXI_arsize(ddr0_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ddr0_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ddr0_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ddr0_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ddr0_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ddr0_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(ddr0_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ddr0_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ddr0_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ddr0_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(ddr0_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awregion(ddr0_interconnect_to_s00_couplers_AWREGION),
        .S_AXI_awsize(ddr0_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ddr0_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(ddr0_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(ddr0_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(ddr0_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ddr0_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(ddr0_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(ddr0_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(ddr0_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(ddr0_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(ddr0_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ddr0_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(ddr0_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(ddr0_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(ddr0_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ddr0_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ddr0_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_1YZPESG s01_couplers
       (.M_ACLK(ddr0_interconnect_ACLK_net),
        .M_ARESETN(ddr0_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arid(s01_mmu_M_AXI_ARID),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s01_mmu_M_AXI_AWID),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s01_mmu_M_AXI_BID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rid(s01_mmu_M_AXI_RID),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  shell_s01_mmu_0 s01_mmu
       (.aclk(S01_ACLK_1),
        .aresetn(S01_ARESETN_1),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s01_mmu_M_AXI_ARID),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s01_mmu_M_AXI_AWID),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bid(s01_mmu_M_AXI_BID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rid(s01_mmu_M_AXI_RID),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arid(S01_AXI_1_ARID),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(S01_AXI_1_ARLOCK),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst(S01_AXI_1_AWBURST),
        .s_axi_awcache(S01_AXI_1_AWCACHE),
        .s_axi_awid(S01_AXI_1_AWID),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(S01_AXI_1_AWLOCK),
        .s_axi_awprot(S01_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize(S01_AXI_1_AWSIZE),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bid(S01_AXI_1_BID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bresp(S01_AXI_1_BRESP),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rid(S01_AXI_1_RID),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  shell_xbar_2 xbar
       (.aclk(ddr0_interconnect_ACLK_net),
        .aresetn(ddr0_interconnect_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module shell_ddr1_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ddr1_interconnect_ACLK_net;
  wire ddr1_interconnect_ARESETN_net;
  wire [31:0]ddr1_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]ddr1_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]ddr1_interconnect_to_s00_couplers_ARCACHE;
  wire [0:0]ddr1_interconnect_to_s00_couplers_ARID;
  wire [7:0]ddr1_interconnect_to_s00_couplers_ARLEN;
  wire [0:0]ddr1_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]ddr1_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]ddr1_interconnect_to_s00_couplers_ARQOS;
  wire ddr1_interconnect_to_s00_couplers_ARREADY;
  wire [3:0]ddr1_interconnect_to_s00_couplers_ARREGION;
  wire [2:0]ddr1_interconnect_to_s00_couplers_ARSIZE;
  wire ddr1_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]ddr1_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]ddr1_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]ddr1_interconnect_to_s00_couplers_AWCACHE;
  wire [0:0]ddr1_interconnect_to_s00_couplers_AWID;
  wire [7:0]ddr1_interconnect_to_s00_couplers_AWLEN;
  wire [0:0]ddr1_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]ddr1_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]ddr1_interconnect_to_s00_couplers_AWQOS;
  wire ddr1_interconnect_to_s00_couplers_AWREADY;
  wire [3:0]ddr1_interconnect_to_s00_couplers_AWREGION;
  wire [2:0]ddr1_interconnect_to_s00_couplers_AWSIZE;
  wire ddr1_interconnect_to_s00_couplers_AWVALID;
  wire [0:0]ddr1_interconnect_to_s00_couplers_BID;
  wire ddr1_interconnect_to_s00_couplers_BREADY;
  wire [1:0]ddr1_interconnect_to_s00_couplers_BRESP;
  wire ddr1_interconnect_to_s00_couplers_BVALID;
  wire [511:0]ddr1_interconnect_to_s00_couplers_RDATA;
  wire [0:0]ddr1_interconnect_to_s00_couplers_RID;
  wire ddr1_interconnect_to_s00_couplers_RLAST;
  wire ddr1_interconnect_to_s00_couplers_RREADY;
  wire [1:0]ddr1_interconnect_to_s00_couplers_RRESP;
  wire ddr1_interconnect_to_s00_couplers_RVALID;
  wire [511:0]ddr1_interconnect_to_s00_couplers_WDATA;
  wire ddr1_interconnect_to_s00_couplers_WLAST;
  wire ddr1_interconnect_to_s00_couplers_WREADY;
  wire [63:0]ddr1_interconnect_to_s00_couplers_WSTRB;
  wire ddr1_interconnect_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ddr1_interconnect_ARADDR;
  wire [1:0]s00_couplers_to_ddr1_interconnect_ARBURST;
  wire [3:0]s00_couplers_to_ddr1_interconnect_ARCACHE;
  wire [0:0]s00_couplers_to_ddr1_interconnect_ARID;
  wire [7:0]s00_couplers_to_ddr1_interconnect_ARLEN;
  wire [0:0]s00_couplers_to_ddr1_interconnect_ARLOCK;
  wire [2:0]s00_couplers_to_ddr1_interconnect_ARPROT;
  wire [3:0]s00_couplers_to_ddr1_interconnect_ARQOS;
  wire s00_couplers_to_ddr1_interconnect_ARREADY;
  wire [2:0]s00_couplers_to_ddr1_interconnect_ARSIZE;
  wire s00_couplers_to_ddr1_interconnect_ARVALID;
  wire [31:0]s00_couplers_to_ddr1_interconnect_AWADDR;
  wire [1:0]s00_couplers_to_ddr1_interconnect_AWBURST;
  wire [3:0]s00_couplers_to_ddr1_interconnect_AWCACHE;
  wire [0:0]s00_couplers_to_ddr1_interconnect_AWID;
  wire [7:0]s00_couplers_to_ddr1_interconnect_AWLEN;
  wire [0:0]s00_couplers_to_ddr1_interconnect_AWLOCK;
  wire [2:0]s00_couplers_to_ddr1_interconnect_AWPROT;
  wire [3:0]s00_couplers_to_ddr1_interconnect_AWQOS;
  wire s00_couplers_to_ddr1_interconnect_AWREADY;
  wire [2:0]s00_couplers_to_ddr1_interconnect_AWSIZE;
  wire s00_couplers_to_ddr1_interconnect_AWVALID;
  wire [0:0]s00_couplers_to_ddr1_interconnect_BID;
  wire s00_couplers_to_ddr1_interconnect_BREADY;
  wire [1:0]s00_couplers_to_ddr1_interconnect_BRESP;
  wire s00_couplers_to_ddr1_interconnect_BVALID;
  wire [511:0]s00_couplers_to_ddr1_interconnect_RDATA;
  wire [0:0]s00_couplers_to_ddr1_interconnect_RID;
  wire s00_couplers_to_ddr1_interconnect_RLAST;
  wire s00_couplers_to_ddr1_interconnect_RREADY;
  wire [1:0]s00_couplers_to_ddr1_interconnect_RRESP;
  wire s00_couplers_to_ddr1_interconnect_RVALID;
  wire [511:0]s00_couplers_to_ddr1_interconnect_WDATA;
  wire s00_couplers_to_ddr1_interconnect_WLAST;
  wire s00_couplers_to_ddr1_interconnect_WREADY;
  wire [63:0]s00_couplers_to_ddr1_interconnect_WSTRB;
  wire s00_couplers_to_ddr1_interconnect_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ddr1_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_ddr1_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_ddr1_interconnect_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_ddr1_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_ddr1_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_ddr1_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_ddr1_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_ddr1_interconnect_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_ddr1_interconnect_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_ddr1_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ddr1_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_ddr1_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_ddr1_interconnect_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_ddr1_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_ddr1_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_ddr1_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_ddr1_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_ddr1_interconnect_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_ddr1_interconnect_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_ddr1_interconnect_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ddr1_interconnect_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ddr1_interconnect_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_ddr1_interconnect_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_ddr1_interconnect_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_ddr1_interconnect_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ddr1_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ddr1_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ddr1_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = ddr1_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ddr1_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ddr1_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = ddr1_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = ddr1_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = ddr1_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ddr1_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ddr1_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ddr1_interconnect_to_s00_couplers_WREADY;
  assign ddr1_interconnect_ACLK_net = M00_ACLK;
  assign ddr1_interconnect_ARESETN_net = M00_ARESETN;
  assign ddr1_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ddr1_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ddr1_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ddr1_interconnect_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign ddr1_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ddr1_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ddr1_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ddr1_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ddr1_interconnect_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign ddr1_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ddr1_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ddr1_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ddr1_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ddr1_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ddr1_interconnect_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign ddr1_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ddr1_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ddr1_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ddr1_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ddr1_interconnect_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign ddr1_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ddr1_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ddr1_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ddr1_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ddr1_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign ddr1_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ddr1_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign ddr1_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ddr1_interconnect_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ddr1_interconnect_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ddr1_interconnect_BID = M00_AXI_bid[0];
  assign s00_couplers_to_ddr1_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ddr1_interconnect_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ddr1_interconnect_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_ddr1_interconnect_RID = M00_AXI_rid[0];
  assign s00_couplers_to_ddr1_interconnect_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_ddr1_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ddr1_interconnect_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ddr1_interconnect_WREADY = M00_AXI_wready;
  s00_couplers_imp_1F1P3S2 s00_couplers
       (.M_ACLK(ddr1_interconnect_ACLK_net),
        .M_ARESETN(ddr1_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ddr1_interconnect_ARADDR),
        .M_AXI_arburst(s00_couplers_to_ddr1_interconnect_ARBURST),
        .M_AXI_arcache(s00_couplers_to_ddr1_interconnect_ARCACHE),
        .M_AXI_arid(s00_couplers_to_ddr1_interconnect_ARID),
        .M_AXI_arlen(s00_couplers_to_ddr1_interconnect_ARLEN),
        .M_AXI_arlock(s00_couplers_to_ddr1_interconnect_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_ddr1_interconnect_ARPROT),
        .M_AXI_arqos(s00_couplers_to_ddr1_interconnect_ARQOS),
        .M_AXI_arready(s00_couplers_to_ddr1_interconnect_ARREADY),
        .M_AXI_arsize(s00_couplers_to_ddr1_interconnect_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_ddr1_interconnect_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ddr1_interconnect_AWADDR),
        .M_AXI_awburst(s00_couplers_to_ddr1_interconnect_AWBURST),
        .M_AXI_awcache(s00_couplers_to_ddr1_interconnect_AWCACHE),
        .M_AXI_awid(s00_couplers_to_ddr1_interconnect_AWID),
        .M_AXI_awlen(s00_couplers_to_ddr1_interconnect_AWLEN),
        .M_AXI_awlock(s00_couplers_to_ddr1_interconnect_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_ddr1_interconnect_AWPROT),
        .M_AXI_awqos(s00_couplers_to_ddr1_interconnect_AWQOS),
        .M_AXI_awready(s00_couplers_to_ddr1_interconnect_AWREADY),
        .M_AXI_awsize(s00_couplers_to_ddr1_interconnect_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_ddr1_interconnect_AWVALID),
        .M_AXI_bid(s00_couplers_to_ddr1_interconnect_BID),
        .M_AXI_bready(s00_couplers_to_ddr1_interconnect_BREADY),
        .M_AXI_bresp(s00_couplers_to_ddr1_interconnect_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ddr1_interconnect_BVALID),
        .M_AXI_rdata(s00_couplers_to_ddr1_interconnect_RDATA),
        .M_AXI_rid(s00_couplers_to_ddr1_interconnect_RID),
        .M_AXI_rlast(s00_couplers_to_ddr1_interconnect_RLAST),
        .M_AXI_rready(s00_couplers_to_ddr1_interconnect_RREADY),
        .M_AXI_rresp(s00_couplers_to_ddr1_interconnect_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ddr1_interconnect_RVALID),
        .M_AXI_wdata(s00_couplers_to_ddr1_interconnect_WDATA),
        .M_AXI_wlast(s00_couplers_to_ddr1_interconnect_WLAST),
        .M_AXI_wready(s00_couplers_to_ddr1_interconnect_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ddr1_interconnect_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ddr1_interconnect_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ddr1_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ddr1_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ddr1_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ddr1_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(ddr1_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ddr1_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ddr1_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ddr1_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(ddr1_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arregion(ddr1_interconnect_to_s00_couplers_ARREGION),
        .S_AXI_arsize(ddr1_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ddr1_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ddr1_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ddr1_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ddr1_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ddr1_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(ddr1_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ddr1_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ddr1_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ddr1_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(ddr1_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awregion(ddr1_interconnect_to_s00_couplers_AWREGION),
        .S_AXI_awsize(ddr1_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ddr1_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(ddr1_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(ddr1_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(ddr1_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ddr1_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(ddr1_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(ddr1_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(ddr1_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(ddr1_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(ddr1_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ddr1_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(ddr1_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(ddr1_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(ddr1_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ddr1_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ddr1_interconnect_to_s00_couplers_WVALID));
endmodule

module shell_microblaze_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_microblaze_0_axi_periph_ARPROT;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_microblaze_0_axi_periph_AWPROT;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WVALID;
  wire microblaze_0_axi_periph_ACLK_net;
  wire microblaze_0_axi_periph_ARESETN_net;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_0_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]microblaze_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [5:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [5:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_microblaze_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_microblaze_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_microblaze_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = microblaze_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = microblaze_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = microblaze_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign microblaze_0_axi_periph_ACLK_net = ACLK;
  assign microblaze_0_axi_periph_ARESETN_net = ARESETN;
  assign microblaze_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign microblaze_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign microblaze_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign microblaze_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_1KWAT1H m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_WG87ZH m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_microblaze_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_microblaze_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_1751KRY s00_couplers
       (.M_ACLK(microblaze_0_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_0_axi_periph_to_s00_couplers_WVALID));
  shell_xbar_1 xbar
       (.aclk(microblaze_0_axi_periph_ACLK_net),
        .aresetn(microblaze_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
