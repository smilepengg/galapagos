-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ip_handler_cut_length is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ipDataDropFifo_V_dout : IN STD_LOGIC_VECTOR (72 downto 0);
    ipDataDropFifo_V_empty_n : IN STD_LOGIC;
    ipDataDropFifo_V_read : OUT STD_LOGIC;
    ipDataCutFifo_V_din : OUT STD_LOGIC_VECTOR (72 downto 0);
    ipDataCutFifo_V_full_n : IN STD_LOGIC;
    ipDataCutFifo_V_write : OUT STD_LOGIC );
end;


architecture behav of ip_handler_cut_length is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_pp0_stg0_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000011";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv8_F : STD_LOGIC_VECTOR (7 downto 0) := "00001111";
    constant ap_const_lv8_1F : STD_LOGIC_VECTOR (7 downto 0) := "00011111";
    constant ap_const_lv8_3F : STD_LOGIC_VECTOR (7 downto 0) := "00111111";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_pp0_stg0_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_20 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal tmp_nbreadreq_fu_122_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_56 : BOOLEAN;
    signal cl_state_load_reg_394 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_398 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_70 : BOOLEAN;
    signal cl_state : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal cl_wordCount_V : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal cl_totalLength_V : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal tmp_last_V_reg_143 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_fu_240_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_reg_402 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal cond_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_290_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_tmp_last_V_reg_143pp0_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal leftLength_V_fu_318_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_last_V_phi_fu_146_p22 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_tmp_s_fu_364_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_s_20_fu_344_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal lhs_V_cast_fu_268_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal r_V_fu_272_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal r_V_1_fu_278_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_cast_fu_286_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_121_fu_302_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_122_fu_314_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_29_fu_306_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Result_18_fu_334_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_fu_324_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_30_fu_358_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_pprstidle_pp0 : STD_LOGIC;
    signal ap_sig_bdd_337 : BOOLEAN;
    signal ap_sig_bdd_339 : BOOLEAN;
    signal ap_sig_bdd_334 : BOOLEAN;


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 assign process. --
    ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not((ap_const_lv1_0 = cond_fu_258_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and not((ap_const_lv1_0 = tmp_s_fu_290_p2))))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ipDataDropFifo_V_dout(71 downto 64);
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_8) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_FF;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_7) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_7F;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_6) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_3F;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_5) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_1F;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_4) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_F;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_3) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_7;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_2) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_3;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_1) and (ap_const_lv1_0 = tmp_s_fu_290_p2))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_const_lv8_1;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1 <= ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it0;
            end if; 
        end if;
    end process;

    -- cl_state assign process. --
    cl_state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_334) then
                if (ap_sig_bdd_339) then 
                    cl_state <= ap_const_lv1_0;
                elsif (ap_sig_bdd_337) then 
                    cl_state <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;

    -- tmp_last_V_reg_143 assign process. --
    tmp_last_V_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not((ap_const_lv1_0 = cond_fu_258_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and not((ap_const_lv1_0 = tmp_s_fu_290_p2))))) then 
                tmp_last_V_reg_143 <= ipDataDropFifo_V_dout(72 downto 72);
            elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and not((leftLength_V_fu_318_p2 = ap_const_lv4_8)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_7)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_6)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_5)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_4)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_3)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_2)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_1)) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_1) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_2) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_3) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_4) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_5) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_6) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_7) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_8) and (ap_const_lv1_0 = tmp_s_fu_290_p2)))) then 
                tmp_last_V_reg_143 <= ap_const_lv1_1;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                tmp_last_V_reg_143 <= ap_reg_phiprechg_tmp_last_V_reg_143pp0_it0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                cl_state_load_reg_394 <= cl_state;
                tmp_reg_398 <= tmp_nbreadreq_fu_122_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not((ap_const_lv1_0 = cond_fu_258_p2)))) then
                cl_totalLength_V <= p_Result_s_20_fu_344_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                cl_wordCount_V <= p_tmp_s_fu_364_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                p_Val2_s_reg_402 <= p_Val2_s_fu_240_p1;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_done_reg, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_56, ap_sig_bdd_70, ap_sig_pprstidle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_pp0_stg0_fsm_0 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_56, ap_sig_bdd_70)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_56, ap_sig_bdd_70)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it0 <= "XXXXXXXX";
    ap_reg_phiprechg_tmp_last_V_reg_143pp0_it0 <= "X";
    ap_reg_ppiten_pp0_it0 <= ap_start;

    -- ap_sig_bdd_20 assign process. --
    ap_sig_bdd_20_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_20 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_334 assign process. --
    ap_sig_bdd_334_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, tmp_nbreadreq_fu_122_p3, ap_sig_bdd_56, ap_sig_bdd_70)
    begin
                ap_sig_bdd_334 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))));
    end process;


    -- ap_sig_bdd_337 assign process. --
    ap_sig_bdd_337_assign_proc : process(cl_state, grp_fu_226_p3, cond_fu_258_p2, tmp_s_fu_290_p2)
    begin
                ap_sig_bdd_337 <= ((cl_state = ap_const_lv1_0) and (ap_const_lv1_0 = cond_fu_258_p2) and (ap_const_lv1_0 = tmp_s_fu_290_p2) and (ap_const_lv1_0 = grp_fu_226_p3));
    end process;


    -- ap_sig_bdd_339 assign process. --
    ap_sig_bdd_339_assign_proc : process(cl_state, grp_fu_226_p3)
    begin
                ap_sig_bdd_339 <= (not((cl_state = ap_const_lv1_0)) and not((ap_const_lv1_0 = grp_fu_226_p3)));
    end process;


    -- ap_sig_bdd_56 assign process. --
    ap_sig_bdd_56_assign_proc : process(ap_start, ap_done_reg, ipDataDropFifo_V_empty_n, tmp_nbreadreq_fu_122_p3, cl_state)
    begin
                ap_sig_bdd_56 <= (((ipDataDropFifo_V_empty_n = ap_const_logic_0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3))) or ((ipDataDropFifo_V_empty_n = ap_const_logic_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not((cl_state = ap_const_lv1_0))) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_70 assign process. --
    ap_sig_bdd_70_assign_proc : process(ipDataCutFifo_V_full_n, cl_state_load_reg_394, tmp_reg_398)
    begin
                ap_sig_bdd_70 <= ((ipDataCutFifo_V_full_n = ap_const_logic_0) and (ap_const_lv1_0 = cl_state_load_reg_394) and not((ap_const_lv1_0 = tmp_reg_398)));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_0_assign_proc : process(ap_sig_bdd_20)
    begin
        if (ap_sig_bdd_20) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_pprstidle_pp0 assign process. --
    ap_sig_pprstidle_pp0_assign_proc : process(ap_start, ap_reg_ppiten_pp0_it0)
    begin
        if (((ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_start))) then 
            ap_sig_pprstidle_pp0 <= ap_const_logic_1;
        else 
            ap_sig_pprstidle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    cond_fu_258_p2 <= "1" when (cl_wordCount_V = ap_const_lv16_0) else "0";
    grp_fu_226_p3 <= ipDataDropFifo_V_dout(72 downto 72);
    ipDataCutFifo_V_din <= ((tmp_last_V_reg_143 & ap_reg_phiprechg_tmp_keep_V_reg_180pp0_it1) & p_Val2_s_reg_402);

    -- ipDataCutFifo_V_write assign process. --
    ipDataCutFifo_V_write_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_56, cl_state_load_reg_394, tmp_reg_398, ap_sig_bdd_70)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_lv1_0 = cl_state_load_reg_394) and not((ap_const_lv1_0 = tmp_reg_398)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
            ipDataCutFifo_V_write <= ap_const_logic_1;
        else 
            ipDataCutFifo_V_write <= ap_const_logic_0;
        end if; 
    end process;


    -- ipDataDropFifo_V_read assign process. --
    ipDataDropFifo_V_read_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, tmp_nbreadreq_fu_122_p3, ap_sig_bdd_56, ap_sig_bdd_70, cl_state)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not((cl_state = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_56) or (ap_sig_bdd_70 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))))) then 
            ipDataDropFifo_V_read <= ap_const_logic_1;
        else 
            ipDataDropFifo_V_read <= ap_const_logic_0;
        end if; 
    end process;

    leftLength_V_fu_318_p2 <= std_logic_vector(unsigned(tmp_122_fu_314_p1) - unsigned(tmp_29_fu_306_p3));
    lhs_V_cast_fu_268_p1 <= std_logic_vector(resize(unsigned(cl_wordCount_V),17));
    p_Result_18_fu_334_p4 <= ipDataDropFifo_V_dout(23 downto 16);
    p_Result_s_20_fu_344_p3 <= (p_Result_18_fu_334_p4 & p_Result_s_fu_324_p4);
    p_Result_s_fu_324_p4 <= ipDataDropFifo_V_dout(31 downto 24);
    p_Val2_s_fu_240_p1 <= ipDataDropFifo_V_dout(64 - 1 downto 0);
    p_tmp_s_fu_364_p3 <= 
        ap_const_lv16_0 when (tmp_last_V_phi_fu_146_p22(0) = '1') else 
        tmp_30_fu_358_p2;
    r_V_1_fu_278_p3 <= (r_V_fu_272_p2 & ap_const_lv3_0);
    r_V_fu_272_p2 <= std_logic_vector(unsigned(lhs_V_cast_fu_268_p1) + unsigned(ap_const_lv17_1));
    tmp_121_fu_302_p1 <= cl_wordCount_V(1 - 1 downto 0);
    tmp_122_fu_314_p1 <= cl_totalLength_V(4 - 1 downto 0);
    tmp_29_fu_306_p3 <= (tmp_121_fu_302_p1 & ap_const_lv3_0);
    tmp_30_fu_358_p2 <= std_logic_vector(unsigned(cl_wordCount_V) + unsigned(ap_const_lv16_1));
    tmp_cast_fu_286_p1 <= std_logic_vector(resize(unsigned(cl_totalLength_V),20));

    -- tmp_last_V_phi_fu_146_p22 assign process. --
    tmp_last_V_phi_fu_146_p22_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ipDataDropFifo_V_dout, tmp_nbreadreq_fu_122_p3, cl_state, cond_fu_258_p2, tmp_s_fu_290_p2, ap_reg_phiprechg_tmp_last_V_reg_143pp0_it0, leftLength_V_fu_318_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and not((ap_const_lv1_0 = cond_fu_258_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and not((ap_const_lv1_0 = tmp_s_fu_290_p2))))) then 
            tmp_last_V_phi_fu_146_p22 <= ipDataDropFifo_V_dout(72 downto 72);
        elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and not((leftLength_V_fu_318_p2 = ap_const_lv4_8)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_7)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_6)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_5)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_4)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_3)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_2)) and not((leftLength_V_fu_318_p2 = ap_const_lv4_1)) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_1) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_2) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_3) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_4) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_5) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_6) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_7) and (ap_const_lv1_0 = tmp_s_fu_290_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (cl_state = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_122_p3)) and (ap_const_lv1_0 = cond_fu_258_p2) and (leftLength_V_fu_318_p2 = ap_const_lv4_8) and (ap_const_lv1_0 = tmp_s_fu_290_p2)))) then 
            tmp_last_V_phi_fu_146_p22 <= ap_const_lv1_1;
        else 
            tmp_last_V_phi_fu_146_p22 <= ap_reg_phiprechg_tmp_last_V_reg_143pp0_it0;
        end if; 
    end process;

    tmp_nbreadreq_fu_122_p3 <= (0=>ipDataDropFifo_V_empty_n, others=>'-');
    tmp_s_fu_290_p2 <= "1" when (unsigned(r_V_1_fu_278_p3) < unsigned(tmp_cast_fu_286_p1)) else "0";
end behav;
