// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _compute_pro_HH_
#define _compute_pro_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "moblie_net_sitofpchv.h"
#include "moblie_net_sptohpciv.h"
#include "moblie_net_hadd_1bkb.h"
#include "moblie_net_hdiv_1cjv.h"
#include "compute_pro_outpucgu.h"

namespace ap_rtl {

struct compute_pro : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > input_buffer_V_dout;
    sc_in< sc_logic > input_buffer_V_empty_n;
    sc_out< sc_logic > input_buffer_V_read;
    sc_out< sc_lv<16> > output_buffer_V_din;
    sc_in< sc_logic > output_buffer_V_full_n;
    sc_out< sc_logic > output_buffer_V_write;
    sc_in< sc_logic > data_buffer_V_dout;
    sc_in< sc_logic > data_buffer_V_empty_n;
    sc_out< sc_logic > data_buffer_V_read;
    sc_out< sc_logic > result_buffer_V_din;
    sc_in< sc_logic > result_buffer_V_full_n;
    sc_out< sc_logic > result_buffer_V_write;
    sc_in< sc_lv<32> > data_n_V_dout;
    sc_in< sc_logic > data_n_V_empty_n;
    sc_out< sc_logic > data_n_V_read;
    sc_in< sc_lv<32> > data_r_V_dout;
    sc_in< sc_logic > data_r_V_empty_n;
    sc_out< sc_logic > data_r_V_read;
    sc_in< sc_lv<32> > data_c_V_dout;
    sc_in< sc_logic > data_c_V_empty_n;
    sc_out< sc_logic > data_c_V_read;
    sc_out< sc_lv<32> > result_n_V_din;
    sc_in< sc_logic > result_n_V_full_n;
    sc_out< sc_logic > result_n_V_write;
    sc_out< sc_lv<32> > result_r_V_din;
    sc_in< sc_logic > result_r_V_full_n;
    sc_out< sc_logic > result_r_V_write;
    sc_out< sc_lv<32> > result_c_V_din;
    sc_in< sc_logic > result_c_V_full_n;
    sc_out< sc_logic > result_c_V_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    compute_pro(sc_module_name name);
    SC_HAS_PROCESS(compute_pro);

    ~compute_pro();

    sc_trace_file* mVcdFile;

