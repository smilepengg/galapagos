// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module arp_server_arp_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        macLookup_resp_V_dout,
        macLookup_resp_V_empty_n,
        macLookup_resp_V_read,
        macUpdate_resp_V_dout,
        macUpdate_resp_V_empty_n,
        macUpdate_resp_V_read,
        arpTableInsertFifo_V_dout,
        arpTableInsertFifo_V_empty_n,
        arpTableInsertFifo_V_read,
        macIpEncode_req_V_V_dout,
        macIpEncode_req_V_V_empty_n,
        macIpEncode_req_V_V_read,
        macIpEncode_rsp_V_din,
        macIpEncode_rsp_V_full_n,
        macIpEncode_rsp_V_write,
        arpRequestMetaFifo_V_V_din,
        arpRequestMetaFifo_V_V_full_n,
        arpRequestMetaFifo_V_V_write,
        macUpdate_req_V_din,
        macUpdate_req_V_full_n,
        macUpdate_req_V_write,
        macLookup_req_V_din,
        macLookup_req_V_full_n,
        macLookup_req_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [48:0] macLookup_resp_V_dout;
input   macLookup_resp_V_empty_n;
output   macLookup_resp_V_read;
input  [49:0] macUpdate_resp_V_dout;
input   macUpdate_resp_V_empty_n;
output   macUpdate_resp_V_read;
input  [80:0] arpTableInsertFifo_V_dout;
input   arpTableInsertFifo_V_empty_n;
output   arpTableInsertFifo_V_read;
input  [31:0] macIpEncode_req_V_V_dout;
input   macIpEncode_req_V_V_empty_n;
output   macIpEncode_req_V_V_read;
output  [48:0] macIpEncode_rsp_V_din;
input   macIpEncode_rsp_V_full_n;
output   macIpEncode_rsp_V_write;
output  [31:0] arpRequestMetaFifo_V_V_din;
input   arpRequestMetaFifo_V_V_full_n;
output   arpRequestMetaFifo_V_V_write;
output  [81:0] macUpdate_req_V_din;
input   macUpdate_req_V_full_n;
output   macUpdate_req_V_write;
output  [32:0] macLookup_req_V_din;
input   macLookup_req_V_full_n;
output   macLookup_req_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg macLookup_resp_V_read;
reg macUpdate_resp_V_read;
reg arpTableInsertFifo_V_read;
reg macIpEncode_req_V_V_read;
reg macIpEncode_rsp_V_write;
reg arpRequestMetaFifo_V_V_write;
reg macUpdate_req_V_write;
reg macLookup_req_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_7_nbreadreq_fu_166_p3;
wire   [0:0] tmp_6_nbreadreq_fu_180_p3;
wire   [0:0] tmp_nbreadreq_fu_194_p3;
wire   [0:0] tmp_9_nbreadreq_fu_208_p3;
reg    ap_sig_bdd_90;
reg   [1:0] arpState_load_reg_377;
reg   [0:0] tmp_7_reg_381;
reg   [0:0] tmp_hit_reg_390;
reg   [0:0] tmp_reg_398;
reg   [0:0] tmp_9_reg_407;
reg    ap_sig_bdd_137;
reg   [1:0] arpState = 2'b00;
reg   [31:0] at_inputIP_V = 32'b00000000000000000000000000000000;
reg   [47:0] tmp_macAddress_V_reg_385;
wire   [0:0] tmp_hit_fu_329_p1;
wire   [79:0] tmp_18_fu_333_p1;
reg   [79:0] tmp_18_reg_402;
reg   [31:0] tmp_V_1_reg_411;
wire   [0:0] ap_reg_phiprechg_arpState_flag_reg_250pp0_it0;
reg   [0:0] arpState_flag_phi_fu_253_p4;
wire   [0:0] ap_reg_phiprechg_arpState_flag_4_reg_261pp0_it0;
reg   [0:0] arpState_flag_4_phi_fu_264_p14;
wire   [1:0] ap_reg_phiprechg_arpState_new_4_reg_288pp0_it0;
reg   [1:0] arpState_new_4_phi_fu_291_p14;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_278;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == arpState_flag_4_phi_fu_264_p14))) begin
        arpState <= arpState_new_4_phi_fu_291_p14;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        arpState_load_reg_377 <= arpState;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        at_inputIP_V <= macIpEncode_req_V_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_194_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_18_reg_402 <= tmp_18_fu_333_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (arpState == ap_const_lv2_2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_7_reg_381 <= tmp_7_nbreadreq_fu_166_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (arpState == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_9_reg_407 <= tmp_9_nbreadreq_fu_208_p3;
        tmp_reg_398 <= tmp_nbreadreq_fu_194_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_V_1_reg_411 <= macIpEncode_req_V_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (arpState == ap_const_lv2_2) & ~(tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_hit_reg_390 <= tmp_hit_fu_329_p1;
        tmp_macAddress_V_reg_385 <= {{macLookup_resp_V_dout[ap_const_lv32_30 : ap_const_lv32_1]}};
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
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
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// arpRequestMetaFifo_V_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or arpState_load_reg_377 or tmp_7_reg_381 or tmp_hit_reg_390 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_2 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_7_reg_381) & (ap_const_lv1_0 == tmp_hit_reg_390) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        arpRequestMetaFifo_V_V_write = ap_const_logic_1;
    end else begin
        arpRequestMetaFifo_V_V_write = ap_const_logic_0;
    end
end

/// arpState_flag_4_phi_fu_264_p14 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or tmp_7_nbreadreq_fu_166_p3 or tmp_6_nbreadreq_fu_180_p3 or tmp_9_nbreadreq_fu_208_p3 or arpState or arpState_flag_phi_fu_253_p4 or ap_reg_phiprechg_arpState_flag_4_reg_261pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & (ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3))) begin
        arpState_flag_4_phi_fu_264_p14 = arpState_flag_phi_fu_253_p4;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_2) & ~(tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0)))) begin
        arpState_flag_4_phi_fu_264_p14 = ap_const_lv1_1;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(arpState == ap_const_lv2_2) & ~(arpState == ap_const_lv2_1) & ~(arpState == ap_const_lv2_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_1) & (ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_2) & (tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0)))) begin
        arpState_flag_4_phi_fu_264_p14 = ap_const_lv1_0;
    end else begin
        arpState_flag_4_phi_fu_264_p14 = ap_reg_phiprechg_arpState_flag_4_reg_261pp0_it0;
    end
