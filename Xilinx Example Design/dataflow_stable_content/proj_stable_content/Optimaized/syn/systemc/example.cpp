// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "example.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic example::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic example::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> example::ap_ST_fsm_state1 = "1";
const sc_lv<4> example::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<4> example::ap_ST_fsm_state4 = "100";
const sc_lv<4> example::ap_ST_fsm_state5 = "1000";
const sc_lv<32> example::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool example::ap_const_boolean_1 = true;
const sc_lv<32> example::ap_const_lv32_1 = "1";
const bool example::ap_const_boolean_0 = false;
const sc_lv<1> example::ap_const_lv1_0 = "0";
const sc_lv<1> example::ap_const_lv1_1 = "1";
const sc_lv<4> example::ap_const_lv4_0 = "0000";
const sc_lv<32> example::ap_const_lv32_2 = "10";
const sc_lv<32> example::ap_const_lv32_3 = "11";
const sc_lv<4> example::ap_const_lv4_A = "1010";
const sc_lv<4> example::ap_const_lv4_1 = "1";

example::example(sc_module_name name) : sc_module(name), mVcdFile(0) {
    tb_U = new example_tb("tb_U");
    tb_U->clk(ap_clk);
    tb_U->reset(ap_rst);
    tb_U->address0(grp_readmem_fu_99_tb_address0);
    tb_U->ce0(tb_ce0);
    tb_U->q0(tb_q0);
    tb_U->address1(tb_address1);
    tb_U->ce1(tb_ce1);
    tb_U->we1(tb_we1);
    tb_U->d1(in1_strm_V_dout);
    tb_U->q1(tb_q1);
    grp_readmem_fu_99 = new readmem("grp_readmem_fu_99");
    grp_readmem_fu_99->in_strm_V_dout(in2_strm_V_dout);
    grp_readmem_fu_99->in_strm_V_empty_n(in2_strm_V_empty_n);
    grp_readmem_fu_99->in_strm_V_read(grp_readmem_fu_99_in_strm_V_read);
    grp_readmem_fu_99->out_strm_V_din(grp_readmem_fu_99_out_strm_V_din);
    grp_readmem_fu_99->out_strm_V_full_n(out_strm_V_full_n);
    grp_readmem_fu_99->out_strm_V_write(grp_readmem_fu_99_out_strm_V_write);
    grp_readmem_fu_99->tb_address0(grp_readmem_fu_99_tb_address0);
    grp_readmem_fu_99->tb_ce0(grp_readmem_fu_99_tb_ce0);
    grp_readmem_fu_99->tb_d0(grp_readmem_fu_99_tb_d0);
    grp_readmem_fu_99->tb_q0(tb_q0);
    grp_readmem_fu_99->tb_we0(grp_readmem_fu_99_tb_we0);
    grp_readmem_fu_99->tb_address1(grp_readmem_fu_99_tb_address1);
    grp_readmem_fu_99->tb_ce1(grp_readmem_fu_99_tb_ce1);
    grp_readmem_fu_99->tb_d1(grp_readmem_fu_99_tb_d1);
    grp_readmem_fu_99->tb_q1(tb_q1);
    grp_readmem_fu_99->tb_we1(grp_readmem_fu_99_tb_we1);
    grp_readmem_fu_99->ap_clk(ap_clk);
    grp_readmem_fu_99->ap_rst(ap_rst);
    grp_readmem_fu_99->ap_start(grp_readmem_fu_99_ap_start);
    grp_readmem_fu_99->ap_done(grp_readmem_fu_99_ap_done);
    grp_readmem_fu_99->ap_ready(grp_readmem_fu_99_ap_ready);
    grp_readmem_fu_99->ap_idle(grp_readmem_fu_99_ap_idle);
    grp_readmem_fu_99->ap_continue(grp_readmem_fu_99_ap_continue);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( in1_strm_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln69_reg_125 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( in1_strm_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln69_reg_125 );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( in1_strm_V_empty_n );
    sensitive << ( icmp_ln69_reg_125 );

    SC_METHOD(thread_ap_block_state5_on_subcall_done);
    sensitive << ( ap_sync_grp_readmem_fu_99_ap_ready );
    sensitive << ( ap_sync_grp_readmem_fu_99_ap_done );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln69_fu_108_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_phi_mux_i_0_i_phi_fu_91_p4);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln69_reg_125 );
    sensitive << ( i_0_i_reg_87 );
    sensitive << ( i_reg_129 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_ap_sync_grp_readmem_fu_99_ap_done);
    sensitive << ( grp_readmem_fu_99_ap_done );
    sensitive << ( ap_sync_reg_grp_readmem_fu_99_ap_done );

    SC_METHOD(thread_ap_sync_grp_readmem_fu_99_ap_ready);
    sensitive << ( grp_readmem_fu_99_ap_ready );
    sensitive << ( ap_sync_reg_grp_readmem_fu_99_ap_ready );

    SC_METHOD(thread_grp_readmem_fu_99_ap_continue);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_grp_readmem_fu_99_ap_start);
    sensitive << ( grp_readmem_fu_99_ap_start_reg );

    SC_METHOD(thread_i_fu_114_p2);
    sensitive << ( ap_phi_mux_i_0_i_phi_fu_91_p4 );

    SC_METHOD(thread_icmp_ln69_fu_108_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_phi_mux_i_0_i_phi_fu_91_p4 );

    SC_METHOD(thread_in1_strm_V_blk_n);
    sensitive << ( in1_strm_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln69_reg_125 );

    SC_METHOD(thread_in1_strm_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln69_reg_125 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_in2_strm_V_read);
    sensitive << ( grp_readmem_fu_99_in_strm_V_read );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_out_strm_V_din);
    sensitive << ( grp_readmem_fu_99_out_strm_V_din );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_out_strm_V_write);
    sensitive << ( grp_readmem_fu_99_out_strm_V_write );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tb_address1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( grp_readmem_fu_99_tb_address1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln73_fu_120_p1 );

    SC_METHOD(thread_tb_ce0);
    sensitive << ( grp_readmem_fu_99_tb_ce0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tb_ce1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( grp_readmem_fu_99_tb_ce1 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tb_we1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln69_reg_125 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_zext_ln73_fu_120_p1);
    sensitive << ( i_0_i_reg_87 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln69_fu_108_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    grp_readmem_fu_99_ap_start_reg = SC_LOGIC_0;
    ap_sync_reg_grp_readmem_fu_99_ap_ready = SC_LOGIC_0;
    ap_sync_reg_grp_readmem_fu_99_ap_done = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "example_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in1_strm_V_dout, "(port)in1_strm_V_dout");
    sc_trace(mVcdFile, in1_strm_V_empty_n, "(port)in1_strm_V_empty_n");
    sc_trace(mVcdFile, in1_strm_V_read, "(port)in1_strm_V_read");
    sc_trace(mVcdFile, in2_strm_V_dout, "(port)in2_strm_V_dout");
    sc_trace(mVcdFile, in2_strm_V_empty_n, "(port)in2_strm_V_empty_n");
    sc_trace(mVcdFile, in2_strm_V_read, "(port)in2_strm_V_read");
    sc_trace(mVcdFile, out_strm_V_din, "(port)out_strm_V_din");
    sc_trace(mVcdFile, out_strm_V_full_n, "(port)out_strm_V_full_n");
    sc_trace(mVcdFile, out_strm_V_write, "(port)out_strm_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, in1_strm_V_blk_n, "in1_strm_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln69_reg_125, "icmp_ln69_reg_125");
    sc_trace(mVcdFile, i_0_i_reg_87, "i_0_i_reg_87");
    sc_trace(mVcdFile, icmp_ln69_fu_108_p2, "icmp_ln69_fu_108_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_fu_114_p2, "i_fu_114_p2");
    sc_trace(mVcdFile, i_reg_129, "i_reg_129");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, tb_ce0, "tb_ce0");
    sc_trace(mVcdFile, tb_q0, "tb_q0");
    sc_trace(mVcdFile, tb_address1, "tb_address1");
    sc_trace(mVcdFile, tb_ce1, "tb_ce1");
    sc_trace(mVcdFile, tb_we1, "tb_we1");
    sc_trace(mVcdFile, tb_q1, "tb_q1");
    sc_trace(mVcdFile, grp_readmem_fu_99_in_strm_V_read, "grp_readmem_fu_99_in_strm_V_read");
    sc_trace(mVcdFile, grp_readmem_fu_99_out_strm_V_din, "grp_readmem_fu_99_out_strm_V_din");
    sc_trace(mVcdFile, grp_readmem_fu_99_out_strm_V_write, "grp_readmem_fu_99_out_strm_V_write");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_address0, "grp_readmem_fu_99_tb_address0");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_ce0, "grp_readmem_fu_99_tb_ce0");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_d0, "grp_readmem_fu_99_tb_d0");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_we0, "grp_readmem_fu_99_tb_we0");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_address1, "grp_readmem_fu_99_tb_address1");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_ce1, "grp_readmem_fu_99_tb_ce1");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_d1, "grp_readmem_fu_99_tb_d1");
    sc_trace(mVcdFile, grp_readmem_fu_99_tb_we1, "grp_readmem_fu_99_tb_we1");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_start, "grp_readmem_fu_99_ap_start");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_done, "grp_readmem_fu_99_ap_done");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_ready, "grp_readmem_fu_99_ap_ready");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_idle, "grp_readmem_fu_99_ap_idle");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_continue, "grp_readmem_fu_99_ap_continue");
    sc_trace(mVcdFile, ap_phi_mux_i_0_i_phi_fu_91_p4, "ap_phi_mux_i_0_i_phi_fu_91_p4");
    sc_trace(mVcdFile, grp_readmem_fu_99_ap_start_reg, "grp_readmem_fu_99_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_sync_grp_readmem_fu_99_ap_ready, "ap_sync_grp_readmem_fu_99_ap_ready");
    sc_trace(mVcdFile, ap_sync_grp_readmem_fu_99_ap_done, "ap_sync_grp_readmem_fu_99_ap_done");
    sc_trace(mVcdFile, ap_block_state5_on_subcall_done, "ap_block_state5_on_subcall_done");
    sc_trace(mVcdFile, ap_sync_reg_grp_readmem_fu_99_ap_ready, "ap_sync_reg_grp_readmem_fu_99_ap_ready");
    sc_trace(mVcdFile, ap_sync_reg_grp_readmem_fu_99_ap_done, "ap_sync_reg_grp_readmem_fu_99_ap_done");
    sc_trace(mVcdFile, zext_ln73_fu_120_p1, "zext_ln73_fu_120_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("example.hdltvin.dat");
    mHdltvoutHandle.open("example.hdltvout.dat");
}

example::~example() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete tb_U;
    delete grp_readmem_fu_99;
}