    compute_pro_outpucgu* output_temp_U;
    moblie_net_sitofpchv<1,6,32,32>* moblie_net_sitofpchv_U2843;
    moblie_net_sitofpchv<1,6,32,32>* moblie_net_sitofpchv_U2844;
    moblie_net_sptohpciv<1,3,32,16>* moblie_net_sptohpciv_U2845;
    moblie_net_sptohpciv<1,3,32,16>* moblie_net_sptohpciv_U2846;
    moblie_net_hadd_1bkb<1,4,16,16,16>* moblie_net_hadd_1bkb_U2847;
    moblie_net_hdiv_1cjv<1,6,16,16,16>* moblie_net_hdiv_1cjv_U2848;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<54> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > block_cnt;
    sc_signal< sc_lv<32> > grp_fu_266_p1;
    sc_signal< sc_lv<32> > reg_313;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<16> > grp_fu_284_p2;
    sc_signal< sc_lv<16> > reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_lv<32> > tmp_1350_reg_543;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_104_p3;
    sc_signal< sc_lv<1> > tmp_9_nbwritereq_fu_112_p3;
    sc_signal< sc_lv<32> > tmp_1351_reg_551;
    sc_signal< sc_lv<32> > rLoops_fu_343_p3;
    sc_signal< sc_lv<32> > rLoops_reg_559;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > cLoops_fu_362_p3;
    sc_signal< sc_lv<32> > cLoops_reg_566;
    sc_signal< sc_lv<32> > grp_fu_269_p1;
    sc_signal< sc_lv<32> > tmp_1344_reg_573;
    sc_signal< sc_lv<32> > tmp_1349_reg_578;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > nLoops_fu_385_p3;
    sc_signal< sc_lv<32> > nLoops_reg_584;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > or_cond_fu_415_p2;
    sc_signal< sc_lv<1> > or_cond_reg_589;
    sc_signal< sc_lv<16> > grp_fu_272_p1;
    sc_signal< sc_lv<16> > tmp_588_reg_593;
    sc_signal< sc_lv<16> > grp_fu_275_p1;
    sc_signal< sc_lv<16> > tmp_589_reg_598;
    sc_signal< sc_lv<32> > tmp_15_fu_421_p2;
    sc_signal< sc_lv<32> > tmp_15_reg_603;
    sc_signal< sc_lv<32> > tmp_16_fu_426_p2;
    sc_signal< sc_lv<32> > tmp_16_reg_608;
    sc_signal< sc_lv<1> > brmerge_fu_443_p2;
    sc_signal< sc_lv<1> > brmerge_reg_613;
    sc_signal< sc_lv<4> > tn_1_fu_458_p2;
    sc_signal< sc_lv<4> > tn_1_reg_620;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<4> > tr_1_fu_507_p2;
    sc_signal< sc_lv<4> > tr_1_reg_634;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<3> > output_temp_addr_1_reg_639;
    sc_signal< sc_lv<1> > tmp_22_fu_502_p2;
    sc_signal< sc_lv<4> > tc_1_fu_527_p2;
    sc_signal< sc_lv<4> > tc_1_reg_648;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<16> > tmp_1355_reg_653;
    sc_signal< sc_lv<1> > tmp_26_fu_522_p2;
    sc_signal< sc_lv<16> > grp_fu_278_p2;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<16> > output_temp_q0;
    sc_signal< sc_lv<16> > output_temp_load_reg_668;
    sc_signal< sc_lv<16> > tmp_25_reg_673;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<16> > tmp_590_reg_684;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<16> > output_reg_reg_689;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_logic > output_temp_ce0;
    sc_signal< sc_lv<3> > output_temp_address1;
    sc_signal< sc_logic > output_temp_ce1;
    sc_signal< sc_logic > output_temp_we1;
    sc_signal< sc_lv<16> > output_temp_d1;
    sc_signal< sc_lv<4> > tn_reg_208;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_lv<16> > acc_datftr_reg_220;
    sc_signal< sc_lv<1> > tmp_17_fu_453_p2;
    sc_signal< sc_lv<4> > tr_reg_232;
    sc_signal< sc_lv<16> > acc_datftc_reg_243;
    sc_signal< sc_lv<4> > tc_reg_255;
    sc_signal< sc_lv<64> > tmp_21_fu_464_p1;
    sc_signal< sc_lv<64> > tmp_24_fu_513_p1;
    sc_signal< sc_lv<1> > tmp_1352_fu_493_p1;
    sc_signal< sc_lv<32> > tmp_10_fu_393_p2;
    sc_signal< sc_lv<1> > or_cond7_fu_481_p2;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<32> > grp_fu_266_p0;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<16> > grp_fu_278_p0;
    sc_signal< sc_lv<16> > grp_fu_278_p1;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_lv<16> > grp_fu_284_p0;
    sc_signal< sc_lv<16> > grp_fu_284_p1;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_lv<32> > grp_fu_295_p1;
    sc_signal< sc_lv<32> > grp_fu_304_p1;
    sc_signal< sc_lv<32> > tmp_4_fu_332_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_337_p2;
    sc_signal< sc_lv<32> > tmp_6_fu_351_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_356_p2;
    sc_signal< sc_lv<32> > tmp_s_fu_374_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_379_p2;
    sc_signal< sc_lv<1> > tmp_11_fu_405_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_410_p2;
    sc_signal< sc_lv<28> > grp_fu_295_p4;
    sc_signal< sc_lv<28> > grp_fu_304_p4;
    sc_signal< sc_lv<1> > icmp_fu_431_p2;
    sc_signal< sc_lv<1> > icmp16_fu_437_p2;
    sc_signal< sc_lv<32> > tn_cast_fu_449_p1;
    sc_signal< sc_lv<1> > icmp19_fu_469_p2;
    sc_signal< sc_lv<1> > icmp22_fu_475_p2;
    sc_signal< sc_lv<32> > tr_cast_fu_498_p1;
    sc_signal< sc_lv<32> > tc_cast_fu_518_p1;
    sc_signal< sc_lv<54> > ap_NS_fsm;
    sc_signal< bool > ap_block_state1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<54> ap_ST_fsm_state1;
    static const sc_lv<54> ap_ST_fsm_state2;
    static const sc_lv<54> ap_ST_fsm_state3;
    static const sc_lv<54> ap_ST_fsm_state4;
    static const sc_lv<54> ap_ST_fsm_state5;
    static const sc_lv<54> ap_ST_fsm_state6;
    static const sc_lv<54> ap_ST_fsm_state7;
    static const sc_lv<54> ap_ST_fsm_state8;
    static const sc_lv<54> ap_ST_fsm_state9;
    static const sc_lv<54> ap_ST_fsm_state10;
    static const sc_lv<54> ap_ST_fsm_state11;
    static const sc_lv<54> ap_ST_fsm_state12;
    static const sc_lv<54> ap_ST_fsm_state13;
    static const sc_lv<54> ap_ST_fsm_state14;
    static const sc_lv<54> ap_ST_fsm_state15;
    static const sc_lv<54> ap_ST_fsm_state16;
    static const sc_lv<54> ap_ST_fsm_state17;
    static const sc_lv<54> ap_ST_fsm_state18;
    static const sc_lv<54> ap_ST_fsm_state19;
    static const sc_lv<54> ap_ST_fsm_state20;
    static const sc_lv<54> ap_ST_fsm_state21;
    static const sc_lv<54> ap_ST_fsm_state22;
    static const sc_lv<54> ap_ST_fsm_state23;
    static const sc_lv<54> ap_ST_fsm_state24;
    static const sc_lv<54> ap_ST_fsm_state25;
    static const sc_lv<54> ap_ST_fsm_state26;
    static const sc_lv<54> ap_ST_fsm_state27;
    static const sc_lv<54> ap_ST_fsm_state28;
    static const sc_lv<54> ap_ST_fsm_state29;
    static const sc_lv<54> ap_ST_fsm_state30;
    static const sc_lv<54> ap_ST_fsm_state31;
    static const sc_lv<54> ap_ST_fsm_state32;
    static const sc_lv<54> ap_ST_fsm_state33;
    static const sc_lv<54> ap_ST_fsm_state34;
    static const sc_lv<54> ap_ST_fsm_state35;
    static const sc_lv<54> ap_ST_fsm_state36;
    static const sc_lv<54> ap_ST_fsm_state37;
    static const sc_lv<54> ap_ST_fsm_state38;
    static const sc_lv<54> ap_ST_fsm_state39;
    static const sc_lv<54> ap_ST_fsm_state40;
    static const sc_lv<54> ap_ST_fsm_state41;
    static const sc_lv<54> ap_ST_fsm_state42;
    static const sc_lv<54> ap_ST_fsm_state43;
    static const sc_lv<54> ap_ST_fsm_state44;
    static const sc_lv<54> ap_ST_fsm_state45;
    static const sc_lv<54> ap_ST_fsm_state46;
    static const sc_lv<54> ap_ST_fsm_state47;
    static const sc_lv<54> ap_ST_fsm_state48;
    static const sc_lv<54> ap_ST_fsm_state49;
    static const sc_lv<54> ap_ST_fsm_state50;
    static const sc_lv<54> ap_ST_fsm_state51;
    static const sc_lv<54> ap_ST_fsm_state52;
    static const sc_lv<54> ap_ST_fsm_state53;
    static const sc_lv<54> ap_ST_fsm_state54;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_200;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<28> ap_const_lv28_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<28> ap_const_lv28_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_brmerge_fu_443_p2();
    void thread_cLoops_fu_362_p3();
    void thread_data_buffer_V_read();
    void thread_data_c_V_read();
    void thread_data_n_V_read();
    void thread_data_r_V_read();
    void thread_grp_fu_266_p0();
    void thread_grp_fu_278_p0();
    void thread_grp_fu_278_p1();
    void thread_grp_fu_284_p0();
    void thread_grp_fu_284_p1();
    void thread_grp_fu_295_p1();
    void thread_grp_fu_295_p4();
    void thread_grp_fu_304_p1();
    void thread_grp_fu_304_p4();
    void thread_icmp16_fu_437_p2();
    void thread_icmp19_fu_469_p2();
    void thread_icmp22_fu_475_p2();
    void thread_icmp_fu_431_p2();
    void thread_input_buffer_V_read();
    void thread_nLoops_fu_385_p3();
    void thread_or_cond7_fu_481_p2();
    void thread_or_cond_fu_415_p2();
    void thread_output_buffer_V_din();
    void thread_output_buffer_V_write();
    void thread_output_temp_address1();
    void thread_output_temp_ce0();
    void thread_output_temp_ce1();
    void thread_output_temp_d1();
    void thread_output_temp_we1();
    void thread_rLoops_fu_343_p3();
    void thread_result_buffer_V_din();
    void thread_result_buffer_V_write();
    void thread_result_c_V_din();
    void thread_result_c_V_write();
    void thread_result_n_V_din();
    void thread_result_n_V_write();
    void thread_result_r_V_din();
    void thread_result_r_V_write();
    void thread_tc_1_fu_527_p2();
    void thread_tc_cast_fu_518_p1();
    void thread_tmp_10_fu_393_p2();
    void thread_tmp_11_fu_405_p2();
    void thread_tmp_12_fu_410_p2();
    void thread_tmp_1352_fu_493_p1();
    void thread_tmp_15_fu_421_p2();
    void thread_tmp_16_fu_426_p2();
    void thread_tmp_17_fu_453_p2();
    void thread_tmp_21_fu_464_p1();
    void thread_tmp_22_fu_502_p2();
    void thread_tmp_24_fu_513_p1();
    void thread_tmp_26_fu_522_p2();
    void thread_tmp_3_fu_379_p2();
    void thread_tmp_4_fu_332_p2();
    void thread_tmp_5_fu_337_p2();
    void thread_tmp_6_fu_351_p2();
    void thread_tmp_7_fu_356_p2();
    void thread_tmp_9_nbwritereq_fu_112_p3();
    void thread_tmp_nbreadreq_fu_104_p3();
    void thread_tmp_s_fu_374_p2();
    void thread_tn_1_fu_458_p2();
    void thread_tn_cast_fu_449_p1();
    void thread_tr_1_fu_507_p2();
    void thread_tr_cast_fu_498_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
