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

// SystemVerilog created from SmithWatermanKernel_function
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_function (
    output wire [34:0] out_lm10_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_lm10_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm10_SmithWatermanKernel_avm_writedata,
    output wire [34:0] out_lm12_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_lm12_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm12_SmithWatermanKernel_avm_writedata,
    output wire [34:0] out_lm6_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_lm6_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm6_SmithWatermanKernel_avm_writedata,
    output wire [34:0] out_lm8_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_lm8_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm8_SmithWatermanKernel_avm_writedata,
    output wire [34:0] out_lm_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_lm_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm_SmithWatermanKernel_avm_writedata,
    output wire [0:0] out_o_active_unnamed_SmithWatermanKernel1,
    output wire [0:0] out_stall_out,
    output wire [34:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write,
    output wire [63:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_id_1,
    input wire [63:0] in_arg_arg_score_acc,
    input wire [63:0] in_arg_arg_seq_a_acc,
    input wire [63:0] in_arg_arg_seq_b_acc,
    input wire [63:0] in_lm10_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_writeack,
    input wire [63:0] in_lm12_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_writeack,
    input wire [63:0] in_lm6_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_writeack,
    input wire [63:0] in_lm8_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_writeack,
    input wire [63:0] in_lm_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_arg_arg_score_acc1_0_tpl,
    input wire [63:0] in_arg_arg_score_acc1_1_tpl,
    input wire [63:0] in_arg_arg_score_acc2_0_tpl,
    input wire [63:0] in_arg_arg_score_acc2_1_tpl,
    input wire [63:0] in_arg_arg_score_acc4_0_tpl,
    input wire [63:0] in_arg_arg_score_acc4_1_tpl,
    input wire [63:0] in_arg_arg_seq_a_acc6_0_tpl,
    input wire [63:0] in_arg_arg_seq_a_acc7_0_tpl,
    input wire [63:0] in_arg_arg_seq_a_acc9_0_tpl,
    input wire [63:0] in_arg_arg_seq_b_acc11_0_tpl,
    input wire [63:0] in_arg_arg_seq_b_acc12_0_tpl,
    input wire [63:0] in_arg_arg_seq_b_acc14_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] SmithWatermanKernel_function_i_enable;
    wire SmithWatermanKernel_function_i_enable_bitsignaltemp;
    wire [0:0] SmithWatermanKernel_function_i_end;
    wire SmithWatermanKernel_function_i_end_bitsignaltemp;
    wire [0:0] SmithWatermanKernel_function_i_start;
    wire SmithWatermanKernel_function_i_start_bitsignaltemp;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_lsu_unnamed_SmithWatermanKernel1_o_active;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_stall_out_0;
    wire [34:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;
    wire [0:0] bb_SmithWatermanKernel_B0_aunroll_x_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_SmithWatermanKernel_B0_aunroll_x(BLACKBOX,4)
    SmithWatermanKernel_bb_B0 thebb_SmithWatermanKernel_B0_aunroll_x (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_arg_score_acc(in_arg_arg_score_acc),
        .in_arg_seq_a_acc(in_arg_arg_seq_a_acc),
        .in_arg_seq_b_acc(in_arg_arg_seq_b_acc),
        .in_flush(in_start),
        .in_lm10_SmithWatermanKernel_avm_readdata(in_lm10_SmithWatermanKernel_avm_readdata),
        .in_lm10_SmithWatermanKernel_avm_readdatavalid(in_lm10_SmithWatermanKernel_avm_readdatavalid),
        .in_lm10_SmithWatermanKernel_avm_waitrequest(in_lm10_SmithWatermanKernel_avm_waitrequest),
        .in_lm10_SmithWatermanKernel_avm_writeack(in_lm10_SmithWatermanKernel_avm_writeack),
        .in_lm12_SmithWatermanKernel_avm_readdata(in_lm12_SmithWatermanKernel_avm_readdata),
        .in_lm12_SmithWatermanKernel_avm_readdatavalid(in_lm12_SmithWatermanKernel_avm_readdatavalid),
        .in_lm12_SmithWatermanKernel_avm_waitrequest(in_lm12_SmithWatermanKernel_avm_waitrequest),
        .in_lm12_SmithWatermanKernel_avm_writeack(in_lm12_SmithWatermanKernel_avm_writeack),
        .in_lm6_SmithWatermanKernel_avm_readdata(in_lm6_SmithWatermanKernel_avm_readdata),
        .in_lm6_SmithWatermanKernel_avm_readdatavalid(in_lm6_SmithWatermanKernel_avm_readdatavalid),
        .in_lm6_SmithWatermanKernel_avm_waitrequest(in_lm6_SmithWatermanKernel_avm_waitrequest),
        .in_lm6_SmithWatermanKernel_avm_writeack(in_lm6_SmithWatermanKernel_avm_writeack),
        .in_lm8_SmithWatermanKernel_avm_readdata(in_lm8_SmithWatermanKernel_avm_readdata),
        .in_lm8_SmithWatermanKernel_avm_readdatavalid(in_lm8_SmithWatermanKernel_avm_readdatavalid),
        .in_lm8_SmithWatermanKernel_avm_waitrequest(in_lm8_SmithWatermanKernel_avm_waitrequest),
        .in_lm8_SmithWatermanKernel_avm_writeack(in_lm8_SmithWatermanKernel_avm_writeack),
        .in_lm_SmithWatermanKernel_avm_readdata(in_lm_SmithWatermanKernel_avm_readdata),
        .in_lm_SmithWatermanKernel_avm_readdatavalid(in_lm_SmithWatermanKernel_avm_readdatavalid),
        .in_lm_SmithWatermanKernel_avm_waitrequest(in_lm_SmithWatermanKernel_avm_waitrequest),
        .in_lm_SmithWatermanKernel_avm_writeack(in_lm_SmithWatermanKernel_avm_writeack),
        .in_stall_in_0(in_stall_in),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack),
        .in_valid_in_0(in_valid_in),
        .in_arg_score_acc2_0_tpl(in_arg_arg_score_acc2_0_tpl),
        .in_arg_score_acc2_1_tpl(in_arg_arg_score_acc2_1_tpl),
        .in_arg_score_acc4_0_tpl(in_arg_arg_score_acc4_0_tpl),
        .in_arg_score_acc4_1_tpl(in_arg_arg_score_acc4_1_tpl),
        .in_arg_seq_a_acc9_0_tpl(in_arg_arg_seq_a_acc9_0_tpl),
        .in_arg_seq_b_acc14_0_tpl(in_arg_arg_seq_b_acc14_0_tpl),
        .out_lm10_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_address),
        .out_lm10_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount),
        .out_lm10_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable),
        .out_lm10_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable),
        .out_lm10_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_read),
        .out_lm10_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_write),
        .out_lm10_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata),
        .out_lm12_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_address),
        .out_lm12_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount),
        .out_lm12_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable),
        .out_lm12_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable),
        .out_lm12_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_read),
        .out_lm12_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_write),
        .out_lm12_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata),
        .out_lm6_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_address),
        .out_lm6_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount),
        .out_lm6_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable),
        .out_lm6_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable),
        .out_lm6_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_read),
        .out_lm6_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_write),
        .out_lm6_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata),
        .out_lm8_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_address),
        .out_lm8_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount),
        .out_lm8_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable),
        .out_lm8_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable),
        .out_lm8_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_read),
        .out_lm8_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_write),
        .out_lm8_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata),
        .out_lm_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_address),
        .out_lm_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount),
        .out_lm_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable),
        .out_lm_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_enable),
        .out_lm_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_read),
        .out_lm_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_write),
        .out_lm_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata),
        .out_lsu_unnamed_SmithWatermanKernel1_o_active(bb_SmithWatermanKernel_B0_aunroll_x_out_lsu_unnamed_SmithWatermanKernel1_o_active),
        .out_stall_out_0(bb_SmithWatermanKernel_B0_aunroll_x_out_stall_out_0),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata),
        .out_valid_out_0(bb_SmithWatermanKernel_B0_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // SmithWatermanKernel_function(EXTIFACE,2)
    assign SmithWatermanKernel_function_i_enable = VCC_q;
    assign SmithWatermanKernel_function_i_end = bb_SmithWatermanKernel_B0_aunroll_x_out_valid_out_0;
    assign SmithWatermanKernel_function_i_start = in_start;
    assign SmithWatermanKernel_function_i_enable_bitsignaltemp = SmithWatermanKernel_function_i_enable[0];
    assign SmithWatermanKernel_function_i_end_bitsignaltemp = SmithWatermanKernel_function_i_end[0];
    assign SmithWatermanKernel_function_i_start_bitsignaltemp = SmithWatermanKernel_function_i_start[0];
    hld_sim_latency_tracker #(
        .ADDITIONAL_START_LATENCY(9),
        .CRA_CONTROL(1),
        .IS_COMPONENT(1),
        .NAME("SmithWatermanKernel")
    ) theSmithWatermanKernel_function (
        .i_enable(SmithWatermanKernel_function_i_enable_bitsignaltemp),
        .i_end(SmithWatermanKernel_function_i_end_bitsignaltemp),
        .i_start(SmithWatermanKernel_function_i_start_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_lm10_SmithWatermanKernel_avm_address(GPOUT,5)
    assign out_lm10_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_address;

    // out_lm10_SmithWatermanKernel_avm_burstcount(GPOUT,6)
    assign out_lm10_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_burstcount;

    // out_lm10_SmithWatermanKernel_avm_byteenable(GPOUT,7)
    assign out_lm10_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_byteenable;

    // out_lm10_SmithWatermanKernel_avm_enable(GPOUT,8)
    assign out_lm10_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_enable;

    // out_lm10_SmithWatermanKernel_avm_read(GPOUT,9)
    assign out_lm10_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_read;

    // out_lm10_SmithWatermanKernel_avm_write(GPOUT,10)
    assign out_lm10_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_write;

    // out_lm10_SmithWatermanKernel_avm_writedata(GPOUT,11)
    assign out_lm10_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_lm10_SmithWatermanKernel_avm_writedata;

    // out_lm12_SmithWatermanKernel_avm_address(GPOUT,12)
    assign out_lm12_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_address;

    // out_lm12_SmithWatermanKernel_avm_burstcount(GPOUT,13)
    assign out_lm12_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_burstcount;

    // out_lm12_SmithWatermanKernel_avm_byteenable(GPOUT,14)
    assign out_lm12_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_byteenable;

    // out_lm12_SmithWatermanKernel_avm_enable(GPOUT,15)
    assign out_lm12_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_enable;

    // out_lm12_SmithWatermanKernel_avm_read(GPOUT,16)
    assign out_lm12_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_read;

    // out_lm12_SmithWatermanKernel_avm_write(GPOUT,17)
    assign out_lm12_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_write;

    // out_lm12_SmithWatermanKernel_avm_writedata(GPOUT,18)
    assign out_lm12_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_lm12_SmithWatermanKernel_avm_writedata;

    // out_lm6_SmithWatermanKernel_avm_address(GPOUT,19)
    assign out_lm6_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_address;

    // out_lm6_SmithWatermanKernel_avm_burstcount(GPOUT,20)
    assign out_lm6_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_burstcount;

    // out_lm6_SmithWatermanKernel_avm_byteenable(GPOUT,21)
    assign out_lm6_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_byteenable;

    // out_lm6_SmithWatermanKernel_avm_enable(GPOUT,22)
    assign out_lm6_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_enable;

    // out_lm6_SmithWatermanKernel_avm_read(GPOUT,23)
    assign out_lm6_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_read;

    // out_lm6_SmithWatermanKernel_avm_write(GPOUT,24)
    assign out_lm6_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_write;

    // out_lm6_SmithWatermanKernel_avm_writedata(GPOUT,25)
    assign out_lm6_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_lm6_SmithWatermanKernel_avm_writedata;

    // out_lm8_SmithWatermanKernel_avm_address(GPOUT,26)
    assign out_lm8_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_address;

    // out_lm8_SmithWatermanKernel_avm_burstcount(GPOUT,27)
    assign out_lm8_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_burstcount;

    // out_lm8_SmithWatermanKernel_avm_byteenable(GPOUT,28)
    assign out_lm8_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_byteenable;

    // out_lm8_SmithWatermanKernel_avm_enable(GPOUT,29)
    assign out_lm8_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_enable;

    // out_lm8_SmithWatermanKernel_avm_read(GPOUT,30)
    assign out_lm8_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_read;

    // out_lm8_SmithWatermanKernel_avm_write(GPOUT,31)
    assign out_lm8_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_write;

    // out_lm8_SmithWatermanKernel_avm_writedata(GPOUT,32)
    assign out_lm8_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_lm8_SmithWatermanKernel_avm_writedata;

    // out_lm_SmithWatermanKernel_avm_address(GPOUT,33)
    assign out_lm_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_address;

    // out_lm_SmithWatermanKernel_avm_burstcount(GPOUT,34)
    assign out_lm_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_burstcount;

    // out_lm_SmithWatermanKernel_avm_byteenable(GPOUT,35)
    assign out_lm_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_byteenable;

    // out_lm_SmithWatermanKernel_avm_enable(GPOUT,36)
    assign out_lm_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_enable;

    // out_lm_SmithWatermanKernel_avm_read(GPOUT,37)
    assign out_lm_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_read;

    // out_lm_SmithWatermanKernel_avm_write(GPOUT,38)
    assign out_lm_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_write;

    // out_lm_SmithWatermanKernel_avm_writedata(GPOUT,39)
    assign out_lm_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_lm_SmithWatermanKernel_avm_writedata;

    // out_o_active_unnamed_SmithWatermanKernel1(GPOUT,40)
    assign out_o_active_unnamed_SmithWatermanKernel1 = bb_SmithWatermanKernel_B0_aunroll_x_out_lsu_unnamed_SmithWatermanKernel1_o_active;

    // out_stall_out(GPOUT,41)
    assign out_stall_out = bb_SmithWatermanKernel_B0_aunroll_x_out_stall_out_0;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(GPOUT,42)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(GPOUT,43)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(GPOUT,44)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(GPOUT,45)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(GPOUT,46)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(GPOUT,47)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(GPOUT,48)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_aunroll_x_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = bb_SmithWatermanKernel_B0_aunroll_x_out_valid_out_0;

    // rst_sync(RESETSYNC,94)
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
