// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _example_HH_
#define _example_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "readmem.h"
#include "example_tb.h"

namespace ap_rtl {

struct example : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in1_strm_V_dout;
    sc_in< sc_logic > in1_strm_V_empty_n;
    sc_out< sc_logic > in1_strm_V_read;
    sc_in< sc_lv<32> > in2_strm_V_dout;
    sc_in< sc_logic > in2_strm_V_empty_n;
    sc_out< sc_logic > in2_strm_V_read;
    sc_out< sc_lv<32> > out_strm_V_din;
    sc_in< sc_logic > out_strm_V_full_n;
    sc_out< sc_logic > out_strm_V_write;


    // Module declarations
    example(sc_module_name name);
    SC_HAS_PROCESS(example);

    ~example();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    example_tb* tb_U;
    readmem* grp_readmem_fu_99;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > in1_strm_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln69_reg_125;
    sc_signal< sc_lv<4> > i_0_i_reg_87;
    sc_signal< sc_lv<1> > icmp_ln69_fu_108_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<4> > i_fu_114_p2;
    sc_signal< sc_lv<4> > i_reg_129;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > tb_ce0;
    sc_signal< sc_lv<32> > tb_q0;
    sc_signal< sc_lv<4> > tb_address1;
    sc_signal< sc_logic > tb_ce1;
    sc_signal< sc_logic > tb_we1;
    sc_signal< sc_lv<32> > tb_q1;
    sc_signal< sc_logic > grp_readmem_fu_99_in_strm_V_read;
    sc_signal< sc_lv<32> > grp_readmem_fu_99_out_strm_V_din;
    sc_signal< sc_logic > grp_readmem_fu_99_out_strm_V_write;
    sc_signal< sc_lv<4> > grp_readmem_fu_99_tb_address0;
    sc_signal< sc_logic > grp_readmem_fu_99_tb_ce0;
    sc_signal< sc_lv<32> > grp_readmem_fu_99_tb_d0;
    sc_signal< sc_logic > grp_readmem_fu_99_tb_we0;
    sc_signal< sc_lv<4> > grp_readmem_fu_99_tb_address1;
    sc_signal< sc_logic > grp_readmem_fu_99_tb_ce1;
    sc_signal< sc_lv<32> > grp_readmem_fu_99_tb_d1;
    sc_signal< sc_logic > grp_readmem_fu_99_tb_we1;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_start;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_done;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_ready;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_idle;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_continue;
    sc_signal< sc_lv<4> > ap_phi_mux_i_0_i_phi_fu_91_p4;
    sc_signal< sc_logic > grp_readmem_fu_99_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_sync_grp_readmem_fu_99_ap_ready;
    sc_signal< sc_logic > ap_sync_grp_readmem_fu_99_ap_done;
    sc_signal< bool > ap_block_state5_on_subcall_done;
    sc_signal< sc_logic > ap_sync_reg_grp_readmem_fu_99_ap_ready;
    sc_signal< sc_logic > ap_sync_reg_grp_readmem_fu_99_ap_done;
    sc_signal< sc_lv<64> > zext_ln73_fu_120_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state5_on_subcall_done();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_i_phi_fu_91_p4();
    void thread_ap_ready();
    void thread_ap_sync_grp_readmem_fu_99_ap_done();
    void thread_ap_sync_grp_readmem_fu_99_ap_ready();
    void thread_grp_readmem_fu_99_ap_continue();
    void thread_grp_readmem_fu_99_ap_start();
    void thread_i_fu_114_p2();
    void thread_icmp_ln69_fu_108_p2();
    void thread_in1_strm_V_blk_n();
    void thread_in1_strm_V_read();
    void thread_in2_strm_V_read();
    void thread_out_strm_V_din();
    void thread_out_strm_V_write();
    void thread_tb_address1();
    void thread_tb_ce0();
    void thread_tb_ce1();
    void thread_tb_we1();
    void thread_zext_ln73_fu_120_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
