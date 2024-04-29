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

// SystemVerilog created from i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_i_sfc_logic_s_c0_in_0000atermankernel_60_0gr (
    input wire [63:0] in_arg_score_acc,
    input wire [63:0] in_arg_seq_a_acc,
    input wire [63:0] in_arg_seq_b_acc,
    input wire [63:0] in_arg_score_acc2_0_tpl,
    input wire [63:0] in_arg_score_acc2_1_tpl,
    input wire [63:0] in_arg_score_acc4_0_tpl,
    input wire [63:0] in_arg_score_acc4_1_tpl,
    input wire [63:0] in_arg_seq_a_acc9_0_tpl,
    input wire [63:0] in_arg_seq_b_acc14_0_tpl,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [63:0] out_c0_exi7_2_tpl,
    output wire [63:0] out_c0_exi7_3_tpl,
    output wire [63:0] out_c0_exi7_4_tpl,
    output wire [63:0] out_c0_exi7_5_tpl,
    output wire [63:0] out_c0_exi7_6_tpl,
    output wire [63:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_SmithWatermanKernel0,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [63:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_1_63_55_q;
    wire [64:0] i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_a;
    wire [64:0] i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_b;
    logic [64:0] i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_o;
    wire [64:0] i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_q;
    wire [64:0] i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_a;
    wire [64:0] i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_b;
    logic [64:0] i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_o;
    wire [64:0] i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_q;
    wire [64:0] i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_a;
    wire [64:0] i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_b;
    logic [64:0] i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_o;
    wire [64:0] i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_q;
    wire [64:0] i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_a;
    wire [64:0] i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_b;
    logic [64:0] i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_o;
    wire [64:0] i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_q;
    wire [64:0] i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_a;
    wire [64:0] i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_b;
    logic [64:0] i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_o;
    wire [64:0] i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_q;
    wire [0:0] i_cmp4_i_smithwatermankernel_63_17_q;
    wire [0:0] i_cmp_i_smithwatermankernel_63_15_qi;
    reg [0:0] i_cmp_i_smithwatermankernel_63_15_q;
    wire [31:0] i_conv10_i_smithwatermankernel_63_32_vt_const_63_q;
    wire [63:0] i_conv10_i_smithwatermankernel_63_32_vt_join_q;
    wire [31:0] i_conv10_i_smithwatermankernel_63_32_vt_select_31_b;
    wire [63:0] i_conv8_i_smithwatermankernel_63_30_vt_join_q;
    wire [31:0] i_conv8_i_smithwatermankernel_63_30_vt_select_31_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i8_arg_score_acc_sync_buffer_smithwatermankernel_63_10_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i8_arg_seq_a_acc_sync_buffer_smithwatermankernel_63_27_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i8_arg_seq_b_acc_sync_buffer_smithwatermankernel_63_23_out_buffer_out;
    wire [0:0] i_or_cond_i_smithwatermankernel_63_19_s;
    reg [0:0] i_or_cond_i_smithwatermankernel_63_19_q;
    wire [32:0] i_sub9_i_smithwatermankernel_63_31_a;
    wire [32:0] i_sub9_i_smithwatermankernel_63_31_b;
    logic [32:0] i_sub9_i_smithwatermankernel_63_31_o;
    wire [32:0] i_sub9_i_smithwatermankernel_63_31_q;
    wire [32:0] i_sub_i_smithwatermankernel_63_29_a;
    wire [32:0] i_sub_i_smithwatermankernel_63_29_b;
    logic [32:0] i_sub_i_smithwatermankernel_63_29_o;
    wire [32:0] i_sub_i_smithwatermankernel_63_29_q;
    wire [63:0] bgTrunc_i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_sel_x_b;
    wire [63:0] bgTrunc_i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_sel_x_b;
    wire [63:0] bgTrunc_i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_sel_x_b;
    wire [63:0] bgTrunc_i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_sel_x_b;
    wire [63:0] bgTrunc_i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_sel_x_b;
    wire [63:0] bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b;
    wire [127:0] bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_in;
    wire [63:0] bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b;
    wire [127:0] bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_in;
    wire [63:0] bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b;
    wire [31:0] bgTrunc_i_sub9_i_smithwatermankernel_63_31_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_smithwatermankernel_63_29_sel_x_b;
    wire [64:0] i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_a;
    wire [64:0] i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_b;
    logic [64:0] i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_o;
    wire [64:0] i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_q;
    wire [63:0] i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b;
    wire [64:0] i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_a;
    wire [64:0] i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_b;
    logic [64:0] i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_o;
    wire [64:0] i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_q;
    wire [63:0] i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b;
    wire [64:0] i_add_ptr_i_smithwatermankernel_157_0gr_add_x_a;
    wire [64:0] i_add_ptr_i_smithwatermankernel_157_0gr_add_x_b;
    logic [64:0] i_add_ptr_i_smithwatermankernel_157_0gr_add_x_o;
    wire [64:0] i_add_ptr_i_smithwatermankernel_157_0gr_add_x_q;
    wire [1:0] i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q;
    wire [61:0] i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b;
    wire [63:0] i_add_ptr_i_smithwatermankernel_157_0gr_shift_join_x_q;
    wire [63:0] i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_a;
    wire [64:0] i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_b;
    logic [64:0] i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_o;
    wire [64:0] i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_q;
    wire [63:0] i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_a;
    wire [64:0] i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_b;
    logic [64:0] i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_o;
    wire [64:0] i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_q;
    wire [63:0] i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_a;
    wire [64:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_b;
    logic [64:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_o;
    wire [64:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_q;
    wire [61:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i165_i_smithwatermankernel_272_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_a;
    wire [64:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_b;
    logic [64:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_o;
    wire [64:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_q;
    wire [61:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i200_i_smithwatermankernel_282_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_a;
    wire [64:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_b;
    logic [64:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_o;
    wire [64:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_q;
    wire [61:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i54_i_smithwatermankernel_292_0gr_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_a;
    wire [64:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_b;
    logic [64:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_o;
    wire [64:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_q;
    wire [61:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b;
    wire [63:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_shift_join_x_q;
    wire [63:0] i_arrayidx_i85_i_smithwatermankernel_252_0gr_dupName_0_trunc_sel_x_b;
    wire [63:0] i_conv10_i_smithwatermankernel_63_32_sel_x_b;
    wire [31:0] i_conv3_i_smithwatermankernel_63_14_sel_x_b;
    wire [63:0] i_conv8_i_smithwatermankernel_63_30_sel_x_b;
    wire [31:0] i_conv8_i_smithwatermankernel_63_30_vt_join_narrowed_x_b;
    wire [31:0] i_conv_i_smithwatermankernel_63_13_sel_x_b;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_a_acc9_sync_buffer_smithwatermankernel_63_25_aunroll_x_out_buffer_out_0_tpl;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_b_acc14_sync_buffer_smithwatermankernel_63_21_aunroll_x_out_buffer_out_0_tpl;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer_smithwatermankernel_63_6gr_aunroll_x_out_buffer_out_1_tpl;
    wire [127:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_extender_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    wire [18:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q;
    wire [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB17_q;
    wire [10:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q;
    wire [18:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB21_q;
    wire [72:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_0_q;
    wire [54:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_q;
    wire [54:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_qint;
    wire [42:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_q;
    wire [42:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_qint;
    wire [97:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_3_q;
    wire [88:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_q;
    wire [88:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_qint;
    wire [98:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_a;
    wire [98:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_b;
    logic [98:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_o;
    wire [98:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_q;
    wire [99:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_a;
    wire [99:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_b;
    logic [99:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_o;
    wire [99:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_q;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_in;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_in;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b;
    wire [53:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_in;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b;
    wire [9:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA27_q;
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31_q;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA39_q;
    wire [47:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_q;
    wire [47:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_qint;
    wire [120:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_1_q;
    wire [54:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_q;
    wire [54:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_qint;
    wire [47:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_q;
    wire [47:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_qint;
    wire [26:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_q;
    wire [26:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_qint;
    wire [129:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_5_q;
    wire [71:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_q;
    wire [71:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_qint;
    wire [107:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_7_q;
    wire [91:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_q;
    wire [91:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_qint;
    wire [130:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_a;
    wire [130:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_b;
    logic [130:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_o;
    wire [130:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_q;
    wire [108:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_a;
    wire [108:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_b;
    logic [108:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_o;
    wire [108:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_q;
    wire [131:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_a;
    wire [131:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_b;
    logic [131:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_o;
    wire [131:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_q;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA27_q;
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31_q;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA39_q;
    wire [47:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_q;
    wire [47:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_qint;
    wire [120:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_1_q;
    wire [54:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_q;
    wire [54:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_qint;
    wire [47:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_q;
    wire [47:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_qint;
    wire [26:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_q;
    wire [26:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_qint;
    wire [129:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_5_q;
    wire [71:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_q;
    wire [71:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_qint;
    wire [107:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_7_q;
    wire [91:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_q;
    wire [91:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_qint;
    wire [130:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_a;
    wire [130:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_b;
    logic [130:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_o;
    wire [130:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_q;
    wire [108:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_a;
    wire [108:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_b;
    logic [108:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_o;
    wire [108:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_q;
    wire [131:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_a;
    wire [131:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_b;
    logic [131:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_o;
    wire [131:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena0;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena1;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena2;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ch [0:0];
    wire [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_a0;
    wire [10:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_c0;
    wire [25:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_s0;
    wire [25:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_qq0;
    reg [25:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena0;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena1;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ch [0:0];
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_a0;
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_c0;
    wire [21:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_s0;
    wire [21:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_qq0;
    reg [21:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ch [0:0];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_c0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_s0;
    wire [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_qq0;
    reg [35:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ch [0:0];
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_a0;
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_c0;
    wire [21:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_s0;
    wire [21:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_qq0;
    reg [21:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena2;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena0;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena1;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena2;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena0;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena1;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena2;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [18:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ch [0:1];
    wire [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a0;
    wire [18:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c0;
    wire [14:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a1;
    wire [18:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c1;
    wire [34:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_s0;
    wire [34:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_qq0;
    reg [34:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena0;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena1;
    wire i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah [0:3];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch [0:3];
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c1;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a2;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c2;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a3;
    wire [17:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c3;
    wire [37:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s0;
    wire [43:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s2;
    wire [37:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_qq0;
    reg [37:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ch [0:1];
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a0;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c0;
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a1;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c1;
    wire [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_s0;
    wire [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_qq0;
    reg [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena2;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ch [0:1];
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a0;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c0;
    wire [10:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a1;
    wire [18:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c1;
    wire [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_s0;
    wire [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_qq0;
    reg [30:0] i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_q;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena0;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena1;
    wire i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ch [0:1];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c1;
    wire [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_s0;
    wire [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_qq0;
    reg [36:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah [0:3];
    (* preserve_syn_only *) reg [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch [0:3];
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c0;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a1;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c1;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a2;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c2;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a3;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c3;
    wire [37:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s0;
    wire [43:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s2;
    wire [37:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_qq0;
    reg [37:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ch [0:1];
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a0;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c0;
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a1;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c1;
    wire [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_s0;
    wire [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_qq0;
    reg [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena2;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_reset;
    (* preserve_syn_only *) reg signed [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ch [0:1];
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a0;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c0;
    wire [10:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a1;
    wire [18:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c1;
    wire [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_s0;
    wire [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_qq0;
    reg [30:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_q;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena0;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena1;
    wire i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena2;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b;
    wire [13:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_c;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c;
    wire [17:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d;
    wire [9:0] i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c;
    wire [17:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d;
    wire [9:0] i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e;
    reg [17:0] redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_q;
    reg [17:0] redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_delay_0;
    reg [17:0] redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3_q;
    reg [17:0] redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_q;
    reg [17:0] redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_0;
    reg [17:0] redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_1;
    reg [17:0] redist3_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_1_q;
    reg [17:0] redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_q;
    reg [17:0] redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_delay_0;
    reg [9:0] redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_q;
    reg [9:0] redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_0;
    reg [9:0] redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_1;
    reg [17:0] redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q;
    reg [17:0] redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_0;
    reg [17:0] redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_1;
    reg [17:0] redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
    reg [17:0] redist8_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_1_q;
    reg [17:0] redist9_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_2_q;
    reg [17:0] redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q;
    reg [17:0] redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q;
    reg [17:0] redist12_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_1_q;
    reg [17:0] redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q;
    reg [17:0] redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_delay_0;
    reg [17:0] redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4_q;
    reg [9:0] redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_q;
    reg [9:0] redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_delay_0;
    reg [9:0] redist16_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_3_q;
    reg [34:0] redist17_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q_1_q;
    reg [18:0] redist18_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q_1_q;
    reg [9:0] redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_q;
    reg [9:0] redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_delay_0;
    reg [17:0] redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_q;
    reg [17:0] redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_delay_0;
    reg [17:0] redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_q;
    reg [17:0] redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_0;
    reg [17:0] redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_1;
    reg [17:0] redist22_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_1_q;
    reg [17:0] redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2_q;
    reg [10:0] redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q;
    reg [18:0] redist25_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q_1_q;
    reg [0:0] redist26_valid_fanout_reg0_q_1_q;
    reg [63:0] redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_q;
    reg [63:0] redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_delay_0;
    reg [63:0] redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q;
    reg [63:0] redist30_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_13_q;
    reg [0:0] redist31_sync_together_63_64_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist33_sync_together_63_64_aunroll_x_in_i_valid_12_q;
    reg [31:0] redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_q;
    reg [31:0] redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_delay_0;
    reg [61:0] redist35_i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b_1_q;
    reg [61:0] redist36_i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b_1_q;
    reg [61:0] redist37_i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b_1_q;
    reg [61:0] redist38_i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b_1_q;
    reg [63:0] redist39_i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b_1_q;
    reg [63:0] redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q;
    reg [61:0] redist42_i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b_1_q;
    reg [63:0] redist43_i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b_1_q;
    reg [63:0] redist44_i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b_1_q;
    reg [63:0] redist45_bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b_1_q;
    reg [63:0] redist46_bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b_1_q;
    reg [63:0] redist47_bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b_1_q;
    reg [0:0] redist48_i_or_cond_i_smithwatermankernel_63_19_q_2_q;
    reg [63:0] redist49_i_conv8_i_smithwatermankernel_63_30_vt_join_q_1_q;
    reg [31:0] redist50_i_conv10_i_smithwatermankernel_63_32_vt_select_31_b_1_q;
    reg [0:0] redist51_i_cmp_i_smithwatermankernel_63_15_q_7_q;
    reg [63:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_inputreg0_q;
    reg [63:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_outputreg0_q;
    wire redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_reset0;
    wire [63:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ia;
    wire [3:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_aa;
    wire [3:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ab;
    wire [63:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_iq;
    wire [63:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_q;
    wire [3:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_i = 4'b1111;
    wire [3:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_offset_q;
    wire [4:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_a;
    wire [4:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_b;
    logic [4:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_o;
    wire [4:0] redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_q;
    reg [63:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_inputreg0_q;
    reg [63:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_outputreg0_q;
    wire redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_reset0;
    wire [63:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ia;
    wire [2:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_aa;
    wire [2:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ab;
    wire [63:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_iq;
    wire [63:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_q;
    wire [2:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_i = 3'b111;
    wire [2:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_offset_q;
    wire [3:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_a;
    wire [3:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_b;
    logic [3:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_o;
    wire [3:0] redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist31_sync_together_63_64_aunroll_x_in_i_valid_4(DELAY,369)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_0 <= '0;
        end
        else
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_1 <= redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_2 <= '0;
        end
        else
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_2 <= redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_sync_together_63_64_aunroll_x_in_i_valid_4_q <= redist31_sync_together_63_64_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // redist32_sync_together_63_64_aunroll_x_in_i_valid_11(DELAY,370)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("SYNC"), .phase(4), .modulus(2), .reset_high(1'b0) )
    redist32_sync_together_63_64_aunroll_x_in_i_valid_11 ( .xin(redist31_sync_together_63_64_aunroll_x_in_i_valid_4_q), .xout(redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_sync_together_63_64_aunroll_x_in_i_valid_12(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_sync_together_63_64_aunroll_x_in_i_valid_12_q <= $unsigned(redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg0(REG,126)@12 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist33_sync_together_63_64_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist26_valid_fanout_reg0_q_1(DELAY,364)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_offset(CONSTANT,394)
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_offset_q = $unsigned(4'b1001);

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt(ADD,395)
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_a = {1'b0, redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_q};
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_b = {1'b0, redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_o <= $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_a) + $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_b);
        end
    end
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_q = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_o[4:0];

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_inputreg0(DELAY,390)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_inputreg0_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr(COUNTER,393)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_i <= $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_q = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_i[3:0];

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem(DUALMEM,392)
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ia = $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_inputreg0_q);
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_aa = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_wraddr_q;
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ab = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_aa),
        .data_a(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_ab),
        .q_b(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_q = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_iq[63:0];

    // redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_outputreg0(DELAY,391)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_outputreg0_q <= $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_mem_q);
        end
    end

    // redist30_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_13(DELAY,368)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_13_q <= $unsigned(redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_outputreg0_q);
        end
    end

    // redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2(DELAY,365)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_delay_0 <= $unsigned(in_c0_eni2_1_tpl);
            redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_q <= redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_delay_0;
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6(BITSELECT,190)@2
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_in = redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_q[35:0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_in[35:18];

    // valid_fanout_reg1(REG,127)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x(BLACKBOX,115)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_valid_out@1
    // out out_buffer_out_0_tpl@1
    // out out_buffer_out_1_tpl@1
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000atermankernel_68_0gr thei_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .in_buffer_in_0_tpl(in_arg_score_acc2_0_tpl),
        .in_buffer_in_1_tpl(in_arg_score_acc2_1_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(),
        .out_buffer_out_1_tpl(i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged(BITSELECT,336)@1
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl[17:0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl[35:18];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl[53:36];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc2_sync_buffer_smithwatermankernel_63_2gr_aunroll_x_out_buffer_out_1_tpl[63:54];

    // redist12_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_1(DELAY,350)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_1_q <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d);
        end
    end

    // redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3(DELAY,366)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q <= $unsigned(redist27_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_2_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14(BITSELECT,198)@3
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_in = redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q[53:0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_in[53:36];

    // redist8_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_1(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_1_q <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c);
        end
    end

    // redist9_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_2(DELAY,347)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_2_q <= $unsigned(redist8_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_1_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1(BITSELECT,185)@3
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_in = redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q[17:0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_in[17:0];

    // redist22_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_1(DELAY,360)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_1_q <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b);
        end
    end

    // redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2(DELAY,353)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_delay_0 <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e);
            redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_q <= redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_delay_0;
        end
    end

    // redist16_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_3(DELAY,354)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_3_q <= $unsigned(redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_q);
        end
    end

    // redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3(DELAY,344)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_0 <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b);
            redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_1 <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_0;
            redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_delay_1;
        end
    end

    // redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4(DELAY,345)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q <= $unsigned(redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23(BITSELECT,207)@3
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b = redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q[63:54];

    // redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2(DELAY,357)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b);
            redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_q <= redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_delay_0;
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma(CHAINMULTADD,327)@2 + 5
    // in e@5
    // in g@5
    // in h@4
    // in j@4
    // in k@3
    // in m@3
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[0] <= {8'b00000000, redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_q[9:0]};
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[1] <= {8'b00000000, redist16_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_3_q[9:0]};
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[2] <= redist9_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_2_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[3] <= redist12_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[1] <= redist22_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[2] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[3] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[1];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[1];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[2];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[2];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a3 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ah[3];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c3 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ch[3];
    tennm_mac #(
        .operation_mode("m18x18_systolic"),
        .chain_inout_width(44),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .input_systolic_clken("2"),
        .output_clken("1")
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_DSP1 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a3),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a2),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c3),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c2),
        .chainout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s2),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .disable_scanin(),
        .disable_chainout(),
        .resulta(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    tennm_mac #(
        .operation_mode("m18x18_systolic"),
        .chain_inout_width(44),
        .clear_type("none"),
        .use_chainadder("true"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .input_systolic_clken("2"),
        .output_clken("1"),
        .result_a_width(38)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a1),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c1),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_c0),
        .chainin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s2),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(38), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_qq0[37:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8(BITSHIFT,243)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma16_cma_q, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_qint[91:0];

    // redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3(DELAY,351)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_delay_0 <= $unsigned(redist12_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_1_q);
            redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q <= redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_delay_0;
        end
    end

    // redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4(DELAY,352)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4_q <= $unsigned(redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q);
        end
    end

    // redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2(DELAY,358)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b);
            redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_q <= redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_delay_0;
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma(CHAINMULTADD,316)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ah[0] <= redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ch[0] <= redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma(CHAINMULTADD,315)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ah[0] <= redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ch[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6(BITSHIFT,241)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im13_cma_q, 36'b000000000000000000000000000000000000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_qint[71:0];

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_7(BITJOIN,242)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_7_q = {i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im34_cma_q, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_6_q};

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1(ADD,246)@11 + 1
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_a = {1'b0, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_7_q};
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_b = {17'b00000000000000000, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_8_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_o <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_a) + $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_b);
        end
    end
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_o[108:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19(BITJOIN,168)@4
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q = {GND_q, redist16_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_3_q};

    // redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1(DELAY,362)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31(BITJOIN,215)@5
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31_q = {GND_q, redist19_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs23_b_2_q};

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma(CHAINMULTADD,317)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ah[0] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ch[0] <= redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ch[0]);
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(11),
        .ax_clken("0"),
        .ax_width(11),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(22)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(22), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_qq0[21:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4(BITSHIFT,239)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im46_cma_q, 5'b00000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_qint[26:0];

    // redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3(DELAY,359)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b);
            redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_1 <= redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_0;
            redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_q <= redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_delay_1;
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA27(BITJOIN,211)@5
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA27_q = {GND_q, redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_q};

    // redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3(DELAY,348)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q <= $unsigned(redist9_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_2_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33(BITJOIN,217)@4
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q = {GND_q, redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q};

    // redist18_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q_1(DELAY,356)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q_1_q <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma(CHAINMULTADD,328)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ah[0] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ah[1] <= redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ch[0] <= redist18_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ch[1] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA27_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ch[0]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a1 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ah[1]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c1 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ch[1]);
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(19),
        .by_clken("0"),
        .by_width(19),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(11),
        .bx_width(11),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(31)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c1),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_c0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a1),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_a0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(31), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_qq0[30:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3(BITSHIFT,238)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma25_cma_q, 17'b00000000000000000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_qint[47:0];

    // redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2(DELAY,361)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2_q <= $unsigned(redist22_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_1_q);
        end
    end

    // redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4(DELAY,349)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q <= $unsigned(redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma(CHAINMULTADD,325)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ah[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ah[1] <= redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ch[0] <= redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ch[1] <= redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ch[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ah[1];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a1),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c1),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2(BITSHIFT,237)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_qint[54:0];

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_5(BITJOIN,240)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_5_q = {i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_4_q, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_3_q, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_2_q};

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA39(BITJOIN,223)@5
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA39_q = {GND_q, redist20_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs14_b_2_q};

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15(BITJOIN,164)@4
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q = {GND_q, redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q};

    // redist25_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q_1(DELAY,363)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q_1_q <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q);
        end
    end

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma(CHAINMULTADD,329)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ah[0] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA31_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ah[1] <= redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ch[0] <= redist25_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q_1_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ch[1] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjA39_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ch[0]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a1 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ah[1]);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c1 = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ch[1]);
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(19),
        .by_clken("0"),
        .by_width(19),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(11),
        .bx_width(11),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(31)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c1),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_c0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a1),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_a0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(31), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_qq0[30:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0(BITSHIFT,235)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_qint = { i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma37_cma_q, 17'b00000000000000000 };
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_qint[47:0];

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma(CHAINMULTADD,326)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ah[0] <= redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ah[1] <= redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ch[0] <= redist21_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs6_b_3_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ch[1] <= redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ch[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ah[1];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a1),
        .by(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c1),
        .bx(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma(CHAINMULTADD,314)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena1 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena0;
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena2 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ah[0] <= redist23_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bs1_b_2_q;
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ch[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
        end
    end

    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_a0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ah[0];
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_c0 = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena2, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena1, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_a0),
        .ax(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_s0), .xout(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_q = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_1(BITJOIN,236)@11
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_1_q = {i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_align_0_q, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_ma8_cma_q, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_im0_cma_q};

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0(ADD,245)@11 + 1
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_a = {10'b0000000000, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_1_q};
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_b = {1'b0, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_join_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_o <= $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_a) + $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_b);
        end
    end
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_o[130:0];

    // i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0(ADD,247)@12
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_a = {1'b0, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_0_q};
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_b = {23'b00000000000000000000000, i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_0_1_q};
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_o = $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_a) + $unsigned(i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_b);
    assign i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_q = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_o[131:0];

    // bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x(BITSELECT,60)@12
    assign bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_in = i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sums_result_add_1_0_q[127:0];
    assign bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b = bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_in[63:0];

    // redist46_bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b_1(DELAY,384)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b);
        end
    end

    // i_add_i11_i_i_i_i_i_smithwatermankernel_63_42(ADD,25)@13
    assign i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_a = {1'b0, redist46_bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b_1_q};
    assign i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_b = {1'b0, redist30_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_13_q};
    assign i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_o = $unsigned(i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_a) + $unsigned(i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_b);
    assign i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_q = i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_o[64:0];

    // bgTrunc_i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_sel_x(BITSELECT,57)@13
    assign bgTrunc_i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_sel_x_b = i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_q[63:0];

    // i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x(BITSELECT,98)@13
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b = bgTrunc_i_add_i11_i_i_i_i_i_smithwatermankernel_63_42_sel_x_b[61:0];

    // redist36_i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b_1(DELAY,374)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b_1_q <= $unsigned(i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b);
        end
    end

    // i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x(CONSTANT,73)
    assign i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q = $unsigned(2'b00);

    // i_arrayidx_i54_i_smithwatermankernel_292_0gr_shift_join_x(BITJOIN,99)@14
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_shift_join_x_q = {redist36_i_arrayidx_i54_i_smithwatermankernel_292_0gr_narrow_x_b_1_q, i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q};

    // valid_fanout_reg3(REG,129)@11 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer_smithwatermankernel_63_6gr_aunroll_x(BLACKBOX,117)@0
    // in in_i_dependence@12
    // in in_valid_in@12
    // out out_valid_out@12
    // out out_buffer_out_0_tpl@12
    // out out_buffer_out_1_tpl@12
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_122_0gr thei_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer_smithwatermankernel_63_6gr_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .in_buffer_in_0_tpl(in_arg_score_acc4_0_tpl),
        .in_buffer_in_1_tpl(in_arg_score_acc4_1_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(),
        .out_buffer_out_1_tpl(i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer_smithwatermankernel_63_6gr_aunroll_x_out_buffer_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,128)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x(BLACKBOX,116)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_valid_out@1
    // out out_buffer_out_0_tpl@1
    // out out_buffer_out_1_tpl@1
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000atermankernel_95_0gr thei_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .in_buffer_in_0_tpl(in_arg_score_acc4_0_tpl),
        .in_buffer_in_1_tpl(in_arg_score_acc4_1_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl),
        .out_buffer_out_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged(BITSELECT,337)@1
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl[17:0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl[35:18];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl[53:36];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e = i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer1_smithwatermankernel_63_4gr_aunroll_x_out_buffer_out_0_tpl[63:54];

    // redist3_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_1(DELAY,341)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_1_q <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d);
        end
    end

    // redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2(DELAY,338)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b);
            redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_q <= redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_delay_0;
        end
    end

    // redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3(DELAY,343)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e);
            redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_1 <= redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_0;
            redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_q <= redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_delay_1;
        end
    end

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma(CHAINMULTADD,332)@1 + 5
    // in e@4
    // in g@4
    // in h@3
    // in j@3
    // in k@2
    // in m@2
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[0] <= {8'b00000000, redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_q[9:0]};
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[1] <= {8'b00000000, redist15_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_e_2_q[9:0]};
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[2] <= redist8_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_1_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[3] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[0] <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[1] <= redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[2] <= redist3_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_1_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[3] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[1];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[1];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[2];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[2];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a3 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ah[3];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c3 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ch[3];
    tennm_mac #(
        .operation_mode("m18x18_systolic"),
        .chain_inout_width(44),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .input_systolic_clken("2"),
        .output_clken("1")
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_DSP1 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a3),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a2),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c3),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c2),
        .chainout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s2),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .disable_scanin(),
        .disable_chainout(),
        .resulta(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    tennm_mac #(
        .operation_mode("m18x18_systolic"),
        .chain_inout_width(44),
        .clear_type("none"),
        .use_chainadder("true"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .input_systolic_clken("2"),
        .output_clken("1"),
        .result_a_width(38)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a1),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c1),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_c0),
        .chainin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s2),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(38), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_qq0[37:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8(BITSHIFT,307)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma16_cma_q, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_qint[91:0];

    // redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3(DELAY,342)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_delay_0 <= $unsigned(redist3_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_1_q);
            redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_q <= redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_delay_0;
        end
    end

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma(CHAINMULTADD,320)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ah[0] <= redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ch[0] <= redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma(CHAINMULTADD,319)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ah[0] <= redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ch[0] <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6(BITSHIFT,305)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im13_cma_q, 36'b000000000000000000000000000000000000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_qint[71:0];

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_7(BITJOIN,306)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_7_q = {i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im34_cma_q, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_6_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1(ADD,310)@10 + 1
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_a = {1'b0, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_7_q};
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_b = {17'b00000000000000000, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_8_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_o <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_a) + $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_b);
        end
    end
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_o[108:0];

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31(BITJOIN,279)@4
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31_q = {GND_q, redist5_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_e_3_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma(CHAINMULTADD,321)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ah[0] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ch[0] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ch[0]);
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(11),
        .ax_clken("0"),
        .ax_width(11),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(22)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(22), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_qq0[21:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4(BITSHIFT,303)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im46_cma_q, 5'b00000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_qint[26:0];

    // redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_0 <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c);
            redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_1 <= redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_0;
            redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_q <= redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_delay_1;
        end
    end

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA27(BITJOIN,275)@4
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA27_q = {GND_q, redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma(CHAINMULTADD,333)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ah[0] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ah[1] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ch[0] <= i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_bjB33_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ch[1] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA27_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ch[0]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a1 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ah[1]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c1 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ch[1]);
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(19),
        .by_clken("0"),
        .by_width(19),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(11),
        .bx_width(11),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(31)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c1),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_c0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a1),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_a0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(31), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_qq0[30:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3(BITSHIFT,302)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma25_cma_q, 17'b00000000000000000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_qint[47:0];

    // redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3(DELAY,339)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3_q <= $unsigned(redist0_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_2_q);
        end
    end

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma(CHAINMULTADD,330)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ah[0] <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ah[1] <= redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ch[0] <= redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ch[1] <= redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ch[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ah[1];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a1),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c1),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2(BITSHIFT,301)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_qint[54:0];

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_5(BITJOIN,304)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_5_q = {i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_4_q, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_3_q, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_2_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA39(BITJOIN,287)@4
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA39_q = {GND_q, redist4_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_d_3_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma(CHAINMULTADD,334)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ah[0] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA31_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ah[1] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ch[0] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ch[1] <= i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bjA39_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ah[0]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c0 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ch[0]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a1 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ah[1]);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c1 = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ch[1]);
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(19),
        .by_clken("0"),
        .by_width(19),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(11),
        .bx_width(11),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(31)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c1),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_c0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a1),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_a0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(31), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_qq0[30:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0(BITSHIFT,299)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_qint = { i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma37_cma_q, 17'b00000000000000000 };
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_qint[47:0];

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma(CHAINMULTADD,331)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ah[0] <= redist10_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ah[1] <= redist13_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ch[0] <= redist2_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_c_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ch[1] <= redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ch[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ah[1];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a1),
        .by(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c1),
        .bx(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma(CHAINMULTADD,318)@4 + 5
    // out q@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena1 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena0;
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena2 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ah[0] <= redist1_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_bs1_bit_select_merged_b_3_q;
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ch[0] <= redist6_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_3_q;
        end
    end

    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_a0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ah[0];
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_c0 = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena2, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena1, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_a0),
        .ax(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_c0),
        .resulta(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_delay0 ( .xin(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_s0), .xout(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_q = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_1(BITJOIN,300)@10
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_1_q = {i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_align_0_q, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_ma8_cma_q, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_im0_cma_q};

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0(ADD,309)@10 + 1
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_a = {10'b0000000000, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_1_q};
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_b = {1'b0, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_join_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_o <= $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_a) + $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_b);
        end
    end
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_o[130:0];

    // i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0(ADD,311)@11
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_a = {1'b0, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_0_q};
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_b = {23'b00000000000000000000000, i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_0_1_q};
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_o = $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_a) + $unsigned(i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_b);
    assign i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_q = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_o[131:0];

    // bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x(BITSELECT,61)@11
    assign bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_in = i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sums_result_add_1_0_q[127:0];
    assign bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b = bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_in[63:0];

    // redist45_bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b_1(DELAY,383)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b);
        end
    end

    // i_add_i11_i_i_i_i_smithwatermankernel_63_9gr(ADD,26)@12
    assign i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_a = {1'b0, redist45_bgTrunc_i_mul_i7_i_i_i_i_smithwatermankernel_63_8gr_sel_x_b_1_q};
    assign i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_b = {1'b0, i_llvm_fpga_sync_buffer_s_class_sycl_v1_ranges_arg_score_acc4_sync_buffer_smithwatermankernel_63_6gr_aunroll_x_out_buffer_out_1_tpl};
    assign i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_o = $unsigned(i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_a) + $unsigned(i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_b);
    assign i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_q = i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_o[64:0];

    // bgTrunc_i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_sel_x(BITSELECT,58)@12
    assign bgTrunc_i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_sel_x_b = i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_q[63:0];

    // i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x(BITSELECT,74)@12
    assign i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b = bgTrunc_i_add_i11_i_i_i_i_smithwatermankernel_63_9gr_sel_x_b[61:0];

    // redist42_i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b_1(DELAY,380)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b_1_q <= $unsigned(i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b);
        end
    end

    // i_add_ptr_i_smithwatermankernel_157_0gr_shift_join_x(BITJOIN,75)@13
    assign i_add_ptr_i_smithwatermankernel_157_0gr_shift_join_x_q = {redist42_i_add_ptr_i_smithwatermankernel_157_0gr_narrow_x_b_1_q, i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q};

    // valid_fanout_reg4(REG,130)@12 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist33_sync_together_63_64_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024i8_arg_score_acc_sync_buffer_smithwatermankernel_63_10(BLACKBOX,39)@0
    // in in_i_dependence@13
    // in in_valid_in@13
    // out out_buffer_out@13
    // out out_valid_out@13
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_151_0gr thei_llvm_fpga_sync_buffer_p1024i8_arg_score_acc_sync_buffer_smithwatermankernel_63_10 (
        .in_buffer_in(in_arg_score_acc),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i8_arg_score_acc_sync_buffer_smithwatermankernel_63_10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_ptr_i_smithwatermankernel_157_0gr_add_x(ADD,72)@13
    assign i_add_ptr_i_smithwatermankernel_157_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i8_arg_score_acc_sync_buffer_smithwatermankernel_63_10_out_buffer_out};
    assign i_add_ptr_i_smithwatermankernel_157_0gr_add_x_b = {1'b0, i_add_ptr_i_smithwatermankernel_157_0gr_shift_join_x_q};
    assign i_add_ptr_i_smithwatermankernel_157_0gr_add_x_o = $unsigned(i_add_ptr_i_smithwatermankernel_157_0gr_add_x_a) + $unsigned(i_add_ptr_i_smithwatermankernel_157_0gr_add_x_b);
    assign i_add_ptr_i_smithwatermankernel_157_0gr_add_x_q = i_add_ptr_i_smithwatermankernel_157_0gr_add_x_o[64:0];

    // i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x(BITSELECT,77)@13
    assign i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b = i_add_ptr_i_smithwatermankernel_157_0gr_add_x_q[63:0];

    // redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1(DELAY,379)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x(ADD,96)@14
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_a = {1'b0, redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_b = {1'b0, i_arrayidx_i54_i_smithwatermankernel_292_0gr_shift_join_x_q};
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_o = $unsigned(i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_a) + $unsigned(i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_b);
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_q = i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_o[64:0];

    // i_arrayidx_i54_i_smithwatermankernel_292_0gr_dupName_0_trunc_sel_x(BITSELECT,101)@14
    assign i_arrayidx_i54_i_smithwatermankernel_292_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i54_i_smithwatermankernel_292_0gr_add_x_q[63:0];

    // i_conv10_i_smithwatermankernel_63_32_vt_const_63(CONSTANT,30)
    assign i_conv10_i_smithwatermankernel_63_32_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1_63_55(CONSTANT,21)
    assign c_i32_1_63_55_q = $unsigned(32'b11111111111111111111111111111111);

    // i_conv3_i_smithwatermankernel_63_14_sel_x(BITSELECT,109)@12
    assign i_conv3_i_smithwatermankernel_63_14_sel_x_b = redist29_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_12_outputreg0_q[31:0];

    // i_sub9_i_smithwatermankernel_63_31(ADD,46)@12
    assign i_sub9_i_smithwatermankernel_63_31_a = {1'b0, i_conv3_i_smithwatermankernel_63_14_sel_x_b};
    assign i_sub9_i_smithwatermankernel_63_31_b = {1'b0, c_i32_1_63_55_q};
    assign i_sub9_i_smithwatermankernel_63_31_o = $unsigned(i_sub9_i_smithwatermankernel_63_31_a) + $unsigned(i_sub9_i_smithwatermankernel_63_31_b);
    assign i_sub9_i_smithwatermankernel_63_31_q = i_sub9_i_smithwatermankernel_63_31_o[32:0];

    // bgTrunc_i_sub9_i_smithwatermankernel_63_31_sel_x(BITSELECT,62)@12
    assign bgTrunc_i_sub9_i_smithwatermankernel_63_31_sel_x_b = i_sub9_i_smithwatermankernel_63_31_q[31:0];

    // i_conv10_i_smithwatermankernel_63_32_sel_x(BITSELECT,108)@12
    assign i_conv10_i_smithwatermankernel_63_32_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_sub9_i_smithwatermankernel_63_31_sel_x_b[31:0]};

    // i_conv10_i_smithwatermankernel_63_32_vt_select_31(BITSELECT,32)@12
    assign i_conv10_i_smithwatermankernel_63_32_vt_select_31_b = i_conv10_i_smithwatermankernel_63_32_sel_x_b[31:0];

    // redist50_i_conv10_i_smithwatermankernel_63_32_vt_select_31_b_1(DELAY,388)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_conv10_i_smithwatermankernel_63_32_vt_select_31_b_1_q <= $unsigned(i_conv10_i_smithwatermankernel_63_32_vt_select_31_b);
        end
    end

    // i_conv10_i_smithwatermankernel_63_32_vt_join(BITJOIN,31)@13
    assign i_conv10_i_smithwatermankernel_63_32_vt_join_q = {i_conv10_i_smithwatermankernel_63_32_vt_const_63_q, redist50_i_conv10_i_smithwatermankernel_63_32_vt_select_31_b_1_q};

    // i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40(ADD,23)@13
    assign i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_a = {1'b0, redist46_bgTrunc_i_mul_i7_i_i_i_i_i_smithwatermankernel_63_20_sel_x_b_1_q};
    assign i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_b = {1'b0, i_conv10_i_smithwatermankernel_63_32_vt_join_q};
    assign i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_o = $unsigned(i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_a) + $unsigned(i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_b);
    assign i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_q = i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_o[64:0];

    // bgTrunc_i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_sel_x(BITSELECT,55)@13
    assign bgTrunc_i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_sel_x_b = i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_q[63:0];

    // i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x(BITSELECT,92)@13
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b = bgTrunc_i_add_i11_i_i_i_i199_i_smithwatermankernel_63_40_sel_x_b[61:0];

    // redist37_i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b_1(DELAY,375)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b_1_q <= $unsigned(i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b);
        end
    end

    // i_arrayidx_i200_i_smithwatermankernel_282_0gr_shift_join_x(BITJOIN,93)@14
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_shift_join_x_q = {redist37_i_arrayidx_i200_i_smithwatermankernel_282_0gr_narrow_x_b_1_q, i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q};

    // i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x(ADD,90)@14
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_a = {1'b0, redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_b = {1'b0, i_arrayidx_i200_i_smithwatermankernel_282_0gr_shift_join_x_q};
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_o = $unsigned(i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_a) + $unsigned(i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_b);
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_q = i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_o[64:0];

    // i_arrayidx_i200_i_smithwatermankernel_282_0gr_dupName_0_trunc_sel_x(BITSELECT,95)@14
    assign i_arrayidx_i200_i_smithwatermankernel_282_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i200_i_smithwatermankernel_282_0gr_add_x_q[63:0];

    // i_conv_i_smithwatermankernel_63_13_sel_x(BITSELECT,112)@3
    assign i_conv_i_smithwatermankernel_63_13_sel_x_b = redist28_sync_together_63_64_aunroll_x_in_c0_eni2_1_tpl_3_q[31:0];

    // redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2(DELAY,372)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_delay_0 <= $unsigned(i_conv_i_smithwatermankernel_63_13_sel_x_b);
            redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_q <= redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_delay_0;
        end
    end

    // i_sub_i_smithwatermankernel_63_29(ADD,47)@5
    assign i_sub_i_smithwatermankernel_63_29_a = {1'b0, redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_q};
    assign i_sub_i_smithwatermankernel_63_29_b = {1'b0, c_i32_1_63_55_q};
    assign i_sub_i_smithwatermankernel_63_29_o = $unsigned(i_sub_i_smithwatermankernel_63_29_a) + $unsigned(i_sub_i_smithwatermankernel_63_29_b);
    assign i_sub_i_smithwatermankernel_63_29_q = i_sub_i_smithwatermankernel_63_29_o[32:0];

    // bgTrunc_i_sub_i_smithwatermankernel_63_29_sel_x(BITSELECT,63)@5
    assign bgTrunc_i_sub_i_smithwatermankernel_63_29_sel_x_b = i_sub_i_smithwatermankernel_63_29_q[31:0];

    // i_conv8_i_smithwatermankernel_63_30_sel_x(BITSELECT,110)@5
    assign i_conv8_i_smithwatermankernel_63_30_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_sub_i_smithwatermankernel_63_29_sel_x_b[31:0]};

    // i_conv8_i_smithwatermankernel_63_30_vt_select_31(BITSELECT,37)@5
    assign i_conv8_i_smithwatermankernel_63_30_vt_select_31_b = i_conv8_i_smithwatermankernel_63_30_sel_x_b[31:0];

    // i_conv8_i_smithwatermankernel_63_30_vt_join(BITJOIN,36)@5
    assign i_conv8_i_smithwatermankernel_63_30_vt_join_q = {i_conv10_i_smithwatermankernel_63_32_vt_const_63_q, i_conv8_i_smithwatermankernel_63_30_vt_select_31_b};

    // i_conv8_i_smithwatermankernel_63_30_vt_join_narrowed_x(BITSELECT,111)@5
    assign i_conv8_i_smithwatermankernel_63_30_vt_join_narrowed_x_b = i_conv8_i_smithwatermankernel_63_30_vt_join_q[31:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged(BITSELECT,335)@5
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b = i_conv8_i_smithwatermankernel_63_30_vt_join_narrowed_x_b[17:0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_c = i_conv8_i_smithwatermankernel_63_30_vt_join_narrowed_x_b[31:18];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB17(BITJOIN,166)@5
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB17_q = {GND_q, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_c};

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB21(BITJOIN,170)@5
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB21_q = {GND_q, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b};

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma(CHAINMULTADD,324)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena0;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena2 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ah[0] <= {{4{redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q[10]}}, redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q[10:0]};
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ah[1] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB17_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ch[0] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB21_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ch[1] <= redist25_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA15_q_1_q;
        end
    end

    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a0 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ah[0]);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c0 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ch[0]);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a1 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ah[1]);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c1 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ch[1]);
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(19),
        .by_clken("0"),
        .by_width(19),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(15),
        .bx_width(15),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(35)
    ) i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena2, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena1, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c1),
        .by(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_c0),
        .ax(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a1),
        .bx(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_a0),
        .resulta(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(35), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_delay0 ( .xin(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_s0), .xout(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_qq0[34:0]);

    // redist17_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q_1(DELAY,355)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q_1_q <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q);
        end
    end

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4(BITSHIFT,180)@12
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_qint = { redist17_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma13_cma_q_1_q, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_q = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_qint[88:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma(CHAINMULTADD,313)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena0;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena2 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ah[0] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjB17_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ch[0] <= redist24_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bjA19_q_1_q;
        end
    end

    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_a0 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ah[0]);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_c0 = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ch[0]);
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(15),
        .ax_clken("0"),
        .ax_width(11),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(26)
    ) i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena2, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena1, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_a0),
        .ax(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_c0),
        .resulta(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(26), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_delay0 ( .xin(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_s0), .xout(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_q = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_qq0[25:0]);

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2(BITSHIFT,178)@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_qint = { i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im22_cma_q, 17'b00000000000000000 };
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_q = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_qint[42:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma(CHAINMULTADD,322)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena0;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena2 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ah[0] <= {4'b0000, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_c[13:0]};
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ah[1] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ch[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ch[1] <= redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q;
        end
    end

    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ah[0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ch[0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ah[1];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena2, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena1, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a1),
        .by(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_a0),
        .ax(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c1),
        .bx(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_c0),
        .resulta(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_delay0 ( .xin(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_s0), .xout(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_q = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1(BITSHIFT,177)@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_qint = { i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_q = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_qint[54:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_3(BITJOIN,179)@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_3_q = {i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_2_q, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_1_q};

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma(CHAINMULTADD,323)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena0;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena2 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ah[0] <= {4'b0000, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_c[13:0]};
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ah[1] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ch[0] <= redist11_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_c_4_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ch[1] <= redist14_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_d_4_q;
        end
    end

    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ah[0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ch[0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ah[1];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ch[1];
    tennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .by_clken("0"),
        .by_width(18),
        .ax_clken("0"),
        .bx_clken("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(37)
    ) i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena2, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena1, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a1),
        .by(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_a0),
        .ax(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c1),
        .bx(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_c0),
        .resulta(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_delay0 ( .xin(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_s0), .xout(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_q = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_qq0[36:0]);

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma(CHAINMULTADD,312)@5 + 5
    // out q@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_reset = ~ (resetn);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena0 = 1'b1;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena1 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena0;
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena2 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ah[0] <= redist7_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs1_bit_select_merged_b_4_q;
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ch[0] <= i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_bs2_bit_select_merged_b;
        end
    end

    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_a0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ah[0];
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_c0 = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ch[0];
    tennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clken("0"),
        .ay_scan_in_width(18),
        .ax_clken("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clken("2"),
        .second_pipeline_clken("2"),
        .output_clken("1"),
        .result_a_width(36)
    ) i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_DSP0 (
        .clk(clock),
        .ena({ i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena2, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena1, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_a0),
        .ax(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_c0),
        .resulta(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .cx(),
        .cy(),
        .dx(),
        .dy(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .disable_scanin(),
        .disable_chainout(),
        .resultb(),
        .dfxlfsrena(),
        .dfxmisrena()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_delay0 ( .xin(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_s0), .xout(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_qq0), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_q = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_qq0[35:0]);

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_0(BITJOIN,176)@11
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_0_q = {i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_ma8_cma_q, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_im0_cma_q};

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0(ADD,182)@11 + 1
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_a = {26'b00000000000000000000000000, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_0_q};
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_b = {1'b0, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_join_3_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_o <= $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_a) + $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_b);
        end
    end
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_q = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_o[98:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0(ADD,183)@12
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_a = {1'b0, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_0_0_q};
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_b = {11'b00000000000, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_align_4_q};
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_o = $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_a) + $unsigned(i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_b);
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_q = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_o[99:0];

    // i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_extender_x(BITJOIN,118)@12
    assign i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_extender_x_q = {i_conv10_i_smithwatermankernel_63_32_vt_const_63_q, i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sums_result_add_1_0_q[95:0]};

    // bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x(BITSELECT,59)@12
    assign bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b = i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_extender_x_q[63:0];

    // redist47_bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b_1(DELAY,385)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b);
        end
    end

    // i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38(ADD,22)@13
    assign i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_a = {1'b0, redist47_bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b_1_q};
    assign i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_b = {1'b0, redist30_sync_together_63_64_aunroll_x_in_c0_eni2_2_tpl_13_q};
    assign i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_o = $unsigned(i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_a) + $unsigned(i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_b);
    assign i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_q = i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_o[64:0];

    // bgTrunc_i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_sel_x(BITSELECT,54)@13
    assign bgTrunc_i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_sel_x_b = i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_q[63:0];

    // i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x(BITSELECT,86)@13
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b = bgTrunc_i_add_i11_i_i_i_i164_i_smithwatermankernel_63_38_sel_x_b[61:0];

    // redist38_i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b_1(DELAY,376)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b_1_q <= $unsigned(i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b);
        end
    end

    // i_arrayidx_i165_i_smithwatermankernel_272_0gr_shift_join_x(BITJOIN,87)@14
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_shift_join_x_q = {redist38_i_arrayidx_i165_i_smithwatermankernel_272_0gr_narrow_x_b_1_q, i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q};

    // i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x(ADD,84)@14
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_a = {1'b0, redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_b = {1'b0, i_arrayidx_i165_i_smithwatermankernel_272_0gr_shift_join_x_q};
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_o = $unsigned(i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_a) + $unsigned(i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_b);
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_q = i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_o[64:0];

    // i_arrayidx_i165_i_smithwatermankernel_272_0gr_dupName_0_trunc_sel_x(BITSELECT,89)@14
    assign i_arrayidx_i165_i_smithwatermankernel_272_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i165_i_smithwatermankernel_272_0gr_add_x_q[63:0];

    // valid_fanout_reg5(REG,131)@11 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_b_acc14_sync_buffer_smithwatermankernel_63_21_aunroll_x(BLACKBOX,114)@0
    // in in_i_dependence@12
    // in in_valid_in@12
    // out out_valid_out@12
    // out out_buffer_out_0_tpl@12
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_176_0gr thei_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_b_acc14_sync_buffer_smithwatermankernel_63_21_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_buffer_in_0_tpl(in_arg_seq_b_acc14_0_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_b_acc14_sync_buffer_smithwatermankernel_63_21_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,132)@11 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist32_sync_together_63_64_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024i8_arg_seq_b_acc_sync_buffer_smithwatermankernel_63_23(BLACKBOX,41)@0
    // in in_i_dependence@12
    // in in_valid_in@12
    // out out_buffer_out@12
    // out out_valid_out@12
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_201_0gr thei_llvm_fpga_sync_buffer_p1024i8_arg_seq_b_acc_sync_buffer_smithwatermankernel_63_23 (
        .in_buffer_in(in_arg_seq_b_acc),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i8_arg_seq_b_acc_sync_buffer_smithwatermankernel_63_23_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x(ADD,69)@12
    assign i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i8_arg_seq_b_acc_sync_buffer_smithwatermankernel_63_23_out_buffer_out};
    assign i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_b = {1'b0, i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_b_acc14_sync_buffer_smithwatermankernel_63_21_aunroll_x_out_buffer_out_0_tpl};
    assign i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_o = $unsigned(i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_a) + $unsigned(i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_b);
    assign i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_q = i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_o[64:0];

    // i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x(BITSELECT,71)@12
    assign i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b = i_add_ptr_i1791_smithwatermankernel_206_0gr_add_x_q[63:0];

    // redist43_i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b_1(DELAY,381)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b);
        end
    end

    // i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x(ADD,81)@13
    assign i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_a = {1'b0, redist43_i_add_ptr_i1791_smithwatermankernel_206_0gr_trunc_sel_x_b_1_q};
    assign i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_b = {1'b0, i_conv10_i_smithwatermankernel_63_32_vt_join_q};
    assign i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_o = $unsigned(i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_a) + $unsigned(i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_b);
    assign i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_q = i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_o[64:0];

    // i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x(BITSELECT,83)@13
    assign i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b = i_arrayidx_i130_i4_smithwatermankernel_266_0gr_add_x_q[63:0];

    // redist39_i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b_1(DELAY,377)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b);
        end
    end

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_offset(CONSTANT,400)
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_offset_q = $unsigned(3'b101);

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt(ADD,401)
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_a = {1'b0, redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_q};
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_b = {1'b0, redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_o <= $unsigned(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_a) + $unsigned(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_b);
        end
    end
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_q = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_o[3:0];

    // redist49_i_conv8_i_smithwatermankernel_63_30_vt_join_q_1(DELAY,387)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_conv8_i_smithwatermankernel_63_30_vt_join_q_1_q <= $unsigned(i_conv8_i_smithwatermankernel_63_30_vt_join_q);
        end
    end

    // valid_fanout_reg7(REG,133)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist31_sync_together_63_64_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_a_acc9_sync_buffer_smithwatermankernel_63_25_aunroll_x(BLACKBOX,113)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_valid_out@5
    // out out_buffer_out_0_tpl@5
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_211_0gr thei_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_a_acc9_sync_buffer_smithwatermankernel_63_25_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .in_buffer_in_0_tpl(in_arg_seq_a_acc9_0_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_a_acc9_sync_buffer_smithwatermankernel_63_25_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,134)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist31_sync_together_63_64_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024i8_arg_seq_a_acc_sync_buffer_smithwatermankernel_63_27(BLACKBOX,40)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    SmithWatermanKernel_i_llvm_fpga_sync_buf0000termankernel_236_0gr thei_llvm_fpga_sync_buffer_p1024i8_arg_seq_a_acc_sync_buffer_smithwatermankernel_63_27 (
        .in_buffer_in(in_arg_seq_a_acc),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i8_arg_seq_a_acc_sync_buffer_smithwatermankernel_63_27_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x(ADD,66)@5
    assign i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i8_arg_seq_a_acc_sync_buffer_smithwatermankernel_63_27_out_buffer_out};
    assign i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_b = {1'b0, i_llvm_fpga_sync_buffer_s_class_sycl_v1_range_0s_arg_seq_a_acc9_sync_buffer_smithwatermankernel_63_25_aunroll_x_out_buffer_out_0_tpl};
    assign i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_o = $unsigned(i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_a) + $unsigned(i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_b);
    assign i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_q = i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_o[64:0];

    // i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x(BITSELECT,68)@5
    assign i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b = i_add_ptr_i1252_smithwatermankernel_241_0gr_add_x_q[63:0];

    // redist44_i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b_1(DELAY,382)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b_1_q <= $unsigned(i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b);
        end
    end

    // i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x(ADD,78)@6
    assign i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_a = {1'b0, redist44_i_add_ptr_i1252_smithwatermankernel_241_0gr_trunc_sel_x_b_1_q};
    assign i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_b = {1'b0, redist49_i_conv8_i_smithwatermankernel_63_30_vt_join_q_1_q};
    assign i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_o = $unsigned(i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_a) + $unsigned(i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_b);
    assign i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_q = i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_o[64:0];

    // i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x(BITSELECT,80)@6
    assign i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b = i_arrayidx_i107_i3_smithwatermankernel_261_0gr_add_x_q[63:0];

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_inputreg0(DELAY,396)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_inputreg0_q <= $unsigned(i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b);
        end
    end

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr(COUNTER,399)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_i <= $unsigned(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_q = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_i[2:0];

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem(DUALMEM,398)
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ia = $unsigned(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_inputreg0_q);
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_aa = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_wraddr_q;
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ab = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex 7")
    ) redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_aa),
        .data_a(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_ab),
        .q_b(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_q = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_iq[63:0];

    // redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_outputreg0(DELAY,397)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_outputreg0_q <= $unsigned(redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_mem_q);
        end
    end

    // i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34(ADD,24)@13
    assign i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_a = {1'b0, redist47_bgTrunc_i_mul_i7_i_i_i_i80_i_smithwatermankernel_63_33_sel_x_b_1_q};
    assign i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_b = {1'b0, i_conv10_i_smithwatermankernel_63_32_vt_join_q};
    assign i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_o = $unsigned(i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_a) + $unsigned(i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_b);
    assign i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_q = i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_o[64:0];

    // bgTrunc_i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_sel_x(BITSELECT,56)@13
    assign bgTrunc_i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_sel_x_b = i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_q[63:0];

    // i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x(BITSELECT,104)@13
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b = bgTrunc_i_add_i11_i_i_i_i84_i_smithwatermankernel_63_34_sel_x_b[61:0];

    // redist35_i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b_1(DELAY,373)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b_1_q <= $unsigned(i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b);
        end
    end

    // i_arrayidx_i85_i_smithwatermankernel_252_0gr_shift_join_x(BITJOIN,105)@14
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_shift_join_x_q = {redist35_i_arrayidx_i85_i_smithwatermankernel_252_0gr_narrow_x_b_1_q, i_add_ptr_i_smithwatermankernel_157_0gr_c_i2_0_157_1gr_x_q};

    // i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x(ADD,102)@14
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_a = {1'b0, redist41_i_add_ptr_i_smithwatermankernel_157_0gr_dupName_0_trunc_sel_x_b_1_q};
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_b = {1'b0, i_arrayidx_i85_i_smithwatermankernel_252_0gr_shift_join_x_q};
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_o = $unsigned(i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_a) + $unsigned(i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_b);
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_q = i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_o[64:0];

    // i_arrayidx_i85_i_smithwatermankernel_252_0gr_dupName_0_trunc_sel_x(BITSELECT,107)@14
    assign i_arrayidx_i85_i_smithwatermankernel_252_0gr_dupName_0_trunc_sel_x_b = i_arrayidx_i85_i_smithwatermankernel_252_0gr_add_x_q[63:0];

    // i_cmp4_i_smithwatermankernel_63_17(LOGICAL,27)@12
    assign i_cmp4_i_smithwatermankernel_63_17_q = $unsigned(i_conv3_i_smithwatermankernel_63_14_sel_x_b == i_conv10_i_smithwatermankernel_63_32_vt_const_63_q ? 1'b1 : 1'b0);

    // i_cmp_i_smithwatermankernel_63_15(LOGICAL,28)@5 + 1
    assign i_cmp_i_smithwatermankernel_63_15_qi = $unsigned(redist34_i_conv_i_smithwatermankernel_63_13_sel_x_b_2_q == i_conv10_i_smithwatermankernel_63_32_vt_const_63_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_smithwatermankernel_63_15_delay ( .xin(i_cmp_i_smithwatermankernel_63_15_qi), .xout(i_cmp_i_smithwatermankernel_63_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist51_i_cmp_i_smithwatermankernel_63_15_q_7(DELAY,389)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist51_i_cmp_i_smithwatermankernel_63_15_q_7 ( .xin(i_cmp_i_smithwatermankernel_63_15_q), .xout(redist51_i_cmp_i_smithwatermankernel_63_15_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond_i_smithwatermankernel_63_19(MUX,45)@12 + 1
    assign i_or_cond_i_smithwatermankernel_63_19_s = redist51_i_cmp_i_smithwatermankernel_63_15_q_7_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_or_cond_i_smithwatermankernel_63_19_s)
                1'b0 : i_or_cond_i_smithwatermankernel_63_19_q <= i_cmp4_i_smithwatermankernel_63_17_q;
                1'b1 : i_or_cond_i_smithwatermankernel_63_19_q <= VCC_q;
                default : i_or_cond_i_smithwatermankernel_63_19_q <= 1'b0;
            endcase
        end
    end

    // redist48_i_or_cond_i_smithwatermankernel_63_19_q_2(DELAY,386)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_or_cond_i_smithwatermankernel_63_19_q_2_q <= $unsigned(i_or_cond_i_smithwatermankernel_63_19_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_1_aunroll_x(GPOUT,124)@14
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist48_i_or_cond_i_smithwatermankernel_63_19_q_2_q;
    assign out_c0_exi7_2_tpl = i_arrayidx_i85_i_smithwatermankernel_252_0gr_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_3_tpl = redist40_i_arrayidx_i107_i3_smithwatermankernel_261_0gr_trunc_sel_x_b_8_outputreg0_q;
    assign out_c0_exi7_4_tpl = redist39_i_arrayidx_i130_i4_smithwatermankernel_266_0gr_trunc_sel_x_b_1_q;
    assign out_c0_exi7_5_tpl = i_arrayidx_i165_i_smithwatermankernel_272_0gr_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_6_tpl = i_arrayidx_i200_i_smithwatermankernel_282_0gr_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_7_tpl = i_arrayidx_i54_i_smithwatermankernel_292_0gr_dupName_0_trunc_sel_x_b;
    assign out_o_valid = redist26_valid_fanout_reg0_q_1_q;
    assign out_unnamed_SmithWatermanKernel0 = GND_q;

endmodule
