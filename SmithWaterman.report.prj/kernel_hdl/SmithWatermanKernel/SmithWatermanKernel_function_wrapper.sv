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

// SystemVerilog created from SmithWatermanKernel_function_wrapper
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_function_wrapper (
    input wire [63:0] avm_lm10_SmithWatermanKernel_readdata,
    input wire [0:0] avm_lm10_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_lm10_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_lm10_SmithWatermanKernel_writeack,
    input wire [63:0] avm_lm12_SmithWatermanKernel_readdata,
    input wire [0:0] avm_lm12_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_lm12_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_lm12_SmithWatermanKernel_writeack,
    input wire [63:0] avm_lm6_SmithWatermanKernel_readdata,
    input wire [0:0] avm_lm6_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_lm6_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_lm6_SmithWatermanKernel_writeack,
    input wire [63:0] avm_lm8_SmithWatermanKernel_readdata,
    input wire [0:0] avm_lm8_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_lm8_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_lm8_SmithWatermanKernel_writeack,
    input wire [63:0] avm_lm_SmithWatermanKernel_readdata,
    input wire [0:0] avm_lm_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_lm_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_lm_SmithWatermanKernel_writeack,
    input wire [63:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_readdata,
    input wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_readdatavalid,
    input wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_waitrequest,
    input wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_writeack,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [959:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [34:0] avm_lm10_SmithWatermanKernel_address,
    output wire [0:0] avm_lm10_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_lm10_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_lm10_SmithWatermanKernel_enable,
    output wire [0:0] avm_lm10_SmithWatermanKernel_read,
    output wire [0:0] avm_lm10_SmithWatermanKernel_write,
    output wire [63:0] avm_lm10_SmithWatermanKernel_writedata,
    output wire [34:0] avm_lm12_SmithWatermanKernel_address,
    output wire [0:0] avm_lm12_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_lm12_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_lm12_SmithWatermanKernel_enable,
    output wire [0:0] avm_lm12_SmithWatermanKernel_read,
    output wire [0:0] avm_lm12_SmithWatermanKernel_write,
    output wire [63:0] avm_lm12_SmithWatermanKernel_writedata,
    output wire [34:0] avm_lm6_SmithWatermanKernel_address,
    output wire [0:0] avm_lm6_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_lm6_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_lm6_SmithWatermanKernel_enable,
    output wire [0:0] avm_lm6_SmithWatermanKernel_read,
    output wire [0:0] avm_lm6_SmithWatermanKernel_write,
    output wire [63:0] avm_lm6_SmithWatermanKernel_writedata,
    output wire [34:0] avm_lm8_SmithWatermanKernel_address,
    output wire [0:0] avm_lm8_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_lm8_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_lm8_SmithWatermanKernel_enable,
    output wire [0:0] avm_lm8_SmithWatermanKernel_read,
    output wire [0:0] avm_lm8_SmithWatermanKernel_write,
    output wire [63:0] avm_lm8_SmithWatermanKernel_writedata,
    output wire [34:0] avm_lm_SmithWatermanKernel_address,
    output wire [0:0] avm_lm_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_lm_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_lm_SmithWatermanKernel_enable,
    output wire [0:0] avm_lm_SmithWatermanKernel_read,
    output wire [0:0] avm_lm_SmithWatermanKernel_write,
    output wire [63:0] avm_lm_SmithWatermanKernel_writedata,
    output wire [34:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_address,
    output wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_burstcount,
    output wire [7:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_byteenable,
    output wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_enable,
    output wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_read,
    output wire [0:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_write,
    output wire [63:0] avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_writedata,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [127:0] arg_arg_score_acc1_select_b;
    wire [127:0] arg_arg_score_acc2_select_b;
    wire [127:0] arg_arg_score_acc4_select_b;
    wire [63:0] arg_arg_score_acc_select_b;
    wire [63:0] arg_arg_seq_a_acc6_select_b;
    wire [63:0] arg_arg_seq_a_acc7_select_b;
    wire [63:0] arg_arg_seq_a_acc9_select_b;
    wire [63:0] arg_arg_seq_a_acc_select_b;
    wire [63:0] arg_arg_seq_b_acc11_select_b;
    wire [63:0] arg_arg_seq_b_acc12_select_b;
    wire [63:0] arg_arg_seq_b_acc14_select_b;
    wire [63:0] arg_arg_seq_b_acc_select_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_60_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_62_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_69_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_71_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_78_b;
    wire [63:0] ip_dsdk_adapt_bitselect_3_80_b;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_o_active_unnamed_SmithWatermanKernel1;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_stall_out;
    wire [34:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;
    wire [7:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;
    wire [63:0] SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;
    wire [0:0] SmithWatermanKernel_function_aunroll_x_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // arg_arg_seq_b_acc14_select(BITSELECT,12)
    assign arg_arg_seq_b_acc14_select_b = kernel_arguments[959:896];

    // arg_arg_seq_b_acc12_select(BITSELECT,11)
    assign arg_arg_seq_b_acc12_select_b = kernel_arguments[895:832];

    // arg_arg_seq_b_acc11_select(BITSELECT,10)
    assign arg_arg_seq_b_acc11_select_b = kernel_arguments[831:768];

    // arg_arg_seq_a_acc9_select(BITSELECT,8)
    assign arg_arg_seq_a_acc9_select_b = kernel_arguments[703:640];

    // arg_arg_seq_a_acc7_select(BITSELECT,7)
    assign arg_arg_seq_a_acc7_select_b = kernel_arguments[639:576];

    // arg_arg_seq_a_acc6_select(BITSELECT,6)
    assign arg_arg_seq_a_acc6_select_b = kernel_arguments[575:512];

    // arg_arg_score_acc4_select(BITSELECT,4)
    assign arg_arg_score_acc4_select_b = kernel_arguments[447:320];

    // ip_dsdk_adapt_bitselect_3_80(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect_3_80_b = arg_arg_score_acc4_select_b[127:64];

    // ip_dsdk_adapt_bitselect_3_78(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect_3_78_b = arg_arg_score_acc4_select_b[63:0];

    // arg_arg_score_acc2_select(BITSELECT,3)
    assign arg_arg_score_acc2_select_b = kernel_arguments[319:192];

    // ip_dsdk_adapt_bitselect_3_71(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect_3_71_b = arg_arg_score_acc2_select_b[127:64];

    // ip_dsdk_adapt_bitselect_3_69(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect_3_69_b = arg_arg_score_acc2_select_b[63:0];

    // arg_arg_score_acc1_select(BITSELECT,2)
    assign arg_arg_score_acc1_select_b = kernel_arguments[191:64];

    // ip_dsdk_adapt_bitselect_3_62(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect_3_62_b = arg_arg_score_acc1_select_b[127:64];

    // ip_dsdk_adapt_bitselect_3_60(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect_3_60_b = arg_arg_score_acc1_select_b[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_arg_seq_b_acc_select(BITSELECT,13)
    assign arg_arg_seq_b_acc_select_b = kernel_arguments[767:704];

    // arg_arg_seq_a_acc_select(BITSELECT,9)
    assign arg_arg_seq_a_acc_select_b = kernel_arguments[511:448];

    // arg_arg_score_acc_select(BITSELECT,5)
    assign arg_arg_score_acc_select_b = kernel_arguments[63:0];

    // SmithWatermanKernel_function_aunroll_x(BLACKBOX,61)
    SmithWatermanKernel_function theSmithWatermanKernel_function_aunroll_x (
        .in_arg_acl_global_id_0(global_id_0),
        .in_arg_acl_global_id_1(global_id_1),
        .in_arg_arg_score_acc(arg_arg_score_acc_select_b),
        .in_arg_arg_seq_a_acc(arg_arg_seq_a_acc_select_b),
        .in_arg_arg_seq_b_acc(arg_arg_seq_b_acc_select_b),
        .in_lm10_SmithWatermanKernel_avm_readdata(avm_lm10_SmithWatermanKernel_readdata),
        .in_lm10_SmithWatermanKernel_avm_readdatavalid(avm_lm10_SmithWatermanKernel_readdatavalid),
        .in_lm10_SmithWatermanKernel_avm_waitrequest(avm_lm10_SmithWatermanKernel_waitrequest),
        .in_lm10_SmithWatermanKernel_avm_writeack(avm_lm10_SmithWatermanKernel_writeack),
        .in_lm12_SmithWatermanKernel_avm_readdata(avm_lm12_SmithWatermanKernel_readdata),
        .in_lm12_SmithWatermanKernel_avm_readdatavalid(avm_lm12_SmithWatermanKernel_readdatavalid),
        .in_lm12_SmithWatermanKernel_avm_waitrequest(avm_lm12_SmithWatermanKernel_waitrequest),
        .in_lm12_SmithWatermanKernel_avm_writeack(avm_lm12_SmithWatermanKernel_writeack),
        .in_lm6_SmithWatermanKernel_avm_readdata(avm_lm6_SmithWatermanKernel_readdata),
        .in_lm6_SmithWatermanKernel_avm_readdatavalid(avm_lm6_SmithWatermanKernel_readdatavalid),
        .in_lm6_SmithWatermanKernel_avm_waitrequest(avm_lm6_SmithWatermanKernel_waitrequest),
        .in_lm6_SmithWatermanKernel_avm_writeack(avm_lm6_SmithWatermanKernel_writeack),
        .in_lm8_SmithWatermanKernel_avm_readdata(avm_lm8_SmithWatermanKernel_readdata),
        .in_lm8_SmithWatermanKernel_avm_readdatavalid(avm_lm8_SmithWatermanKernel_readdatavalid),
        .in_lm8_SmithWatermanKernel_avm_waitrequest(avm_lm8_SmithWatermanKernel_waitrequest),
        .in_lm8_SmithWatermanKernel_avm_writeack(avm_lm8_SmithWatermanKernel_writeack),
        .in_lm_SmithWatermanKernel_avm_readdata(avm_lm_SmithWatermanKernel_readdata),
        .in_lm_SmithWatermanKernel_avm_readdatavalid(avm_lm_SmithWatermanKernel_readdatavalid),
        .in_lm_SmithWatermanKernel_avm_waitrequest(avm_lm_SmithWatermanKernel_waitrequest),
        .in_lm_SmithWatermanKernel_avm_writeack(avm_lm_SmithWatermanKernel_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata(avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_readdata),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid(avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_readdatavalid),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest(avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_waitrequest),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack(avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_writeack),
        .in_valid_in(kernel_valid_in),
        .in_arg_arg_score_acc1_0_tpl(ip_dsdk_adapt_bitselect_3_60_b),
        .in_arg_arg_score_acc1_1_tpl(ip_dsdk_adapt_bitselect_3_62_b),
        .in_arg_arg_score_acc2_0_tpl(ip_dsdk_adapt_bitselect_3_69_b),
        .in_arg_arg_score_acc2_1_tpl(ip_dsdk_adapt_bitselect_3_71_b),
        .in_arg_arg_score_acc4_0_tpl(ip_dsdk_adapt_bitselect_3_78_b),
        .in_arg_arg_score_acc4_1_tpl(ip_dsdk_adapt_bitselect_3_80_b),
        .in_arg_arg_seq_a_acc6_0_tpl(arg_arg_seq_a_acc6_select_b),
        .in_arg_arg_seq_a_acc7_0_tpl(arg_arg_seq_a_acc7_select_b),
        .in_arg_arg_seq_a_acc9_0_tpl(arg_arg_seq_a_acc9_select_b),
        .in_arg_arg_seq_b_acc11_0_tpl(arg_arg_seq_b_acc11_select_b),
        .in_arg_arg_seq_b_acc12_0_tpl(arg_arg_seq_b_acc12_select_b),
        .in_arg_arg_seq_b_acc14_0_tpl(arg_arg_seq_b_acc14_select_b),
        .out_lm10_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_address),
        .out_lm10_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount),
        .out_lm10_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable),
        .out_lm10_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable),
        .out_lm10_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_read),
        .out_lm10_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_write),
        .out_lm10_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata),
        .out_lm12_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_address),
        .out_lm12_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount),
        .out_lm12_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable),
        .out_lm12_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable),
        .out_lm12_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_read),
        .out_lm12_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_write),
        .out_lm12_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata),
        .out_lm6_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_address),
        .out_lm6_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount),
        .out_lm6_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable),
        .out_lm6_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable),
        .out_lm6_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_read),
        .out_lm6_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_write),
        .out_lm6_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata),
        .out_lm8_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_address),
        .out_lm8_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount),
        .out_lm8_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable),
        .out_lm8_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable),
        .out_lm8_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_read),
        .out_lm8_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_write),
        .out_lm8_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata),
        .out_lm_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_address),
        .out_lm_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount),
        .out_lm_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable),
        .out_lm_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_enable),
        .out_lm_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_read),
        .out_lm_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_write),
        .out_lm_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata),
        .out_o_active_unnamed_SmithWatermanKernel1(SmithWatermanKernel_function_aunroll_x_out_o_active_unnamed_SmithWatermanKernel1),
        .out_stall_out(SmithWatermanKernel_function_aunroll_x_out_stall_out),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata),
        .out_valid_out(SmithWatermanKernel_function_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm10_SmithWatermanKernel_address(GPOUT,116)
    assign avm_lm10_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_address;

    // avm_lm10_SmithWatermanKernel_burstcount(GPOUT,117)
    assign avm_lm10_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount;

    // avm_lm10_SmithWatermanKernel_byteenable(GPOUT,118)
    assign avm_lm10_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable;

    // avm_lm10_SmithWatermanKernel_enable(GPOUT,119)
    assign avm_lm10_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable;

    // avm_lm10_SmithWatermanKernel_read(GPOUT,120)
    assign avm_lm10_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_read;

    // avm_lm10_SmithWatermanKernel_write(GPOUT,121)
    assign avm_lm10_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_write;

    // avm_lm10_SmithWatermanKernel_writedata(GPOUT,122)
    assign avm_lm10_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata;

    // avm_lm12_SmithWatermanKernel_address(GPOUT,123)
    assign avm_lm12_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_address;

    // avm_lm12_SmithWatermanKernel_burstcount(GPOUT,124)
    assign avm_lm12_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount;

    // avm_lm12_SmithWatermanKernel_byteenable(GPOUT,125)
    assign avm_lm12_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable;

    // avm_lm12_SmithWatermanKernel_enable(GPOUT,126)
    assign avm_lm12_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable;

    // avm_lm12_SmithWatermanKernel_read(GPOUT,127)
    assign avm_lm12_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_read;

    // avm_lm12_SmithWatermanKernel_write(GPOUT,128)
    assign avm_lm12_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_write;

    // avm_lm12_SmithWatermanKernel_writedata(GPOUT,129)
    assign avm_lm12_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata;

    // avm_lm6_SmithWatermanKernel_address(GPOUT,130)
    assign avm_lm6_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_address;

    // avm_lm6_SmithWatermanKernel_burstcount(GPOUT,131)
    assign avm_lm6_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount;

    // avm_lm6_SmithWatermanKernel_byteenable(GPOUT,132)
    assign avm_lm6_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable;

    // avm_lm6_SmithWatermanKernel_enable(GPOUT,133)
    assign avm_lm6_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable;

    // avm_lm6_SmithWatermanKernel_read(GPOUT,134)
    assign avm_lm6_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_read;

    // avm_lm6_SmithWatermanKernel_write(GPOUT,135)
    assign avm_lm6_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_write;

    // avm_lm6_SmithWatermanKernel_writedata(GPOUT,136)
    assign avm_lm6_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata;

    // avm_lm8_SmithWatermanKernel_address(GPOUT,137)
    assign avm_lm8_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_address;

    // avm_lm8_SmithWatermanKernel_burstcount(GPOUT,138)
    assign avm_lm8_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount;

    // avm_lm8_SmithWatermanKernel_byteenable(GPOUT,139)
    assign avm_lm8_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable;

    // avm_lm8_SmithWatermanKernel_enable(GPOUT,140)
    assign avm_lm8_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable;

    // avm_lm8_SmithWatermanKernel_read(GPOUT,141)
    assign avm_lm8_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_read;

    // avm_lm8_SmithWatermanKernel_write(GPOUT,142)
    assign avm_lm8_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_write;

    // avm_lm8_SmithWatermanKernel_writedata(GPOUT,143)
    assign avm_lm8_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata;

    // avm_lm_SmithWatermanKernel_address(GPOUT,144)
    assign avm_lm_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_address;

    // avm_lm_SmithWatermanKernel_burstcount(GPOUT,145)
    assign avm_lm_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount;

    // avm_lm_SmithWatermanKernel_byteenable(GPOUT,146)
    assign avm_lm_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable;

    // avm_lm_SmithWatermanKernel_enable(GPOUT,147)
    assign avm_lm_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_enable;

    // avm_lm_SmithWatermanKernel_read(GPOUT,148)
    assign avm_lm_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_read;

    // avm_lm_SmithWatermanKernel_write(GPOUT,149)
    assign avm_lm_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_write;

    // avm_lm_SmithWatermanKernel_writedata(GPOUT,150)
    assign avm_lm_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_address(GPOUT,151)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_address = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_burstcount(GPOUT,152)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_burstcount = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_byteenable(GPOUT,153)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_byteenable = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_enable(GPOUT,154)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_enable = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_read(GPOUT,155)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_read = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_write(GPOUT,156)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_write = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;

    // avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_writedata(GPOUT,157)
    assign avm_unnamed_SmithWatermanKernel1_SmithWatermanKernel_writedata = SmithWatermanKernel_function_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;

    // has_a_lsu_active(GPOUT,158)
    assign has_a_lsu_active = SmithWatermanKernel_function_aunroll_x_out_o_active_unnamed_SmithWatermanKernel1;

    // has_a_write_pending(GPOUT,159)
    assign has_a_write_pending = SmithWatermanKernel_function_aunroll_x_out_o_active_unnamed_SmithWatermanKernel1;

    // kernel_stall_out(GPOUT,160)
    assign kernel_stall_out = SmithWatermanKernel_function_aunroll_x_out_stall_out;

    // kernel_valid_out(GPOUT,161)
    assign kernel_valid_out = SmithWatermanKernel_function_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,162)
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