end

/// arpState_flag_phi_fu_253_p4 assign process. ///
always @ (tmp_nbreadreq_fu_194_p3 or ap_reg_phiprechg_arpState_flag_reg_250pp0_it0 or ap_sig_bdd_278)
begin
    if (ap_sig_bdd_278) begin
        if ((ap_const_lv1_0 == tmp_nbreadreq_fu_194_p3)) begin
            arpState_flag_phi_fu_253_p4 = ap_const_lv1_0;
        end else if (~(ap_const_lv1_0 == tmp_nbreadreq_fu_194_p3)) begin
            arpState_flag_phi_fu_253_p4 = ap_const_lv1_1;
        end else begin
            arpState_flag_phi_fu_253_p4 = ap_reg_phiprechg_arpState_flag_reg_250pp0_it0;
        end
    end else begin
        arpState_flag_phi_fu_253_p4 = ap_reg_phiprechg_arpState_flag_reg_250pp0_it0;
    end
end

/// arpState_new_4_phi_fu_291_p14 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or tmp_7_nbreadreq_fu_166_p3 or tmp_6_nbreadreq_fu_180_p3 or tmp_9_nbreadreq_fu_208_p3 or arpState or ap_reg_phiprechg_arpState_new_4_reg_288pp0_it0)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & (ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3))) begin
        arpState_new_4_phi_fu_291_p14 = ap_const_lv2_1;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3))) begin
        arpState_new_4_phi_fu_291_p14 = ap_const_lv2_2;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_1) & (ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_2) & (tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_2) & ~(tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0)))) begin
        arpState_new_4_phi_fu_291_p14 = ap_const_lv2_0;
    end else begin
        arpState_new_4_phi_fu_291_p14 = ap_reg_phiprechg_arpState_new_4_reg_288pp0_it0;
    end
end

/// arpTableInsertFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_194_p3 or ap_sig_bdd_90 or ap_sig_bdd_137 or arpState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_194_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        arpTableInsertFifo_V_read = ap_const_logic_1;
    end else begin
        arpTableInsertFifo_V_read = ap_const_logic_0;
    end
end

/// macIpEncode_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_9_nbreadreq_fu_208_p3 or ap_sig_bdd_90 or ap_sig_bdd_137 or arpState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macIpEncode_req_V_V_read = ap_const_logic_1;
    end else begin
        macIpEncode_req_V_V_read = ap_const_logic_0;
    end
end

/// macIpEncode_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or arpState_load_reg_377 or tmp_7_reg_381 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_2 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_7_reg_381) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macIpEncode_rsp_V_write = ap_const_logic_1;
    end else begin
        macIpEncode_rsp_V_write = ap_const_logic_0;
    end
end

/// macLookup_req_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or arpState_load_reg_377 or tmp_9_reg_407 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_9_reg_407) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macLookup_req_V_write = ap_const_logic_1;
    end else begin
        macLookup_req_V_write = ap_const_logic_0;
    end
