// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_listening_port_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxApp2portTable_listen_req_V_V_dout,
        rxApp2portTable_listen_req_V_V_empty_n,
        rxApp2portTable_listen_req_V_V_read,
        pt_portCheckListening_req_fifo_dout,
        pt_portCheckListening_req_fifo_empty_n,
        pt_portCheckListening_req_fifo_read,
        pt_portCheckListening_rsp_fifo_din,
        pt_portCheckListening_rsp_fifo_full_n,
        pt_portCheckListening_rsp_fifo_write,
        portTable2rxApp_listen_rsp_V_din,
        portTable2rxApp_listen_rsp_V_full_n,
        portTable2rxApp_listen_rsp_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] rxApp2portTable_listen_req_V_V_dout;
input   rxApp2portTable_listen_req_V_V_empty_n;
output   rxApp2portTable_listen_req_V_V_read;
input  [14:0] pt_portCheckListening_req_fifo_dout;
input   pt_portCheckListening_req_fifo_empty_n;
output   pt_portCheckListening_req_fifo_read;
output  [0:0] pt_portCheckListening_rsp_fifo_din;
input   pt_portCheckListening_rsp_fifo_full_n;
output   pt_portCheckListening_rsp_fifo_write;
output  [0:0] portTable2rxApp_listen_rsp_V_din;
input   portTable2rxApp_listen_rsp_V_full_n;
output   portTable2rxApp_listen_rsp_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxApp2portTable_listen_req_V_V_read;
reg pt_portCheckListening_req_fifo_read;
reg pt_portCheckListening_rsp_fifo_write;
reg[0:0] portTable2rxApp_listen_rsp_V_din;
reg portTable2rxApp_listen_rsp_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_68_p3;
reg    ap_sig_bdd_52;
reg   [0:0] tmp_reg_177;
wire   [0:0] tmp_9_nbreadreq_fu_82_p3;
reg    ap_sig_bdd_66;
reg   [0:0] ap_reg_ppstg_tmp_reg_177_pp0_it1;
reg   [0:0] tmp_9_reg_196;
reg   [0:0] or_cond_demorgan_reg_205;
reg    ap_sig_bdd_97;
wire   [14:0] listeningPortTable_address0;
reg    listeningPortTable_ce0;
wire   [0:0] listeningPortTable_q0;
reg   [14:0] listeningPortTable_address1;
reg    listeningPortTable_ce1;
reg    listeningPortTable_we1;
wire   [0:0] listeningPortTable_d1;
wire   [0:0] listeningPortTable_q1;
reg   [15:0] tmp_V_3_reg_181;
reg   [0:0] tmp_21_reg_191;
wire   [0:0] or_cond_demorgan_fu_168_p2;
wire   [63:0] tmp_s_fu_150_p1;
wire   [63:0] tmp_26_fu_163_p1;
wire   [63:0] tmp_25_fu_173_p1;
wire   [14:0] tmp_20_fu_146_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_65;
reg    ap_sig_bdd_142;
reg    ap_sig_bdd_137;
reg    ap_sig_bdd_204;


toe_listening_port_table_listeningPortTable #(
    .DataWidth( 1 ),
    .AddressRange( 32768 ),
    .AddressWidth( 15 ))
listeningPortTable_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( listeningPortTable_address0 ),
    .ce0( listeningPortTable_ce0 ),
    .q0( listeningPortTable_q0 ),
    .address1( listeningPortTable_address1 ),
    .ce1( listeningPortTable_ce1 ),
    .we1( listeningPortTable_we1 ),
    .d1( listeningPortTable_d1 ),
    .q1( listeningPortTable_q1 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_tmp_reg_177_pp0_it1 <= tmp_reg_177;
        tmp_reg_177 <= tmp_nbreadreq_fu_68_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_reg_177))) begin
        or_cond_demorgan_reg_205 <= or_cond_demorgan_fu_168_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_68_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_21_reg_191 <= rxApp2portTable_listen_req_V_V_dout[ap_const_lv32_F];
        tmp_V_3_reg_181 <= rxApp2portTable_listen_req_V_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_177) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_9_reg_196 <= tmp_9_nbreadreq_fu_82_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_97)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_97)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// listeningPortTable_address1 assign process. ///
always @ (tmp_26_fu_163_p1 or tmp_25_fu_173_p1 or ap_sig_bdd_65 or ap_sig_bdd_142 or ap_sig_bdd_137)
begin
    if (ap_sig_bdd_137) begin
        if (ap_sig_bdd_142) begin
            listeningPortTable_address1 = tmp_25_fu_173_p1;
        end else if (ap_sig_bdd_65) begin
            listeningPortTable_address1 = tmp_26_fu_163_p1;
        end else begin
            listeningPortTable_address1 = 'bx;
        end
    end else begin
        listeningPortTable_address1 = 'bx;
    end
end

/// listeningPortTable_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_97)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        listeningPortTable_ce0 = ap_const_logic_1;
    end else begin
        listeningPortTable_ce0 = ap_const_logic_0;
    end
end

/// listeningPortTable_ce1 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or tmp_reg_177 or tmp_9_nbreadreq_fu_82_p3 or ap_sig_bdd_66 or ap_sig_bdd_97 or or_cond_demorgan_fu_168_p2)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_177) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_82_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_reg_177) & (ap_const_lv1_0 == or_cond_demorgan_fu_168_p2)))) begin
        listeningPortTable_ce1 = ap_const_logic_1;
    end else begin
        listeningPortTable_ce1 = ap_const_logic_0;
    end
end

