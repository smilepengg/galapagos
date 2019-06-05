// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="width48router,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=3.159200,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=216,HLS_SYN_LUT=63,HLS_VERSION=2018_2}" *)

module width48router (
        ap_clk,
        ap_rst,
        network_table_V_address0,
        network_table_V_ce0,
        network_table_V_q0,
        network_addr_V,
        stream_in_V_dout,
        stream_in_V_empty_n,
        stream_in_V_read,
        stream_out_switch_V_din,
        stream_out_switch_V_full_n,
        stream_out_switch_V_write,
        stream_out_network_V_din,
        stream_out_network_V_full_n,
        stream_out_network_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
output  [7:0] network_table_V_address0;
output   network_table_V_ce0;
input  [47:0] network_table_V_q0;
input  [47:0] network_addr_V;
input  [80:0] stream_in_V_dout;
input   stream_in_V_empty_n;
output   stream_in_V_read;
output  [80:0] stream_out_switch_V_din;
input   stream_out_switch_V_full_n;
output   stream_out_switch_V_write;
output  [80:0] stream_out_network_V_din;
input   stream_out_network_V_full_n;
output   stream_out_network_V_write;

reg network_table_V_ce0;
reg stream_in_V_read;
reg stream_out_switch_V_write;
reg stream_out_network_V_write;

reg    stream_in_V_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_nbreadreq_fu_62_p3;
reg    stream_out_switch_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_reg_128;
reg   [0:0] tmp_reg_128_pp0_iter1_reg;
reg   [0:0] inFPGA_reg_143;
reg    stream_out_network_V_blk_n;
reg   [47:0] network_addr_V_read_reg_123;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_predicate_op29_write_state3;
reg    ap_predicate_op31_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [80:0] tmp21_reg_132;
reg   [80:0] tmp21_reg_132_pp0_iter1_reg;
wire   [0:0] inFPGA_fu_118_p2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] tmp_2_fu_113_p1;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] tmp_dest_V_fu_103_p4;
reg   [0:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_128 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inFPGA_reg_143 <= inFPGA_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        network_addr_V_read_reg_123 <= network_addr_V;
        tmp21_reg_132_pp0_iter1_reg <= tmp21_reg_132;
        tmp_reg_128 <= stream_in_V_empty_n;
        tmp_reg_128_pp0_iter1_reg <= tmp_reg_128;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_62_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp21_reg_132 <= stream_in_V_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        network_table_V_ce0 = 1'b1;
    end else begin
        network_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_62_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_in_V_blk_n = stream_in_V_empty_n;
    end else begin
        stream_in_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_62_p3 == 1'd1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_in_V_read = 1'b1;
    end else begin
        stream_in_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((inFPGA_reg_143 == 1'd0) & (tmp_reg_128_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        stream_out_network_V_blk_n = stream_out_network_V_full_n;
    end else begin
        stream_out_network_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op29_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        stream_out_network_V_write = 1'b1;
    end else begin
        stream_out_network_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((inFPGA_reg_143 == 1'd1) & (tmp_reg_128_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        stream_out_switch_V_blk_n = stream_out_switch_V_full_n;
    end else begin
        stream_out_switch_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op31_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        stream_out_switch_V_write = 1'b1;
    end else begin
        stream_out_switch_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((stream_out_switch_V_full_n == 1'b0) & (ap_predicate_op31_write_state3 == 1'b1)) | ((stream_out_network_V_full_n == 1'b0) & (ap_predicate_op29_write_state3 == 1'b1)))) | ((tmp_nbreadreq_fu_62_p3 == 1'd1) & (stream_in_V_empty_n == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((stream_out_switch_V_full_n == 1'b0) & (ap_predicate_op31_write_state3 == 1'b1)) | ((stream_out_network_V_full_n == 1'b0) & (ap_predicate_op29_write_state3 == 1'b1)))) | ((tmp_nbreadreq_fu_62_p3 == 1'd1) & (stream_in_V_empty_n == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((stream_out_switch_V_full_n == 1'b0) & (ap_predicate_op31_write_state3 == 1'b1)) | ((stream_out_network_V_full_n == 1'b0) & (ap_predicate_op29_write_state3 == 1'b1)))) | ((tmp_nbreadreq_fu_62_p3 == 1'd1) & (stream_in_V_empty_n == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((tmp_nbreadreq_fu_62_p3 == 1'd1) & (stream_in_V_empty_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((stream_out_switch_V_full_n == 1'b0) & (ap_predicate_op31_write_state3 == 1'b1)) | ((stream_out_network_V_full_n == 1'b0) & (ap_predicate_op29_write_state3 == 1'b1)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op29_write_state3 = ((inFPGA_reg_143 == 1'd0) & (tmp_reg_128_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op31_write_state3 = ((inFPGA_reg_143 == 1'd1) & (tmp_reg_128_pp0_iter1_reg == 1'd1));
end

assign inFPGA_fu_118_p2 = ((network_table_V_q0 == network_addr_V_read_reg_123) ? 1'b1 : 1'b0);

assign network_table_V_address0 = tmp_2_fu_113_p1;

assign stream_out_network_V_din = tmp21_reg_132_pp0_iter1_reg;

assign stream_out_switch_V_din = tmp21_reg_132_pp0_iter1_reg;

assign tmp_2_fu_113_p1 = tmp_dest_V_fu_103_p4;

assign tmp_dest_V_fu_103_p4 = {{stream_in_V_dout[71:64]}};

assign tmp_nbreadreq_fu_62_p3 = stream_in_V_empty_n;

endmodule //width48router
