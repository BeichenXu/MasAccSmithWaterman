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

// SystemVerilog created from i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_i_sfc_s_c0_in_entry_0000atermankernel_51_2gr (
    input wire [63:0] in_arg_seq_b_acc,
    input wire [63:0] in_arg_score_acc,
    input wire [63:0] in_arg_seq_a_acc,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_arg_seq_b_acc14_0_tpl,
    input wire [63:0] in_arg_score_acc2_0_tpl,
    input wire [63:0] in_arg_score_acc2_1_tpl,
    input wire [63:0] in_arg_score_acc4_0_tpl,
    input wire [63:0] in_arg_score_acc4_1_tpl,
    input wire [63:0] in_arg_seq_a_acc9_0_tpl,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_c0_exit_1_tpl,
    output wire [63:0] out_c0_exit_2_tpl,
    output wire [63:0] out_c0_exit_3_tpl,
    output wire [63:0] out_c0_exit_4_tpl,
    output wire [63:0] out_c0_exit_5_tpl,
    output wire [63:0] out_c0_exit_6_tpl,
    output wire [63:0] out_c0_exit_7_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [63:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_4_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_2_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_4_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_5_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_6_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_7_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x(BLACKBOX,11)@0
    // out out_o_valid@14
    // out out_unnamed_SmithWatermanKernel0@14
    // out out_c0_exi7_0_tpl@14
    // out out_c0_exi7_1_tpl@14
    // out out_c0_exi7_2_tpl@14
    // out out_c0_exi7_3_tpl@14
    // out out_c0_exi7_4_tpl@14
    // out out_c0_exi7_5_tpl@14
    // out out_c0_exi7_6_tpl@14
    // out out_c0_exi7_7_tpl@14
    SmithWatermanKernel_i_sfc_logic_s_c0_in_0000atermankernel_60_0gr thei_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x (
        .in_arg_score_acc(in_arg_score_acc),
        .in_arg_seq_a_acc(in_arg_seq_a_acc),
        .in_arg_seq_b_acc(in_arg_seq_b_acc),
        .in_i_valid(input_accepted_and_q),
        .in_arg_score_acc2_0_tpl(in_arg_score_acc2_0_tpl),
        .in_arg_score_acc2_1_tpl(in_arg_score_acc2_1_tpl),
        .in_arg_score_acc4_0_tpl(in_arg_score_acc4_0_tpl),
        .in_arg_score_acc4_1_tpl(in_arg_score_acc4_1_tpl),
        .in_arg_seq_a_acc9_0_tpl(in_arg_seq_a_acc9_0_tpl),
        .in_arg_seq_b_acc14_0_tpl(in_arg_seq_b_acc14_0_tpl),
        .in_c0_eni2_0_tpl(in_c0_eni2_0_tpl),
        .in_c0_eni2_1_tpl(in_c0_eni2_1_tpl),
        .in_c0_eni2_2_tpl(in_c0_eni2_2_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_o_valid),
        .out_unnamed_SmithWatermanKernel0(),
        .out_c0_exi7_0_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_0_tpl),
        .out_c0_exi7_1_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_1_tpl),
        .out_c0_exi7_2_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_2_tpl),
        .out_c0_exi7_3_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_3_tpl),
        .out_c0_exi7_4_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_4_tpl),
        .out_c0_exi7_5_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_5_tpl),
        .out_c0_exi7_6_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_6_tpl),
        .out_c0_exi7_7_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_7_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // input_accepted_and(LOGICAL,4)
    assign input_accepted_and_q = in_i_valid & VCC_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x(BLACKBOX,10)@14
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_almost_empty_out@45
    // out out_empty_out@45
    // out out_stall_entry@20000000
    // out out_valid_out@45
    // out out_data_out_0_tpl@45
    // out out_data_out_1_tpl@45
    // out out_data_out_2_tpl@45
    // out out_data_out_3_tpl@45
    // out out_data_out_4_tpl@45
    // out out_data_out_5_tpl@45
    // out out_data_out_6_tpl@45
    // out out_data_out_7_tpl@45
    SmithWatermanKernel_i_llvm_fpga_sfc_exit0000termankernel_303_0gr thei_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_60_0gr_aunroll_x_out_c0_exi7_7_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_7_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out_24(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_stall_entry;

    // sync_out_25_aunroll_x(GPOUT,16)@45
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_almost_empty_out;
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_data_out_7_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,18)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