void example::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_grp_readmem_fu_99_ap_done = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
             esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
            ap_sync_reg_grp_readmem_fu_99_ap_done = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_readmem_fu_99_ap_done.read())) {
            ap_sync_reg_grp_readmem_fu_99_ap_done = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_grp_readmem_fu_99_ap_ready = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
             esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
            ap_sync_reg_grp_readmem_fu_99_ap_ready = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_readmem_fu_99_ap_ready.read())) {
            ap_sync_reg_grp_readmem_fu_99_ap_ready = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_readmem_fu_99_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_grp_readmem_fu_99_ap_ready.read())))) {
            grp_readmem_fu_99_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_readmem_fu_99_ap_ready.read())) {
            grp_readmem_fu_99_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        i_0_i_reg_87 = i_reg_129.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_i_reg_87 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        i_reg_129 = i_fu_114_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln69_reg_125 = icmp_ln69_fu_108_p2.read();
    }
}

void example::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void example::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void example::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void example::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[3];
}

void example::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, in1_strm_V_empty_n.read()));
}

void example::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, in1_strm_V_empty_n.read()));
}

void example::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = (esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, in1_strm_V_empty_n.read()));
}

void example::thread_ap_block_state5_on_subcall_done() {
    ap_block_state5_on_subcall_done = esl_seteq<1,1,1>(ap_const_logic_0, (ap_sync_grp_readmem_fu_99_ap_ready.read() & ap_sync_grp_readmem_fu_99_ap_done.read()));
}

