// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module copy_input_fmem2buff_9 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_inputs_AWVALID,
        m_axi_inputs_AWREADY,
        m_axi_inputs_AWADDR,
        m_axi_inputs_AWID,
        m_axi_inputs_AWLEN,
        m_axi_inputs_AWSIZE,
        m_axi_inputs_AWBURST,
        m_axi_inputs_AWLOCK,
        m_axi_inputs_AWCACHE,
        m_axi_inputs_AWPROT,
        m_axi_inputs_AWQOS,
        m_axi_inputs_AWREGION,
        m_axi_inputs_AWUSER,
        m_axi_inputs_WVALID,
        m_axi_inputs_WREADY,
        m_axi_inputs_WDATA,
        m_axi_inputs_WSTRB,
        m_axi_inputs_WLAST,
        m_axi_inputs_WID,
        m_axi_inputs_WUSER,
        m_axi_inputs_ARVALID,
        m_axi_inputs_ARREADY,
        m_axi_inputs_ARADDR,
        m_axi_inputs_ARID,
        m_axi_inputs_ARLEN,
        m_axi_inputs_ARSIZE,
        m_axi_inputs_ARBURST,
        m_axi_inputs_ARLOCK,
        m_axi_inputs_ARCACHE,
        m_axi_inputs_ARPROT,
        m_axi_inputs_ARQOS,
        m_axi_inputs_ARREGION,
        m_axi_inputs_ARUSER,
        m_axi_inputs_RVALID,
        m_axi_inputs_RREADY,
        m_axi_inputs_RDATA,
        m_axi_inputs_RLAST,
        m_axi_inputs_RID,
        m_axi_inputs_RUSER,
        m_axi_inputs_RRESP,
        m_axi_inputs_BVALID,
        m_axi_inputs_BREADY,
        m_axi_inputs_BRESP,
        m_axi_inputs_BID,
        m_axi_inputs_BUSER,
        inputs_offset,
        inputs_offset1,
        input_buffer_V_din,
        input_buffer_V_full_n,
        input_buffer_V_write,
        n,
        nLoops,
        input_cntl_V_din,
        input_cntl_V_full_n,
        input_cntl_V_write
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_pp0_stage0 = 14'd1024;
parameter    ap_ST_fsm_state14 = 14'd2048;
parameter    ap_ST_fsm_state15 = 14'd4096;
parameter    ap_ST_fsm_state16 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_inputs_AWVALID;
input   m_axi_inputs_AWREADY;
output  [31:0] m_axi_inputs_AWADDR;
output  [0:0] m_axi_inputs_AWID;
output  [31:0] m_axi_inputs_AWLEN;
output  [2:0] m_axi_inputs_AWSIZE;
output  [1:0] m_axi_inputs_AWBURST;
output  [1:0] m_axi_inputs_AWLOCK;
output  [3:0] m_axi_inputs_AWCACHE;
output  [2:0] m_axi_inputs_AWPROT;
output  [3:0] m_axi_inputs_AWQOS;
output  [3:0] m_axi_inputs_AWREGION;
output  [0:0] m_axi_inputs_AWUSER;
output   m_axi_inputs_WVALID;
input   m_axi_inputs_WREADY;
output  [15:0] m_axi_inputs_WDATA;
output  [1:0] m_axi_inputs_WSTRB;
output   m_axi_inputs_WLAST;
output  [0:0] m_axi_inputs_WID;
output  [0:0] m_axi_inputs_WUSER;
output   m_axi_inputs_ARVALID;
input   m_axi_inputs_ARREADY;
output  [31:0] m_axi_inputs_ARADDR;
output  [0:0] m_axi_inputs_ARID;
output  [31:0] m_axi_inputs_ARLEN;
output  [2:0] m_axi_inputs_ARSIZE;
output  [1:0] m_axi_inputs_ARBURST;
output  [1:0] m_axi_inputs_ARLOCK;
output  [3:0] m_axi_inputs_ARCACHE;
output  [2:0] m_axi_inputs_ARPROT;
output  [3:0] m_axi_inputs_ARQOS;
output  [3:0] m_axi_inputs_ARREGION;
output  [0:0] m_axi_inputs_ARUSER;
input   m_axi_inputs_RVALID;
output   m_axi_inputs_RREADY;
input  [15:0] m_axi_inputs_RDATA;
input   m_axi_inputs_RLAST;
input  [0:0] m_axi_inputs_RID;
input  [0:0] m_axi_inputs_RUSER;
input  [1:0] m_axi_inputs_RRESP;
input   m_axi_inputs_BVALID;
output   m_axi_inputs_BREADY;
input  [1:0] m_axi_inputs_BRESP;
input  [0:0] m_axi_inputs_BID;
input  [0:0] m_axi_inputs_BUSER;
input  [30:0] inputs_offset;
input  [17:0] inputs_offset1;
output  [15:0] input_buffer_V_din;
input   input_buffer_V_full_n;
output   input_buffer_V_write;
input  [9:0] n;
input  [1:0] nLoops;
output   input_cntl_V_din;
input   input_cntl_V_full_n;
output   input_cntl_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_inputs_ARVALID;
reg m_axi_inputs_RREADY;
reg[15:0] input_buffer_V_din;
reg input_buffer_V_write;
reg input_cntl_V_write;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    inputs_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    inputs_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_414;
reg   [4:0] i2_reg_201;
wire  signed [18:0] base_addr1_cast4_fu_245_p1;
wire   [19:0] inputs_offset_cast_c_fu_249_p1;
reg   [19:0] inputs_offset_cast_c_reg_372;
wire   [32:0] sext_cast_fu_253_p1;
reg   [32:0] sext_cast_reg_377;
wire   [1:0] tn_8_fu_262_p2;
reg   [1:0] tn_8_reg_385;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond4_fu_268_p2;
wire    ap_CS_fsm_state3;
wire   [4:0] tr_1_fu_274_p2;
reg   [4:0] tr_1_reg_394;
wire   [0:0] or_cond_fu_292_p2;
reg   [0:0] or_cond_reg_399;
reg   [31:0] inputs_addr_reg_403;
wire   [18:0] base_addr1_d1_6_fu_326_p2;
wire   [0:0] exitcond_fu_332_p2;
wire    ap_block_state11_pp0_stage0_iter0;
reg    ap_block_state12_pp0_stage0_iter1;
wire    ap_block_state13_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_reg_414_pp0_iter1_reg;
wire   [4:0] i_7_fu_338_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [15:0] tmp_567_reg_423;
wire   [18:0] base_addr1_d2_1_fu_344_p2;
wire    ap_CS_fsm_state14;
wire   [4:0] i_6_fu_356_p2;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state10;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state11;
reg    ap_enable_reg_pp0_iter2;
reg   [18:0] base_addr1_d2_reg_158;
reg   [1:0] tn_reg_168;
reg  signed [18:0] base_addr1_d_reg_179;
wire   [0:0] exitcond1_fu_257_p2;
reg   [4:0] tr_reg_190;
reg   [4:0] i_reg_212;
wire   [0:0] exitcond3_fu_350_p2;
wire  signed [63:0] sum2_cast_fu_316_p1;
reg    ap_reg_ioackin_m_axi_inputs_ARREADY;
reg    ap_sig_ioackin_m_axi_inputs_ARREADY;
reg    ap_block_pp0_stage0_01001;
wire   [8:0] tmp_566_fu_223_p1;
wire   [16:0] tmp_fu_227_p3;
wire   [17:0] tmp_cast_fu_235_p1;
wire   [17:0] base_addr1_fu_239_p2;
wire   [0:0] tmp_19_fu_280_p2;
wire   [0:0] tmp_20_fu_286_p2;
wire  signed [19:0] tmp_21_fu_298_p1;
wire   [19:0] tmp_22_fu_302_p2;
wire  signed [32:0] tmp_169_cast_fu_307_p1;
wire   [32:0] sum2_fu_311_p2;
reg   [13:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_reg_ioackin_m_axi_inputs_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state11)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state11);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            if ((ap_sig_ioackin_m_axi_inputs_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b0;
            end else if ((m_axi_inputs_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond4_fu_268_p2 == 1'd1))) begin
        base_addr1_d2_reg_158 <= base_addr1_d1_6_fu_326_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        base_addr1_d2_reg_158 <= base_addr1_cast4_fu_245_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        base_addr1_d_reg_179 <= base_addr1_d2_1_fu_344_p2;
    end else if (((exitcond1_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        base_addr1_d_reg_179 <= base_addr1_d2_reg_158;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i2_reg_201 <= 5'd0;
    end else if (((exitcond_fu_332_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i2_reg_201 <= i_7_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (or_cond_fu_292_p2 == 1'd1))) begin
        i_reg_212 <= 5'd0;
    end else if (((exitcond3_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        i_reg_212 <= i_6_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond4_fu_268_p2 == 1'd1))) begin
        tn_reg_168 <= tn_8_reg_385;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tn_reg_168 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tr_reg_190 <= tr_1_reg_394;
    end else if (((exitcond1_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tr_reg_190 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_reg_414 <= exitcond_fu_332_p2;
        exitcond_reg_414_pp0_iter1_reg <= exitcond_reg_414;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_292_p2 == 1'd0) & (exitcond4_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        inputs_addr_reg_403 <= sum2_cast_fu_316_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        inputs_offset_cast_c_reg_372[17 : 0] <= inputs_offset_cast_c_fu_249_p1[17 : 0];
        sext_cast_reg_377[30 : 0] <= sext_cast_fu_253_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        or_cond_reg_399 <= or_cond_fu_292_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_414 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_567_reg_423 <= m_axi_inputs_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tn_8_reg_385 <= tn_8_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tr_1_reg_394 <= tr_1_fu_274_p2;
    end
end

always @ (*) begin
    if ((exitcond_fu_332_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state11 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state11 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_257_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_257_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_inputs_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_inputs_ARREADY = m_axi_inputs_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_inputs_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_414_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        input_buffer_V_din = tmp_567_reg_423;
    end else if ((((exitcond3_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15)) | ((or_cond_reg_399 == 1'd0) & (1'b1 == ap_CS_fsm_state14)) | ((or_cond_fu_292_p2 == 1'd0) & (exitcond4_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        input_buffer_V_din = 16'd0;
    end else begin
        input_buffer_V_din = 'bx;
    end
end

always @ (*) begin
    if (((input_buffer_V_full_n == 1'b1) & (((input_buffer_V_full_n == 1'b1) & (((input_buffer_V_full_n == 1'b1) & (((exitcond_reg_414_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((or_cond_fu_292_p2 == 1'd0) & (exitcond4_fu_268_p2 == 1'd0) & (input_buffer_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) | ((or_cond_reg_399 == 1'd0) & (1'b1 == ap_CS_fsm_state14)))) | ((exitcond3_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))))) begin
        input_buffer_V_write = 1'b1;
    end else begin
        input_buffer_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (input_cntl_V_full_n == 1'b1) & (exitcond1_fu_257_p2 == 1'd1))) begin
        input_cntl_V_write = 1'b1;
    end else begin
        input_cntl_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        inputs_blk_n_AR = m_axi_inputs_ARREADY;
    end else begin
        inputs_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_414 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        inputs_blk_n_R = m_axi_inputs_RVALID;
    end else begin
        inputs_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_inputs_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_inputs_ARVALID = 1'b1;
    end else begin
        m_axi_inputs_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_414 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_inputs_RREADY = 1'b1;
    end else begin
        m_axi_inputs_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_257_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond4_fu_268_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((exitcond4_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (or_cond_fu_292_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((ap_sig_ioackin_m_axi_inputs_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_fu_332_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_fu_332_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state15 : begin
            if (((exitcond3_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_reg_414 == 1'd0) & (m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_reg_414 == 1'd0) & (m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_reg_414 == 1'd0) & (m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state11_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state12_pp0_stage0_iter1 = ((exitcond_reg_414 == 1'd0) & (m_axi_inputs_RVALID == 1'b0));
end

assign ap_block_state13_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign base_addr1_cast4_fu_245_p1 = $signed(base_addr1_fu_239_p2);

assign base_addr1_d1_6_fu_326_p2 = (base_addr1_d2_reg_158 + 19'd256);

assign base_addr1_d2_1_fu_344_p2 = ($signed(base_addr1_d_reg_179) + $signed(19'd16));

assign base_addr1_fu_239_p2 = ($signed(18'd262128) + $signed(tmp_cast_fu_235_p1));

assign exitcond1_fu_257_p2 = ((tn_reg_168 == nLoops) ? 1'b1 : 1'b0);

assign exitcond3_fu_350_p2 = ((i_reg_212 == 5'd18) ? 1'b1 : 1'b0);

assign exitcond4_fu_268_p2 = ((tr_reg_190 == 5'd18) ? 1'b1 : 1'b0);

assign exitcond_fu_332_p2 = ((i2_reg_201 == 5'd16) ? 1'b1 : 1'b0);

assign i_6_fu_356_p2 = (i_reg_212 + 5'd1);

assign i_7_fu_338_p2 = (i2_reg_201 + 5'd1);

assign input_cntl_V_din = 1'd0;

assign inputs_offset_cast_c_fu_249_p1 = inputs_offset1;

assign m_axi_inputs_ARADDR = inputs_addr_reg_403;

assign m_axi_inputs_ARBURST = 2'd0;

assign m_axi_inputs_ARCACHE = 4'd0;

assign m_axi_inputs_ARID = 1'd0;

assign m_axi_inputs_ARLEN = 32'd16;

assign m_axi_inputs_ARLOCK = 2'd0;

assign m_axi_inputs_ARPROT = 3'd0;

assign m_axi_inputs_ARQOS = 4'd0;

assign m_axi_inputs_ARREGION = 4'd0;

assign m_axi_inputs_ARSIZE = 3'd0;

assign m_axi_inputs_ARUSER = 1'd0;

assign m_axi_inputs_AWADDR = 32'd0;

assign m_axi_inputs_AWBURST = 2'd0;

assign m_axi_inputs_AWCACHE = 4'd0;

assign m_axi_inputs_AWID = 1'd0;

assign m_axi_inputs_AWLEN = 32'd0;

assign m_axi_inputs_AWLOCK = 2'd0;

assign m_axi_inputs_AWPROT = 3'd0;

assign m_axi_inputs_AWQOS = 4'd0;

assign m_axi_inputs_AWREGION = 4'd0;

assign m_axi_inputs_AWSIZE = 3'd0;

assign m_axi_inputs_AWUSER = 1'd0;

assign m_axi_inputs_AWVALID = 1'b0;

assign m_axi_inputs_BREADY = 1'b0;

assign m_axi_inputs_WDATA = 16'd0;

assign m_axi_inputs_WID = 1'd0;

assign m_axi_inputs_WLAST = 1'b0;

assign m_axi_inputs_WSTRB = 2'd0;

assign m_axi_inputs_WUSER = 1'd0;

assign m_axi_inputs_WVALID = 1'b0;

assign or_cond_fu_292_p2 = (tmp_20_fu_286_p2 | tmp_19_fu_280_p2);

assign sext_cast_fu_253_p1 = inputs_offset;

assign sum2_cast_fu_316_p1 = $signed(sum2_fu_311_p2);

assign sum2_fu_311_p2 = ($signed(sext_cast_reg_377) + $signed(tmp_169_cast_fu_307_p1));

assign tmp_169_cast_fu_307_p1 = $signed(tmp_22_fu_302_p2);

assign tmp_19_fu_280_p2 = ((tr_reg_190 == 5'd0) ? 1'b1 : 1'b0);

assign tmp_20_fu_286_p2 = ((tr_reg_190 > 5'd16) ? 1'b1 : 1'b0);

assign tmp_21_fu_298_p1 = base_addr1_d_reg_179;

assign tmp_22_fu_302_p2 = ($signed(inputs_offset_cast_c_reg_372) + $signed(tmp_21_fu_298_p1));

assign tmp_566_fu_223_p1 = n[8:0];

assign tmp_cast_fu_235_p1 = tmp_fu_227_p3;

assign tmp_fu_227_p3 = {{tmp_566_fu_223_p1}, {8'd0}};

assign tn_8_fu_262_p2 = (tn_reg_168 + 2'd1);

assign tr_1_fu_274_p2 = (tr_reg_190 + 5'd1);

always @ (posedge ap_clk) begin
    inputs_offset_cast_c_reg_372[19:18] <= 2'b00;
    sext_cast_reg_377[32:31] <= 2'b00;
end

endmodule //copy_input_fmem2buff_9