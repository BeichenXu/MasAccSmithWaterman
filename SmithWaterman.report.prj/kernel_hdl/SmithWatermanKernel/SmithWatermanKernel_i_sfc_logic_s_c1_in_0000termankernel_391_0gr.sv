// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 2024.1 (Release Build #ca625dacf7)
// 
// Legal Notice: Copyright 2024 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from i_sfc_logic_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_391_0gr
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_i_sfc_logic_s_c1_in_0000termankernel_391_0gr (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_SmithWatermanKernel0,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [7:0] in_c1_eni6_1_tpl,
    input wire [7:0] in_c1_eni6_2_tpl,
    input wire [31:0] in_c1_eni6_3_tpl,
    input wire [31:0] in_c1_eni6_4_tpl,
    input wire [31:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0_394_17_q;
    wire [31:0] c_i32_1_394_14_q;
    wire [31:0] c_i32_2_394_15_q;
    wire [31:0] c_i32_2_394_16_q;
    wire [0:0] i_acl_5_smithwatermankernel_394_11_s;
    reg [31:0] i_acl_5_smithwatermankernel_394_11_q;
    wire [31:0] i_acl_5_smithwatermankernel_394_11_vt_join_q;
    wire [30:0] i_acl_5_smithwatermankernel_394_11_vt_select_30_b;
    wire [32:0] i_add_i_smithwatermankernel_394_5gr_a;
    wire [32:0] i_add_i_smithwatermankernel_394_5gr_b;
    logic [32:0] i_add_i_smithwatermankernel_394_5gr_o;
    wire [32:0] i_add_i_smithwatermankernel_394_5gr_q;
    wire [0:0] i_cmp22_i_smithwatermankernel_394_2gr_q;
    wire [0:0] i_cond_i_smithwatermankernel_394_4gr_s;
    reg [31:0] i_cond_i_smithwatermankernel_394_4gr_q;
    wire [31:0] i_cond_i_smithwatermankernel_394_4gr_vt_join_q;
    wire [31:0] i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q;
    wire [30:0] i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b;
    wire [31:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_join_q;
    wire [30:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_select_30_b;
    wire [32:0] i_sub29_i_smithwatermankernel_394_6gr_a;
    wire [32:0] i_sub29_i_smithwatermankernel_394_6gr_b;
    logic [32:0] i_sub29_i_smithwatermankernel_394_6gr_o;
    wire [32:0] i_sub29_i_smithwatermankernel_394_6gr_q;
    wire [32:0] i_sub36_i_smithwatermankernel_394_7gr_a;
    wire [32:0] i_sub36_i_smithwatermankernel_394_7gr_b;
    logic [32:0] i_sub36_i_smithwatermankernel_394_7gr_o;
    wire [32:0] i_sub36_i_smithwatermankernel_394_7gr_q;
    wire [31:0] bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b;
    wire [31:0] bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b;
    wire [31:0] bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x_b;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_s;
    reg [31:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q;
    wire [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_a;
    wire [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_b;
    logic [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_o;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_c;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_s;
    reg [31:0] i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_q;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_s;
    reg [31:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_q;
    wire [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_a;
    wire [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_b;
    logic [33:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_o;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_c;
    wire [0:0] i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_signBit_x_cmp_sign_q;
    wire [0:0] i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_b;
    wire [29:0] i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_c;
    reg [0:0] redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_q;
    reg [0:0] redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_delay_0;
    reg [0:0] redist1_sync_together_394_19_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together_394_19_aunroll_x_in_i_valid_2_delay_0;
    reg [31:0] redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1_q;
    reg [30:0] redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_q;
    reg [30:0] redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_delay_0;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together_394_19_aunroll_x_in_i_valid_2(DELAY,59)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together_394_19_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together_394_19_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together_394_19_aunroll_x_in_i_valid_2_q <= redist1_sync_together_394_19_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // c_i32_0_394_17(CONSTANT,6)
    assign c_i32_0_394_17_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_2_394_16(CONSTANT,9)
    assign c_i32_2_394_16_q = $unsigned(32'b11111111111111111111111111111110);

    // i_sub36_i_smithwatermankernel_394_7gr(ADD,28)@76
    assign i_sub36_i_smithwatermankernel_394_7gr_a = {1'b0, in_c1_eni6_5_tpl};
    assign i_sub36_i_smithwatermankernel_394_7gr_b = {1'b0, c_i32_2_394_16_q};
    assign i_sub36_i_smithwatermankernel_394_7gr_o = $unsigned(i_sub36_i_smithwatermankernel_394_7gr_a) + $unsigned(i_sub36_i_smithwatermankernel_394_7gr_b);
    assign i_sub36_i_smithwatermankernel_394_7gr_q = i_sub36_i_smithwatermankernel_394_7gr_o[32:0];

    // bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x(BITSELECT,34)@76
    assign bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x_b = i_sub36_i_smithwatermankernel_394_7gr_q[31:0];

    // i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_signBit_x_cmp_sign(LOGICAL,55)@76
    assign i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_signBit_x_cmp_sign_q = $unsigned(bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x_b[31:31]);

    // i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x(MUX,43)@76
    assign i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_s = i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_signBit_x_cmp_sign_q;
    always @(i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_s or bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x_b or c_i32_0_394_17_q)
    begin
        unique case (i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_s)
            1'b0 : i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_q = bgTrunc_i_sub36_i_smithwatermankernel_394_7gr_sel_x_b;
            1'b1 : i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_q = c_i32_0_394_17_q;
            default : i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_q = 32'b0;
        endcase
    end

    // i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30(BITSELECT,23)@76
    assign i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b = i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_413_0gr_smax_mux_x_q[30:0];

    // redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2(DELAY,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_delay_0 <= $unsigned(i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b);
            redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_q <= redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_delay_0;
        end
    end

    // i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join(BITJOIN,22)@78
    assign i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q = {GND_q, redist4_i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_select_30_b_2_q};

    // i_sub29_i_smithwatermankernel_394_6gr(ADD,27)@76
    assign i_sub29_i_smithwatermankernel_394_6gr_a = {1'b0, in_c1_eni6_4_tpl};
    assign i_sub29_i_smithwatermankernel_394_6gr_b = {1'b0, c_i32_2_394_16_q};
    assign i_sub29_i_smithwatermankernel_394_6gr_o = $unsigned(i_sub29_i_smithwatermankernel_394_6gr_a) + $unsigned(i_sub29_i_smithwatermankernel_394_6gr_b);
    assign i_sub29_i_smithwatermankernel_394_6gr_q = i_sub29_i_smithwatermankernel_394_6gr_o[32:0];

    // bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x(BITSELECT,33)@76
    assign bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b = i_sub29_i_smithwatermankernel_394_6gr_q[31:0];

    // redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1(DELAY,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b);
        end
    end

    // c_i32_2_394_15(CONSTANT,8)
    assign c_i32_2_394_15_q = $unsigned(32'b00000000000000000000000000000010);

    // c_i32_1_394_14(CONSTANT,7)
    assign c_i32_1_394_14_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp22_i_smithwatermankernel_394_2gr(LOGICAL,15)@76
    assign i_cmp22_i_smithwatermankernel_394_2gr_q = $unsigned(in_c1_eni6_1_tpl == in_c1_eni6_2_tpl ? 1'b1 : 1'b0);

    // i_cond_i_smithwatermankernel_394_4gr(MUX,16)@76
    assign i_cond_i_smithwatermankernel_394_4gr_s = i_cmp22_i_smithwatermankernel_394_2gr_q;
    always @(i_cond_i_smithwatermankernel_394_4gr_s or c_i32_1_394_14_q or c_i32_2_394_15_q)
    begin
        unique case (i_cond_i_smithwatermankernel_394_4gr_s)
            1'b0 : i_cond_i_smithwatermankernel_394_4gr_q = c_i32_1_394_14_q;
            1'b1 : i_cond_i_smithwatermankernel_394_4gr_q = c_i32_2_394_15_q;
            default : i_cond_i_smithwatermankernel_394_4gr_q = 32'b0;
        endcase
    end

    // i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged(BITSELECT,57)@76
    assign i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_b = i_cond_i_smithwatermankernel_394_4gr_q[0:0];
    assign i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_c = i_cond_i_smithwatermankernel_394_4gr_q[31:2];

    // i_cond_i_smithwatermankernel_394_4gr_vt_join(BITJOIN,18)@76
    assign i_cond_i_smithwatermankernel_394_4gr_vt_join_q = {i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_c, VCC_q, i_cond_i_smithwatermankernel_394_4gr_vt_select_0_bit_select_merged_b};

    // i_add_i_smithwatermankernel_394_5gr(ADD,14)@76
    assign i_add_i_smithwatermankernel_394_5gr_a = {1'b0, i_cond_i_smithwatermankernel_394_4gr_vt_join_q};
    assign i_add_i_smithwatermankernel_394_5gr_b = {1'b0, in_c1_eni6_3_tpl};
    assign i_add_i_smithwatermankernel_394_5gr_o = $unsigned(i_add_i_smithwatermankernel_394_5gr_a) + $unsigned(i_add_i_smithwatermankernel_394_5gr_b);
    assign i_add_i_smithwatermankernel_394_5gr_q = i_add_i_smithwatermankernel_394_5gr_o[32:0];

    // bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x(BITSELECT,32)@76
    assign bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b = i_add_i_smithwatermankernel_394_5gr_q[31:0];

    // redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1(DELAY,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b);
        end
    end

    // i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x(COMPARE,40)@77
    assign i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_a = $unsigned({{2{redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1_q[31]}}, redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1_q});
    assign i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_b = $unsigned({{2{redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1_q[31]}}, redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1_q});
    assign i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_o = $unsigned($signed(i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_a) - $signed(i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_b));
    assign i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_c[0] = i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_o[33];

    // i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x(MUX,39)@77 + 1
    assign i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_s = i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_signBit_x_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_s)
                1'b0 : i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q <= redist3_bgTrunc_i_add_i_smithwatermankernel_394_5gr_sel_x_b_1_q;
                1'b1 : i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q <= redist2_bgTrunc_i_sub29_i_smithwatermankernel_394_6gr_sel_x_b_1_q;
                default : i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x(COMPARE,49)@78
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_a = $unsigned({{2{i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q[31]}}, i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q});
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_b = $unsigned({{2{i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q[31]}}, i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q});
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_o = $unsigned($signed(i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_a) - $signed(i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_b));
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_c[0] = i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_o[33];

    // i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x(MUX,48)@78
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_s = i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_signBit_x_c;
    always @(i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_s or i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q or i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q)
    begin
        unique case (i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_s)
            1'b0 : i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_q = i_llvm_smax_i32_reduction_smithwatermankernel_0_smithwatermankernel_406_0gr_smax_mux_x_q;
            1'b1 : i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_q = i_llvm_smax_i32_reduction_smithwatermankernel_1_smithwatermankernel_394_9gr_vt_join_q;
            default : i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_q = 32'b0;
        endcase
    end

    // i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_select_30(BITSELECT,26)@78
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_select_30_b = i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_420_0gr_smax_mux_x_q[30:0];

    // i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_join(BITJOIN,25)@78
    assign i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_join_q = {GND_q, i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_select_30_b};

    // redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2(DELAY,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_delay_0 <= $unsigned(in_c1_eni6_6_tpl);
            redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_q <= redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_delay_0;
        end
    end

    // i_acl_5_smithwatermankernel_394_11(MUX,10)@78
    assign i_acl_5_smithwatermankernel_394_11_s = redist0_sync_together_394_19_aunroll_x_in_c1_eni6_6_tpl_2_q;
    always @(i_acl_5_smithwatermankernel_394_11_s or i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_join_q or c_i32_0_394_17_q)
    begin
        unique case (i_acl_5_smithwatermankernel_394_11_s)
            1'b0 : i_acl_5_smithwatermankernel_394_11_q = i_llvm_smax_i32_reduction_smithwatermankernel_2_smithwatermankernel_394_10_vt_join_q;
            1'b1 : i_acl_5_smithwatermankernel_394_11_q = c_i32_0_394_17_q;
            default : i_acl_5_smithwatermankernel_394_11_q = 32'b0;
        endcase
    end

    // i_acl_5_smithwatermankernel_394_11_vt_select_30(BITSELECT,13)@78
    assign i_acl_5_smithwatermankernel_394_11_vt_select_30_b = i_acl_5_smithwatermankernel_394_11_q[30:0];

    // i_acl_5_smithwatermankernel_394_11_vt_join(BITJOIN,12)@78
    assign i_acl_5_smithwatermankernel_394_11_vt_join_q = {GND_q, i_acl_5_smithwatermankernel_394_11_vt_select_30_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_2_aunroll_x(GPOUT,50)@78
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_5_smithwatermankernel_394_11_vt_join_q;
    assign out_o_valid = redist1_sync_together_394_19_aunroll_x_in_i_valid_2_q;
    assign out_unnamed_SmithWatermanKernel0 = GND_q;

endmodule