void example::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln69_fu_108_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void example::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void example::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void example::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void example::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void example::thread_ap_phi_mux_i_0_i_phi_fu_91_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0))) {
        ap_phi_mux_i_0_i_phi_fu_91_p4 = i_reg_129.read();
    } else {
        ap_phi_mux_i_0_i_phi_fu_91_p4 = i_0_i_reg_87.read();
    }
}

void example::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void example::thread_ap_sync_grp_readmem_fu_99_ap_done() {
    ap_sync_grp_readmem_fu_99_ap_done = (grp_readmem_fu_99_ap_done.read() | ap_sync_reg_grp_readmem_fu_99_ap_done.read());
}

void example::thread_ap_sync_grp_readmem_fu_99_ap_ready() {
    ap_sync_grp_readmem_fu_99_ap_ready = (grp_readmem_fu_99_ap_ready.read() | ap_sync_reg_grp_readmem_fu_99_ap_ready.read());
}

void example::thread_grp_readmem_fu_99_ap_continue() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
        grp_readmem_fu_99_ap_continue = ap_const_logic_1;
    } else {
        grp_readmem_fu_99_ap_continue = ap_const_logic_0;
    }
}

void example::thread_grp_readmem_fu_99_ap_start() {
    grp_readmem_fu_99_ap_start = grp_readmem_fu_99_ap_start_reg.read();
}