end

/// macLookup_resp_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_7_nbreadreq_fu_166_p3 or ap_sig_bdd_90 or ap_sig_bdd_137 or arpState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_2) & ~(tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macLookup_resp_V_read = ap_const_logic_1;
    end else begin
        macLookup_resp_V_read = ap_const_logic_0;
    end
end

/// macUpdate_req_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or arpState_load_reg_377 or tmp_reg_398 or ap_sig_bdd_137)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macUpdate_req_V_write = ap_const_logic_1;
    end else begin
        macUpdate_req_V_write = ap_const_logic_0;
    end
end

/// macUpdate_resp_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_6_nbreadreq_fu_180_p3 or ap_sig_bdd_90 or ap_sig_bdd_137 or arpState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_90) | (ap_sig_bdd_137 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        macUpdate_resp_V_read = ap_const_logic_1;
    end else begin
        macUpdate_resp_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_90 or ap_sig_bdd_137 or ap_sig_pprstidle_pp0)
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

assign ap_reg_phiprechg_arpState_flag_4_reg_261pp0_it0 = 'bx;
assign ap_reg_phiprechg_arpState_flag_reg_250pp0_it0 = 'bx;
assign ap_reg_phiprechg_arpState_new_4_reg_288pp0_it0 = 'bx;
assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_137 assign process. ///
always @ (macIpEncode_rsp_V_full_n or arpState_load_reg_377 or tmp_7_reg_381 or arpRequestMetaFifo_V_V_full_n or tmp_hit_reg_390 or macUpdate_req_V_full_n or tmp_reg_398 or macLookup_req_V_full_n or tmp_9_reg_407)
begin
    ap_sig_bdd_137 = (((macIpEncode_rsp_V_full_n == ap_const_logic_0) & (ap_const_lv2_2 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_7_reg_381)) | ((ap_const_lv2_2 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_7_reg_381) & (arpRequestMetaFifo_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_hit_reg_390)) | ((macUpdate_req_V_full_n == ap_const_logic_0) & (ap_const_lv2_0 == arpState_load_reg_377) & ~(ap_const_lv1_0 == tmp_reg_398)) | ((ap_const_lv2_0 == arpState_load_reg_377) & (macLookup_req_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_9_reg_407)));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_278 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or arpState)
begin
    ap_sig_bdd_278 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (arpState == ap_const_lv2_0));
end

/// ap_sig_bdd_90 assign process. ///
always @ (ap_start or ap_done_reg or macLookup_resp_V_empty_n or tmp_7_nbreadreq_fu_166_p3 or macUpdate_resp_V_empty_n or tmp_6_nbreadreq_fu_180_p3 or arpTableInsertFifo_V_empty_n or tmp_nbreadreq_fu_194_p3 or macIpEncode_req_V_V_empty_n or tmp_9_nbreadreq_fu_208_p3 or arpState)
begin
    ap_sig_bdd_90 = (((macLookup_resp_V_empty_n == ap_const_logic_0) & (arpState == ap_const_lv2_2) & ~(tmp_7_nbreadreq_fu_166_p3 == ap_const_lv1_0)) | ((macUpdate_resp_V_empty_n == ap_const_logic_0) & (arpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_6_nbreadreq_fu_180_p3)) | ((arpTableInsertFifo_V_empty_n == ap_const_logic_0) & (arpState == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_194_p3)) | ((arpState == ap_const_lv2_0) & (macIpEncode_req_V_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_9_nbreadreq_fu_208_p3)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign arpRequestMetaFifo_V_V_din = at_inputIP_V;
assign macIpEncode_rsp_V_din = {{tmp_hit_reg_390}, {tmp_macAddress_V_reg_385}};
assign macLookup_req_V_din = {{tmp_V_1_reg_411}, {ap_const_lv1_0}};
assign macUpdate_req_V_din = {{tmp_18_reg_402}, {ap_const_lv2_0}};
assign tmp_18_fu_333_p1 = arpTableInsertFifo_V_dout[79:0];
assign tmp_6_nbreadreq_fu_180_p3 = macUpdate_resp_V_empty_n;
assign tmp_7_nbreadreq_fu_166_p3 = macLookup_resp_V_empty_n;
assign tmp_9_nbreadreq_fu_208_p3 = macIpEncode_req_V_V_empty_n;
assign tmp_hit_fu_329_p1 = macLookup_resp_V_dout[0:0];
assign tmp_nbreadreq_fu_194_p3 = arpTableInsertFifo_V_empty_n;


endmodule //arp_server_arp_table

