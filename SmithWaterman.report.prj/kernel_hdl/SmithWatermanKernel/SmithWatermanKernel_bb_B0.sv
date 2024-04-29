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

// SystemVerilog created from bb_SmithWatermanKernel_B0
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_bb_B0 (
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
    output wire [0:0] out_lsu_unnamed_SmithWatermanKernel1_o_active,
    output wire [0:0] out_stall_out_0,
    output wire [34:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount,
    output wire [7:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write,
    output wire [63:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire [63:0] in_acl_global_id_0_0,
    input wire [63:0] in_acl_global_id_1_0,
    input wire [63:0] in_arg_score_acc,
    input wire [63:0] in_arg_seq_a_acc,
    input wire [63:0] in_arg_seq_b_acc,
    input wire [0:0] in_flush,
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
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_arg_score_acc2_0_tpl,
    input wire [63:0] in_arg_score_acc2_1_tpl,
    input wire [63:0] in_arg_score_acc4_0_tpl,
    input wire [63:0] in_arg_score_acc4_1_tpl,
    input wire [63:0] in_arg_seq_a_acc9_0_tpl,
    input wire [63:0] in_arg_seq_b_acc14_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] SmithWatermanKernel_B0_branch_out_stall_out;
    wire [0:0] SmithWatermanKernel_B0_branch_out_valid_out_0;
    wire [63:0] SmithWatermanKernel_B0_merge_out_acl_global_id_0;
    wire [63:0] SmithWatermanKernel_B0_merge_out_acl_global_id_1;
    wire [0:0] SmithWatermanKernel_B0_merge_out_almost_empty_out;
    wire [0:0] SmithWatermanKernel_B0_merge_out_empty_out;
    wire [0:0] SmithWatermanKernel_B0_merge_out_stall_out_0;
    wire [0:0] SmithWatermanKernel_B0_merge_out_valid_out;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_almost_empty_out;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_empty_out;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_writedata;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_writedata;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_lsu_unnamed_SmithWatermanKernel1_o_active;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_stall_out;
    wire [34:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;
    wire [7:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;
    wire [63:0] bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;
    wire [0:0] bb_SmithWatermanKernel_B0_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // SmithWatermanKernel_B0_branch(BLACKBOX,2)
    SmithWatermanKernel_B0_branch theSmithWatermanKernel_B0_branch (
        .in_almost_empty_in(bb_SmithWatermanKernel_B0_stall_region_out_almost_empty_out),
        .in_empty_in(bb_SmithWatermanKernel_B0_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_SmithWatermanKernel_B0_stall_region_out_valid_out),
        .out_stall_out(SmithWatermanKernel_B0_branch_out_stall_out),
        .out_valid_out_0(SmithWatermanKernel_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // SmithWatermanKernel_B0_merge(BLACKBOX,3)
    SmithWatermanKernel_B0_merge theSmithWatermanKernel_B0_merge (
        .in_acl_global_id_0_0(in_acl_global_id_0_0),
        .in_acl_global_id_1_0(in_acl_global_id_1_0),
        .in_stall_in(bb_SmithWatermanKernel_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_0(SmithWatermanKernel_B0_merge_out_acl_global_id_0),
        .out_acl_global_id_1(SmithWatermanKernel_B0_merge_out_acl_global_id_1),
        .out_almost_empty_out(SmithWatermanKernel_B0_merge_out_almost_empty_out),
        .out_empty_out(SmithWatermanKernel_B0_merge_out_empty_out),
        .out_stall_out_0(SmithWatermanKernel_B0_merge_out_stall_out_0),
        .out_valid_out(SmithWatermanKernel_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_SmithWatermanKernel_B0_stall_region(BLACKBOX,4)
    SmithWatermanKernel_bb_B0_stall_region thebb_SmithWatermanKernel_B0_stall_region (
        .in_acl_global_id_0(SmithWatermanKernel_B0_merge_out_acl_global_id_0),
        .in_acl_global_id_1(SmithWatermanKernel_B0_merge_out_acl_global_id_1),
        .in_almost_empty_in(SmithWatermanKernel_B0_merge_out_almost_empty_out),
        .in_arg_score_acc(in_arg_score_acc),
        .in_arg_seq_a_acc(in_arg_seq_a_acc),
        .in_arg_seq_b_acc(in_arg_seq_b_acc),
        .in_empty_in(SmithWatermanKernel_B0_merge_out_empty_out),
        .in_flush(in_flush),
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
        .in_stall_in(SmithWatermanKernel_B0_branch_out_stall_out),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack),
        .in_valid_in(SmithWatermanKernel_B0_merge_out_valid_out),
        .in_arg_score_acc2_0_tpl(in_arg_score_acc2_0_tpl),
        .in_arg_score_acc2_1_tpl(in_arg_score_acc2_1_tpl),
        .in_arg_score_acc4_0_tpl(in_arg_score_acc4_0_tpl),
        .in_arg_score_acc4_1_tpl(in_arg_score_acc4_1_tpl),
        .in_arg_seq_a_acc9_0_tpl(in_arg_seq_a_acc9_0_tpl),
        .in_arg_seq_b_acc14_0_tpl(in_arg_seq_b_acc14_0_tpl),
        .out_almost_empty_out(bb_SmithWatermanKernel_B0_stall_region_out_almost_empty_out),
        .out_empty_out(bb_SmithWatermanKernel_B0_stall_region_out_empty_out),
        .out_lm10_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_address),
        .out_lm10_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_burstcount),
        .out_lm10_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_byteenable),
        .out_lm10_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_enable),
        .out_lm10_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_read),
        .out_lm10_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_write),
        .out_lm10_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_writedata),
        .out_lm12_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_address),
        .out_lm12_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_burstcount),
        .out_lm12_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_byteenable),
        .out_lm12_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_enable),
        .out_lm12_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_read),
        .out_lm12_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_write),
        .out_lm12_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_writedata),
        .out_lm6_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_address),
        .out_lm6_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_burstcount),
        .out_lm6_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_byteenable),
        .out_lm6_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_enable),
        .out_lm6_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_read),
        .out_lm6_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_write),
        .out_lm6_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_writedata),
        .out_lm8_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_address),
        .out_lm8_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_burstcount),
        .out_lm8_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_byteenable),
        .out_lm8_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_enable),
        .out_lm8_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_read),
        .out_lm8_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_write),
        .out_lm8_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_writedata),
        .out_lm_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_address),
        .out_lm_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_burstcount),
        .out_lm_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_byteenable),
        .out_lm_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_enable),
        .out_lm_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_read),
        .out_lm_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_write),
        .out_lm_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_writedata),
        .out_lsu_unnamed_SmithWatermanKernel1_o_active(bb_SmithWatermanKernel_B0_stall_region_out_lsu_unnamed_SmithWatermanKernel1_o_active),
        .out_stall_out(bb_SmithWatermanKernel_B0_stall_region_out_stall_out),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata),
        .out_valid_out(bb_SmithWatermanKernel_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm10_SmithWatermanKernel_avm_address(GPOUT,5)
    assign out_lm10_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_address;

    // out_lm10_SmithWatermanKernel_avm_burstcount(GPOUT,6)
    assign out_lm10_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_burstcount;

    // out_lm10_SmithWatermanKernel_avm_byteenable(GPOUT,7)
    assign out_lm10_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_byteenable;

    // out_lm10_SmithWatermanKernel_avm_enable(GPOUT,8)
    assign out_lm10_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_enable;

    // out_lm10_SmithWatermanKernel_avm_read(GPOUT,9)
    assign out_lm10_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_read;

    // out_lm10_SmithWatermanKernel_avm_write(GPOUT,10)
    assign out_lm10_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_write;

    // out_lm10_SmithWatermanKernel_avm_writedata(GPOUT,11)
    assign out_lm10_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_lm10_SmithWatermanKernel_avm_writedata;

    // out_lm12_SmithWatermanKernel_avm_address(GPOUT,12)
    assign out_lm12_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_address;

    // out_lm12_SmithWatermanKernel_avm_burstcount(GPOUT,13)
    assign out_lm12_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_burstcount;

    // out_lm12_SmithWatermanKernel_avm_byteenable(GPOUT,14)
    assign out_lm12_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_byteenable;

    // out_lm12_SmithWatermanKernel_avm_enable(GPOUT,15)
    assign out_lm12_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_enable;

    // out_lm12_SmithWatermanKernel_avm_read(GPOUT,16)
    assign out_lm12_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_read;

    // out_lm12_SmithWatermanKernel_avm_write(GPOUT,17)
    assign out_lm12_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_write;

    // out_lm12_SmithWatermanKernel_avm_writedata(GPOUT,18)
    assign out_lm12_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_lm12_SmithWatermanKernel_avm_writedata;

    // out_lm6_SmithWatermanKernel_avm_address(GPOUT,19)
    assign out_lm6_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_address;

    // out_lm6_SmithWatermanKernel_avm_burstcount(GPOUT,20)
    assign out_lm6_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_burstcount;

    // out_lm6_SmithWatermanKernel_avm_byteenable(GPOUT,21)
    assign out_lm6_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_byteenable;

    // out_lm6_SmithWatermanKernel_avm_enable(GPOUT,22)
    assign out_lm6_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_enable;

    // out_lm6_SmithWatermanKernel_avm_read(GPOUT,23)
    assign out_lm6_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_read;

    // out_lm6_SmithWatermanKernel_avm_write(GPOUT,24)
    assign out_lm6_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_write;

    // out_lm6_SmithWatermanKernel_avm_writedata(GPOUT,25)
    assign out_lm6_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_lm6_SmithWatermanKernel_avm_writedata;

    // out_lm8_SmithWatermanKernel_avm_address(GPOUT,26)
    assign out_lm8_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_address;

    // out_lm8_SmithWatermanKernel_avm_burstcount(GPOUT,27)
    assign out_lm8_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_burstcount;

    // out_lm8_SmithWatermanKernel_avm_byteenable(GPOUT,28)
    assign out_lm8_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_byteenable;

    // out_lm8_SmithWatermanKernel_avm_enable(GPOUT,29)
    assign out_lm8_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_enable;

    // out_lm8_SmithWatermanKernel_avm_read(GPOUT,30)
    assign out_lm8_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_read;

    // out_lm8_SmithWatermanKernel_avm_write(GPOUT,31)
    assign out_lm8_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_write;

    // out_lm8_SmithWatermanKernel_avm_writedata(GPOUT,32)
    assign out_lm8_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_lm8_SmithWatermanKernel_avm_writedata;

    // out_lm_SmithWatermanKernel_avm_address(GPOUT,33)
    assign out_lm_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_address;

    // out_lm_SmithWatermanKernel_avm_burstcount(GPOUT,34)
    assign out_lm_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_burstcount;

    // out_lm_SmithWatermanKernel_avm_byteenable(GPOUT,35)
    assign out_lm_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_byteenable;

    // out_lm_SmithWatermanKernel_avm_enable(GPOUT,36)
    assign out_lm_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_enable;

    // out_lm_SmithWatermanKernel_avm_read(GPOUT,37)
    assign out_lm_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_read;

    // out_lm_SmithWatermanKernel_avm_write(GPOUT,38)
    assign out_lm_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_write;

    // out_lm_SmithWatermanKernel_avm_writedata(GPOUT,39)
    assign out_lm_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_lm_SmithWatermanKernel_avm_writedata;

    // out_lsu_unnamed_SmithWatermanKernel1_o_active(GPOUT,40)
    assign out_lsu_unnamed_SmithWatermanKernel1_o_active = bb_SmithWatermanKernel_B0_stall_region_out_lsu_unnamed_SmithWatermanKernel1_o_active;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = SmithWatermanKernel_B0_merge_out_stall_out_0;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(GPOUT,42)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(GPOUT,43)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(GPOUT,44)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(GPOUT,45)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(GPOUT,46)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(GPOUT,47)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;

    // out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(GPOUT,48)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata = bb_SmithWatermanKernel_B0_stall_region_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = SmithWatermanKernel_B0_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,88)
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