void example::thread_i_fu_114_p2() {
    i_fu_114_p2 = (!ap_phi_mux_i_0_i_phi_fu_91_p4.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(ap_phi_mux_i_0_i_phi_fu_91_p4.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void example::thread_icmp_ln69_fu_108_p2() {
    icmp_ln69_fu_108_p2 = (!ap_phi_mux_i_0_i_phi_fu_91_p4.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(ap_phi_mux_i_0_i_phi_fu_91_p4.read() == ap_const_lv4_A);
}

void example::thread_in1_strm_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0))) {
        in1_strm_V_blk_n = in1_strm_V_empty_n.read();
    } else {
        in1_strm_V_blk_n = ap_const_logic_1;
    }
}

void example::thread_in1_strm_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        in1_strm_V_read = ap_const_logic_1;
    } else {
        in1_strm_V_read = ap_const_logic_0;
    }
}

void example::thread_in2_strm_V_read() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        in2_strm_V_read = grp_readmem_fu_99_in_strm_V_read.read();
    } else {
        in2_strm_V_read = ap_const_logic_0;
    }
}

void example::thread_out_strm_V_din() {
    out_strm_V_din = grp_readmem_fu_99_out_strm_V_din.read();
}

void example::thread_out_strm_V_write() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        out_strm_V_write = grp_readmem_fu_99_out_strm_V_write.read();
    } else {
        out_strm_V_write = ap_const_logic_0;
    }
}

void example::thread_tb_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        tb_address1 =  (sc_lv<4>) (zext_ln73_fu_120_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tb_address1 = grp_readmem_fu_99_tb_address1.read();
    } else {
        tb_address1 = "XXXX";
    }
}

void example::thread_tb_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tb_ce0 = grp_readmem_fu_99_tb_ce0.read();
    } else {
        tb_ce0 = ap_const_logic_0;
    }
}

void example::thread_tb_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tb_ce1 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tb_ce1 = grp_readmem_fu_99_tb_ce1.read();
    } else {
        tb_ce1 = ap_const_logic_0;
    }
}

void example::thread_tb_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln69_reg_125.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tb_we1 = ap_const_logic_1;
    } else {
        tb_we1 = ap_const_logic_0;
    }
}

void example::thread_zext_ln73_fu_120_p1() {
    zext_ln73_fu_120_p1 = esl_zext<64,4>(i_0_i_reg_87.read());
}

void example::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln69_fu_108_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln69_fu_108_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

void example::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in1_strm_V_dout\" :  \"" << in1_strm_V_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in1_strm_V_empty_n\" :  \"" << in1_strm_V_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in1_strm_V_read\" :  \"" << in1_strm_V_read.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in2_strm_V_dout\" :  \"" << in2_strm_V_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in2_strm_V_empty_n\" :  \"" << in2_strm_V_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in2_strm_V_read\" :  \"" << in2_strm_V_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_strm_V_din\" :  \"" << out_strm_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_strm_V_full_n\" :  \"" << out_strm_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_strm_V_write\" :  \"" << out_strm_V_write.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

