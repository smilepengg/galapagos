// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tcp_slowrttoe_txEventMerger (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txApp2eventEng_mergeEvent_V_dout,
        txApp2eventEng_mergeEvent_V_empty_n,
        txApp2eventEng_mergeEvent_V_read,
        txAppStream2event_mergeEvent_V_dout,
        txAppStream2event_mergeEvent_V_empty_n,
        txAppStream2event_mergeEvent_V_read,
        txApp_eventCacheFifo_V_din,
        txApp_eventCacheFifo_V_full_n,
        txApp_eventCacheFifo_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [53:0] txApp2eventEng_mergeEvent_V_dout;
input   txApp2eventEng_mergeEvent_V_empty_n;
output   txApp2eventEng_mergeEvent_V_read;
input  [53:0] txAppStream2event_mergeEvent_V_dout;
input   txAppStream2event_mergeEvent_V_empty_n;
output   txAppStream2event_mergeEvent_V_read;
output  [53:0] txApp_eventCacheFifo_V_din;
input   txApp_eventCacheFifo_V_full_n;
output   txApp_eventCacheFifo_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txApp2eventEng_mergeEvent_V_read;
reg txAppStream2event_mergeEvent_V_read;
reg[53:0] txApp_eventCacheFifo_V_din;
reg txApp_eventCacheFifo_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_82_p3;
reg    ap_sig_bdd_52;
reg   [0:0] tmp_reg_118;
wire   [0:0] tmp_14_nbreadreq_fu_96_p3;
reg    ap_sig_bdd_66;
reg   [0:0] ap_reg_ppstg_tmp_reg_118_pp0_it1;
reg   [0:0] tmp_14_reg_127;
reg    ap_sig_bdd_85;
reg   [53:0] tmp93_reg_122;
reg   [53:0] ap_reg_ppstg_tmp93_reg_122_pp0_it1;
reg   [53:0] tmp_2_reg_131;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_81;
reg    ap_sig_bdd_111;




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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_tmp93_reg_122_pp0_it1 <= tmp93_reg_122;
        ap_reg_ppstg_tmp_reg_118_pp0_it1 <= tmp_reg_118;
        tmp_reg_118 <= tmp_nbreadreq_fu_82_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_82_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp93_reg_122 <= txApp2eventEng_mergeEvent_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_118) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_14_reg_127 <= tmp_14_nbreadreq_fu_96_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_118) & ~(ap_const_lv1_0 == tmp_14_nbreadreq_fu_96_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_2_reg_131 <= txAppStream2event_mergeEvent_V_dout;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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

/// txApp2eventEng_mergeEvent_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_82_p3 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_82_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txApp2eventEng_mergeEvent_V_read = ap_const_logic_1;
    end else begin
        txApp2eventEng_mergeEvent_V_read = ap_const_logic_0;
    end
end

/// txAppStream2event_mergeEvent_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or tmp_reg_118 or tmp_14_nbreadreq_fu_96_p3 or ap_sig_bdd_66 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_118) & ~(ap_const_lv1_0 == tmp_14_nbreadreq_fu_96_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txAppStream2event_mergeEvent_V_read = ap_const_logic_1;
    end else begin
        txAppStream2event_mergeEvent_V_read = ap_const_logic_0;
    end
end

/// txApp_eventCacheFifo_V_din assign process. ///
always @ (ap_reg_ppstg_tmp_reg_118_pp0_it1 or ap_reg_ppstg_tmp93_reg_122_pp0_it1 or tmp_2_reg_131 or ap_sig_bdd_81 or ap_sig_bdd_111)
begin
    if (ap_sig_bdd_111) begin
        if (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1)) begin
            txApp_eventCacheFifo_V_din = ap_reg_ppstg_tmp93_reg_122_pp0_it1;
        end else if (ap_sig_bdd_81) begin
            txApp_eventCacheFifo_V_din = tmp_2_reg_131;
        end else begin
            txApp_eventCacheFifo_V_din = 'bx;
        end
    end else begin
        txApp_eventCacheFifo_V_din = 'bx;
    end
end

/// txApp_eventCacheFifo_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_reg_ppstg_tmp_reg_118_pp0_it1 or tmp_14_reg_127 or ap_sig_bdd_85)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1) & ~(ap_const_lv1_0 == tmp_14_reg_127) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        txApp_eventCacheFifo_V_write = ap_const_logic_1;
    end else begin
        txApp_eventCacheFifo_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_85 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_111 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_66 or ap_sig_bdd_85)
begin
    ap_sig_bdd_111 = ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_52 assign process. ///
always @ (ap_start or ap_done_reg or txApp2eventEng_mergeEvent_V_empty_n or tmp_nbreadreq_fu_82_p3)
begin
    ap_sig_bdd_52 = (((txApp2eventEng_mergeEvent_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_82_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_66 assign process. ///
always @ (txAppStream2event_mergeEvent_V_empty_n or tmp_reg_118 or tmp_14_nbreadreq_fu_96_p3)
begin
    ap_sig_bdd_66 = ((txAppStream2event_mergeEvent_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_118) & ~(ap_const_lv1_0 == tmp_14_nbreadreq_fu_96_p3));
end

/// ap_sig_bdd_81 assign process. ///
always @ (ap_reg_ppstg_tmp_reg_118_pp0_it1 or tmp_14_reg_127)
begin
    ap_sig_bdd_81 = ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1) & ~(ap_const_lv1_0 == tmp_14_reg_127));
end

/// ap_sig_bdd_85 assign process. ///
always @ (txApp_eventCacheFifo_V_full_n or ap_reg_ppstg_tmp_reg_118_pp0_it1 or tmp_14_reg_127)
begin
    ap_sig_bdd_85 = (((txApp_eventCacheFifo_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1) & ~(ap_const_lv1_0 == tmp_14_reg_127)) | ((txApp_eventCacheFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_118_pp0_it1)));
end
assign tmp_14_nbreadreq_fu_96_p3 = txAppStream2event_mergeEvent_V_empty_n;
assign tmp_nbreadreq_fu_82_p3 = txApp2eventEng_mergeEvent_V_empty_n;


endmodule //tcp_slowrttoe_txEventMerger

