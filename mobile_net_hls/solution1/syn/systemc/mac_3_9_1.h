// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_3_9_1_HH_
#define _mac_3_9_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "moblie_net_hadd_1bkb.h"
#include "moblie_net_hmul_1cud.h"

namespace ap_rtl {

struct mac_3_9_1 : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<16> > input_regs_0_read;
    sc_in< sc_lv<16> > input_regs_1_read;
    sc_in< sc_lv<16> > input_regs_2_read;
    sc_in< sc_lv<16> > input_regs_3_read;
    sc_in< sc_lv<16> > input_regs_4_read;
    sc_in< sc_lv<16> > input_regs_5_read;
    sc_in< sc_lv<16> > input_regs_6_read;
    sc_in< sc_lv<16> > input_regs_7_read;
    sc_in< sc_lv<16> > input_regs_8_read;
    sc_out< sc_lv<16> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<16> > ap_var_for_const1;


    // Module declarations
    mac_3_9_1(sc_module_name name);
    SC_HAS_PROCESS(mac_3_9_1);

    ~mac_3_9_1();

    sc_trace_file* mVcdFile;

    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U521;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U522;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U523;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U524;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U525;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U526;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U527;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U528;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U529;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U530;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U531;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U532;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U533;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U534;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U535;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U536;
    moblie_net_hmul_1cud<1,4,16,16,16>* moblie_net_hmul_1cud_U537;
    sc_signal< sc_lv<16> > input_regs_8_read_1_reg_161;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter18;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter19;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<16> > input_regs_8_read_1_reg_161_pp0_iter1_reg;
    sc_signal< sc_lv<16> > input_regs_8_read_1_reg_161_pp0_iter2_reg;
    sc_signal< sc_lv<16> > input_regs_8_read_1_reg_161_pp0_iter3_reg;
    sc_signal< sc_lv<16> > grp_fu_108_p2;
    sc_signal< sc_lv<16> > tmp_5_reg_206;
    sc_signal< sc_lv<16> > grp_fu_114_p2;
    sc_signal< sc_lv<16> > tmp_5_0_1_reg_211;
    sc_signal< sc_lv<16> > grp_fu_120_p2;
    sc_signal< sc_lv<16> > tmp_5_0_2_reg_216;
    sc_signal< sc_lv<16> > grp_fu_126_p2;
    sc_signal< sc_lv<16> > tmp_5_1_reg_221;
    sc_signal< sc_lv<16> > grp_fu_132_p2;
    sc_signal< sc_lv<16> > tmp_5_1_1_reg_226;
    sc_signal< sc_lv<16> > grp_fu_138_p2;
    sc_signal< sc_lv<16> > tmp_5_1_2_reg_231;
    sc_signal< sc_lv<16> > grp_fu_144_p2;
    sc_signal< sc_lv<16> > tmp_5_2_reg_236;
    sc_signal< sc_lv<16> > grp_fu_150_p2;
    sc_signal< sc_lv<16> > tmp_5_2_1_reg_241;
    sc_signal< sc_lv<16> > grp_fu_156_p2;
    sc_signal< sc_lv<16> > tmp_5_2_2_reg_246;
    sc_signal< sc_lv<16> > grp_fu_76_p2;
    sc_signal< sc_lv<16> > tmp1_reg_251;
    sc_signal< sc_lv<16> > grp_fu_80_p2;
    sc_signal< sc_lv<16> > tmp2_reg_256;
    sc_signal< sc_lv<16> > grp_fu_84_p2;
    sc_signal< sc_lv<16> > tmp4_reg_261;
    sc_signal< sc_lv<16> > tmp4_reg_261_pp0_iter8_reg;
    sc_signal< sc_lv<16> > tmp4_reg_261_pp0_iter9_reg;
    sc_signal< sc_lv<16> > tmp4_reg_261_pp0_iter10_reg;
    sc_signal< sc_lv<16> > tmp4_reg_261_pp0_iter11_reg;
    sc_signal< sc_lv<16> > grp_fu_88_p2;
    sc_signal< sc_lv<16> > tmp6_reg_266;
    sc_signal< sc_lv<16> > grp_fu_92_p2;
    sc_signal< sc_lv<16> > tmp_reg_271;
    sc_signal< sc_lv<16> > tmp_reg_271_pp0_iter12_reg;
    sc_signal< sc_lv<16> > tmp_reg_271_pp0_iter13_reg;
    sc_signal< sc_lv<16> > tmp_reg_271_pp0_iter14_reg;
    sc_signal< sc_lv<16> > tmp_reg_271_pp0_iter15_reg;
    sc_signal< sc_lv<16> > grp_fu_96_p2;
    sc_signal< sc_lv<16> > tmp5_reg_276;
    sc_signal< sc_lv<16> > grp_fu_100_p2;
    sc_signal< sc_lv<16> > tmp3_reg_281;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<16> > grp_fu_104_p2;
    sc_signal< sc_lv<16> > input_regs_0_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_1_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_2_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_3_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_4_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_5_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_6_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_7_read_int_reg;
    sc_signal< sc_lv<16> > input_regs_8_read_int_reg;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state10_pp0_stage0_iter9();
    void thread_ap_block_state11_pp0_stage0_iter10();
    void thread_ap_block_state12_pp0_stage0_iter11();
    void thread_ap_block_state13_pp0_stage0_iter12();
    void thread_ap_block_state14_pp0_stage0_iter13();
    void thread_ap_block_state15_pp0_stage0_iter14();
    void thread_ap_block_state16_pp0_stage0_iter15();
    void thread_ap_block_state17_pp0_stage0_iter16();
    void thread_ap_block_state18_pp0_stage0_iter17();
    void thread_ap_block_state19_pp0_stage0_iter18();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state20_pp0_stage0_iter19();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_block_state6_pp0_stage0_iter5();
    void thread_ap_block_state7_pp0_stage0_iter6();
    void thread_ap_block_state8_pp0_stage0_iter7();
    void thread_ap_block_state9_pp0_stage0_iter8();
    void thread_ap_return();
};

}

using namespace ap_rtl;

#endif