/// listeningPortTable_we1 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or tmp_reg_177 or ap_sig_bdd_66 or ap_sig_bdd_97 or or_cond_demorgan_fu_168_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_reg_177) & (ap_const_lv1_0 == or_cond_demorgan_fu_168_p2))) begin
        listeningPortTable_we1 = ap_const_logic_1;
    end else begin
        listeningPortTable_we1 = ap_const_logic_0;
    end
end

/// portTable2rxApp_listen_rsp_V_din assign process. ///
always @ (or_cond_demorgan_reg_205 or ap_sig_bdd_204)
begin
    if (ap_sig_bdd_204) begin
        if (~(ap_const_lv1_0 == or_cond_demorgan_reg_205)) begin
            portTable2rxApp_listen_rsp_V_din = ap_const_lv1_0;
        end else if ((ap_const_lv1_0 == or_cond_demorgan_reg_205)) begin
            portTable2rxApp_listen_rsp_V_din = ap_const_lv1_1;
        end else begin
            portTable2rxApp_listen_rsp_V_din = 'bx;
        end
    end else begin
        portTable2rxApp_listen_rsp_V_din = 'bx;
    end
end

/// portTable2rxApp_listen_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_reg_ppstg_tmp_reg_177_pp0_it1 or or_cond_demorgan_reg_205 or ap_sig_bdd_97)
begin
    if (((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & (ap_const_lv1_0 == or_cond_demorgan_reg_205) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & ~(ap_const_lv1_0 == or_cond_demorgan_reg_205) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        portTable2rxApp_listen_rsp_V_write = ap_const_logic_1;
    end else begin
        portTable2rxApp_listen_rsp_V_write = ap_const_logic_0;
    end
end

/// pt_portCheckListening_req_fifo_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or tmp_reg_177 or tmp_9_nbreadreq_fu_82_p3 or ap_sig_bdd_66 or ap_sig_bdd_97)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_177) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_82_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        pt_portCheckListening_req_fifo_read = ap_const_logic_1;
    end else begin
        pt_portCheckListening_req_fifo_read = ap_const_logic_0;
    end
end

/// pt_portCheckListening_rsp_fifo_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_reg_ppstg_tmp_reg_177_pp0_it1 or tmp_9_reg_196 or ap_sig_bdd_97)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & ~(ap_const_lv1_0 == tmp_9_reg_196) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        pt_portCheckListening_rsp_fifo_write = ap_const_logic_1;
    end else begin
        pt_portCheckListening_rsp_fifo_write = ap_const_logic_0;
    end
end

/// rxApp2portTable_listen_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_68_p3 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_97)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_68_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        rxApp2portTable_listen_req_V_V_read = ap_const_logic_1;
    end else begin
        rxApp2portTable_listen_req_V_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_97 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_137 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1)
begin
    ap_sig_bdd_137 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1));
end

/// ap_sig_bdd_142 assign process. ///
always @ (tmp_reg_177 or or_cond_demorgan_fu_168_p2)
begin
    ap_sig_bdd_142 = (~(ap_const_lv1_0 == tmp_reg_177) & (ap_const_lv1_0 == or_cond_demorgan_fu_168_p2));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_204 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_reg_ppstg_tmp_reg_177_pp0_it1 or ap_sig_bdd_97)
begin
    ap_sig_bdd_204 = (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_97 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_52 assign process. ///
always @ (ap_start or ap_done_reg or rxApp2portTable_listen_req_V_V_empty_n or tmp_nbreadreq_fu_68_p3)
begin
    ap_sig_bdd_52 = (((rxApp2portTable_listen_req_V_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_68_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_65 assign process. ///
always @ (tmp_reg_177 or tmp_9_nbreadreq_fu_82_p3)
begin
    ap_sig_bdd_65 = ((ap_const_lv1_0 == tmp_reg_177) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_82_p3));
end

/// ap_sig_bdd_66 assign process. ///
always @ (pt_portCheckListening_req_fifo_empty_n or tmp_reg_177 or tmp_9_nbreadreq_fu_82_p3)
begin
    ap_sig_bdd_66 = ((pt_portCheckListening_req_fifo_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_177) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_82_p3));
end

/// ap_sig_bdd_97 assign process. ///
always @ (pt_portCheckListening_rsp_fifo_full_n or ap_reg_ppstg_tmp_reg_177_pp0_it1 or tmp_9_reg_196 or portTable2rxApp_listen_rsp_V_full_n or or_cond_demorgan_reg_205)
begin
    ap_sig_bdd_97 = (((pt_portCheckListening_rsp_fifo_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & ~(ap_const_lv1_0 == tmp_9_reg_196)) | ((portTable2rxApp_listen_rsp_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & (ap_const_lv1_0 == or_cond_demorgan_reg_205)) | ((portTable2rxApp_listen_rsp_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_177_pp0_it1) & ~(ap_const_lv1_0 == or_cond_demorgan_reg_205)));
end
assign listeningPortTable_address0 = tmp_s_fu_150_p1;
assign listeningPortTable_d1 = ap_const_lv1_1;
assign or_cond_demorgan_fu_168_p2 = (tmp_21_reg_191 | listeningPortTable_q0);
assign pt_portCheckListening_rsp_fifo_din = listeningPortTable_q1;
assign tmp_20_fu_146_p1 = rxApp2portTable_listen_req_V_V_dout[14:0];
assign tmp_25_fu_173_p1 = tmp_V_3_reg_181;
assign tmp_26_fu_163_p1 = pt_portCheckListening_req_fifo_dout;
assign tmp_9_nbreadreq_fu_82_p3 = pt_portCheckListening_req_fifo_empty_n;
assign tmp_nbreadreq_fu_68_p3 = rxApp2portTable_listen_req_V_V_empty_n;
assign tmp_s_fu_150_p1 = tmp_20_fu_146_p1;


endmodule //toe_listening_port_table

