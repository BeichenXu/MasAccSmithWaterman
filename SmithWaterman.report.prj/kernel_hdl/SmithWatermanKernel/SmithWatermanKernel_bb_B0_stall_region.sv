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

// SystemVerilog created from bb_SmithWatermanKernel_B0_stall_region
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_bb_B0_stall_region (
    input wire [63:0] in_lm_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_lm_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_lm_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm_SmithWatermanKernel_avm_burstcount,
    input wire [63:0] in_arg_score_acc,
    input wire [63:0] in_arg_seq_a_acc,
    input wire [63:0] in_arg_seq_b_acc,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [63:0] in_acl_global_id_1,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm6_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm6_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_lm6_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm6_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_lm6_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm6_SmithWatermanKernel_avm_burstcount,
    input wire [63:0] in_lm8_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm8_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_lm8_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm8_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_lm8_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm8_SmithWatermanKernel_avm_burstcount,
    input wire [63:0] in_lm10_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm10_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_lm10_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm10_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_lm10_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm10_SmithWatermanKernel_avm_burstcount,
    input wire [63:0] in_lm12_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_lm12_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_lm12_SmithWatermanKernel_avm_address,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_read,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_write,
    output wire [63:0] out_lm12_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_lm12_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_lm12_SmithWatermanKernel_avm_burstcount,
    input wire [63:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest,
    input wire [0:0] in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid,
    output wire [34:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write,
    output wire [63:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata,
    output wire [7:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable,
    output wire [0:0] out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount,
    output wire [0:0] out_lsu_unnamed_SmithWatermanKernel1_o_active,
    input wire [63:0] in_arg_score_acc2_0_tpl,
    input wire [63:0] in_arg_score_acc2_1_tpl,
    input wire [63:0] in_arg_score_acc4_0_tpl,
    input wire [63:0] in_arg_score_acc4_1_tpl,
    input wire [63:0] in_arg_seq_a_acc9_0_tpl,
    input wire [63:0] in_arg_seq_b_acc14_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [34:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty;
    wire [7:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty;
    wire [7:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty;
    wire [31:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_lsu_unnamed_SmithWatermanKernel1_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid;
    wire [34:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl;
    wire [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_data;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_empty;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_almost_empty;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty;
    wire redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_data;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_empty;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_almost_empty;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty;
    wire redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_bitsignaltemp;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_b;
    wire [127:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [384:0] bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_h;
    wire [31:0] bubble_join_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_b;
    wire [63:0] bubble_join_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_q;
    wire [63:0] bubble_select_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V8;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V15;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V9;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V16;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V10;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V17;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V11;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V18;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V12;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V19;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V6;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V13;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V20;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_backStall;
    wire [0:0] merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V0;
    wire [0:0] merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V1;
    wire [0:0] merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V2;
    wire [0:0] merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_temp_back_stall;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg0_q;
    reg [7:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg1_q;
    reg [7:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg0_q;
    reg [7:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg1_q;
    reg [7:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg0_q;
    reg [31:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg1_q;
    reg [31:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg0_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg0_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg1_q;
    reg [0:0] i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [63:0] stall_entry_o4_reg1_q;
    reg [63:0] stall_entry_o4_reg0_q;
    reg [63:0] stall_entry_o5_reg1_q;
    reg [63:0] stall_entry_o5_reg0_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg0_q;
    reg [63:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg1_q;
    reg [63:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg0(REG,187)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg1(REG,188)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr(BLACKBOX,8)@45
    // in in_i_stall@20000000
    // out out_lm12_SmithWatermanKernel_avm_address@20000000
    // out out_lm12_SmithWatermanKernel_avm_burstcount@20000000
    // out out_lm12_SmithWatermanKernel_avm_byteenable@20000000
    // out out_lm12_SmithWatermanKernel_avm_enable@20000000
    // out out_lm12_SmithWatermanKernel_avm_read@20000000
    // out out_lm12_SmithWatermanKernel_avm_write@20000000
    // out out_lm12_SmithWatermanKernel_avm_writedata@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    SmithWatermanKernel_i_llvm_fpga_mem_lm120000termankernel_375_0gr thei_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V19),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V12),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .in_i_stall(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V5),
        .in_lm12_SmithWatermanKernel_avm_readdata(in_lm12_SmithWatermanKernel_avm_readdata),
        .in_lm12_SmithWatermanKernel_avm_readdatavalid(in_lm12_SmithWatermanKernel_avm_readdatavalid),
        .in_lm12_SmithWatermanKernel_avm_waitrequest(in_lm12_SmithWatermanKernel_avm_waitrequest),
        .in_lm12_SmithWatermanKernel_avm_writeack(in_lm12_SmithWatermanKernel_avm_writeack),
        .out_lm12_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_address),
        .out_lm12_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_burstcount),
        .out_lm12_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_byteenable),
        .out_lm12_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_enable),
        .out_lm12_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_read),
        .out_lm12_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_write),
        .out_lm12_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg0(REG,190)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg1(REG,189)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg0(REG,197)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg1(REG,198)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr(BLACKBOX,9)@45
    // in in_i_stall@20000000
    // out out_lm6_SmithWatermanKernel_avm_address@20000000
    // out out_lm6_SmithWatermanKernel_avm_burstcount@20000000
    // out out_lm6_SmithWatermanKernel_avm_byteenable@20000000
    // out out_lm6_SmithWatermanKernel_avm_enable@20000000
    // out out_lm6_SmithWatermanKernel_avm_read@20000000
    // out out_lm6_SmithWatermanKernel_avm_write@20000000
    // out out_lm6_SmithWatermanKernel_avm_writedata@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    SmithWatermanKernel_i_llvm_fpga_mem_lm6_0000termankernel_333_0gr thei_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V18),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V11),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .in_i_stall(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V4),
        .in_lm6_SmithWatermanKernel_avm_readdata(in_lm6_SmithWatermanKernel_avm_readdata),
        .in_lm6_SmithWatermanKernel_avm_readdatavalid(in_lm6_SmithWatermanKernel_avm_readdatavalid),
        .in_lm6_SmithWatermanKernel_avm_waitrequest(in_lm6_SmithWatermanKernel_avm_waitrequest),
        .in_lm6_SmithWatermanKernel_avm_writeack(in_lm6_SmithWatermanKernel_avm_writeack),
        .out_lm6_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_address),
        .out_lm6_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_burstcount),
        .out_lm6_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_byteenable),
        .out_lm6_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_enable),
        .out_lm6_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_read),
        .out_lm6_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_write),
        .out_lm6_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg0(REG,200)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg1(REG,199)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg0(REG,207)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg1(REG,208)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr(BLACKBOX,10)@45
    // in in_i_stall@20000000
    // out out_lm8_SmithWatermanKernel_avm_address@20000000
    // out out_lm8_SmithWatermanKernel_avm_burstcount@20000000
    // out out_lm8_SmithWatermanKernel_avm_byteenable@20000000
    // out out_lm8_SmithWatermanKernel_avm_enable@20000000
    // out out_lm8_SmithWatermanKernel_avm_read@20000000
    // out out_lm8_SmithWatermanKernel_avm_write@20000000
    // out out_lm8_SmithWatermanKernel_avm_writedata@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    SmithWatermanKernel_i_llvm_fpga_mem_lm8_0000termankernel_347_0gr thei_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V17),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V10),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .in_i_stall(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V3),
        .in_lm8_SmithWatermanKernel_avm_readdata(in_lm8_SmithWatermanKernel_avm_readdata),
        .in_lm8_SmithWatermanKernel_avm_readdatavalid(in_lm8_SmithWatermanKernel_avm_readdatavalid),
        .in_lm8_SmithWatermanKernel_avm_waitrequest(in_lm8_SmithWatermanKernel_avm_waitrequest),
        .in_lm8_SmithWatermanKernel_avm_writeack(in_lm8_SmithWatermanKernel_avm_writeack),
        .out_lm8_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_address),
        .out_lm8_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_burstcount),
        .out_lm8_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_byteenable),
        .out_lm8_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_enable),
        .out_lm8_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_read),
        .out_lm8_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_write),
        .out_lm8_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg0(REG,210)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg1(REG,209)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg0(REG,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg1(REG,219)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg0(REG,279)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg1(REG,280)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo(STALLFIFO,58)
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V1;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_reg1_q;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_data = bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V8;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V15;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid_bitsignaltemp = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid[0];
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_bitsignaltemp = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall[0];
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid[0] = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall[0] = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty[0] = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty[0] = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(49),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo (
        .i_valid(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .o_valid(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data),
        .o_empty(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg0(REG,288)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg1(REG,287)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg0(REG,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg1(REG,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr(BLACKBOX,7)@45
    // in in_i_stall@20000000
    // out out_lm10_SmithWatermanKernel_avm_address@20000000
    // out out_lm10_SmithWatermanKernel_avm_burstcount@20000000
    // out out_lm10_SmithWatermanKernel_avm_byteenable@20000000
    // out out_lm10_SmithWatermanKernel_avm_enable@20000000
    // out out_lm10_SmithWatermanKernel_avm_read@20000000
    // out out_lm10_SmithWatermanKernel_avm_write@20000000
    // out out_lm10_SmithWatermanKernel_avm_writedata@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    SmithWatermanKernel_i_llvm_fpga_mem_lm100000termankernel_361_0gr thei_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V20),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V13),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .in_i_stall(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V6),
        .in_lm10_SmithWatermanKernel_avm_readdata(in_lm10_SmithWatermanKernel_avm_readdata),
        .in_lm10_SmithWatermanKernel_avm_readdatavalid(in_lm10_SmithWatermanKernel_avm_readdatavalid),
        .in_lm10_SmithWatermanKernel_avm_waitrequest(in_lm10_SmithWatermanKernel_avm_waitrequest),
        .in_lm10_SmithWatermanKernel_avm_writeack(in_lm10_SmithWatermanKernel_avm_writeack),
        .out_lm10_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_address),
        .out_lm10_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_burstcount),
        .out_lm10_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_byteenable),
        .out_lm10_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_enable),
        .out_lm10_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_read),
        .out_lm10_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_write),
        .out_lm10_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg0(REG,180)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg1(REG,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg0(REG,192)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg1(REG,191)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg0(REG,202)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg1(REG,201)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg0(REG,212)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg1(REG,211)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg0(REG,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg1(REG,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg0(REG,286)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg1(REG,285)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg0(REG,182)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg1(REG,181)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg0(REG,284)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg1(REG,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo(BITJOIN,87)
    assign bubble_join_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_q = redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_data_reg1_q;

    // bubble_select_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo(BITSELECT,88)
    assign bubble_select_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_q[0:0]);

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg0(REG,194)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg1(REG,193)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr(BITJOIN,64)
    assign bubble_join_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_q = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr(BITSELECT,65)
    assign bubble_select_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_q[31:0]);

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg0(REG,184)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg1(REG,183)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr(BITJOIN,61)
    assign bubble_join_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_q = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr(BITSELECT,62)
    assign bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_q[31:0]);

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg0(REG,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg1(REG,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_q = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_q[31:0]);

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg0(REG,214)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg1(REG,213)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_q = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_q[7:0]);

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg0(REG,204)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg0_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg1(REG,203)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg1_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_q = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_readdata_reg1_q;

    // bubble_select_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_q[7:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg0(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg1(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg2(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg3(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg4(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg5(REG,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg6(REG,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg5_q);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg0(REG,289)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_backStall);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg1(REG,290)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo(STALLFIFO,59)
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_reg1_q;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_data = bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_h;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid_bitsignaltemp = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid[0];
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_bitsignaltemp = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall[0];
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid[0] = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall[0] = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty[0] = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty[0] = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(82),
        .WIDTH(64),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo (
        .i_valid(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_valid_bitsignaltemp),
        .i_stall(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_h),
        .o_valid(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_bitsignaltemp),
        .o_stall(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall_bitsignaltemp),
        .o_data(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data),
        .o_empty(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg0(REG,298)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg1(REG,297)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg0(REG,272)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg1(REG,271)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg0(REG,296)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg1(REG,295)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg0(REG,274)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg1(REG,273)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg0(REG,278)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg0_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg1(REG,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg1_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x(BITJOIN,84)
    assign bubble_join_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_q = i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl_reg1_q;

    // bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x(BITSELECT,85)
    assign bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_q[31:0]);

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg0(REG,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg1(REG,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg2(REG,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg3(REG,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg4(REG,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg5(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg6(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg0(REG,230)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg1(REG,229)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg0(REG,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg1(REG,231)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg0(REG,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg1(REG,233)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12(STALLENABLE,162)
    assign merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_backStall = in_stall_in;
    assign merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V0 = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V1 = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty_reg1_q;
    assign merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V2 = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty_reg1_q;

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg0(REG,227)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_backStall);
        end
    end

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg1(REG,228)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg0_q);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg0(REG,294)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg1(REG,293)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo(BITJOIN,90)
    assign bubble_join_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_q = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_data_reg1_q;

    // bubble_select_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo(BITSELECT,91)
    assign bubble_select_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_q[63:0]);

    // i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12(BLACKBOX,12)@109
    // in in_i_stall@20000000
    // out out_lsu_unnamed_SmithWatermanKernel1_o_active@20000000
    // out out_o_almost_empty@140
    // out out_o_empty@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write@20000000
    // out out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata@20000000
    SmithWatermanKernel_i_llvm_fpga_mem_unna0000termankernel_438_0gr thei_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V1),
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_b),
        .in_i_predicate(GND_q),
        .in_i_stall(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0_sync_valid_reg6_q),
        .in_i_writedata(bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_b),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdata),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_readdatavalid),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_waitrequest),
        .in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack(in_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writeack),
        .out_lsu_unnamed_SmithWatermanKernel1_o_active(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_lsu_unnamed_SmithWatermanKernel1_o_active),
        .out_o_almost_empty(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_empty),
        .out_o_stall(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_valid),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write),
        .out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg0(REG,292)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg0_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid);
        end
    end

    // redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg1(REG,291)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg1_q <= $unsigned(redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_valid_reg0_q);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg0(REG,276)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg1(REG,275)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x(STALLENABLE,161)
    // Sync
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_temp_back_stall = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_fast_read = ~ ((i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out_reg1_q | redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_slow_read = ~ ((i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out_reg1_q | redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_backStall = ~ (merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_forced_read);
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_no_space_for_result = merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V0 = merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_forced_read;
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg0(REG,269)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg1(REG,270)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x(BLACKBOX,51)@76
    // in in_i_stall@20000000
    // out out_almost_empty_out@109
    // out out_empty_out@109
    // out out_o_stall@20000000
    // out out_o_valid@109
    // out out_c1_exit_0_tpl@109
    // out out_c1_exit_1_tpl@109
    SmithWatermanKernel_i_sfc_s_c1_in_entry_0000watermankernel_51_10 thei_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V1),
        .in_i_stall(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0_sync_valid_reg6_q),
        .in_c1_eni6_0_tpl(GND_q),
        .in_c1_eni6_1_tpl(bubble_select_i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_b),
        .in_c1_eni6_2_tpl(bubble_select_i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_b),
        .in_c1_eni6_3_tpl(bubble_select_i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_b),
        .in_c1_eni6_4_tpl(bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_b),
        .in_c1_eni6_5_tpl(bubble_select_i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_b),
        .in_c1_eni6_6_tpl(bubble_select_redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_b),
        .out_almost_empty_out(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg0(REG,196)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg1(REG,195)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg0(REG,206)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg1(REG,205)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg0(REG,216)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg1(REG,215)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg0(REG,226)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg1(REG,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg0(REG,282)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid);
        end
    end

    // redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg1(REG,281)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg0(REG,186)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg0_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid);
        end
    end

    // i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg1(REG,185)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg1_q <= $unsigned(i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr(STALLENABLE,160)
    // Sync
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_temp_back_stall = i_sfc_s_c1_in_entry_smithwatermankernels_c1_enter_smithwatermankernel_51_10_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_fast_read = ~ ((i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_almost_empty_reg1_q | redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_almost_empty_reg1_q | i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty_reg1_q | i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_almost_empty_reg1_q | i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_almost_empty_reg1_q | i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_almost_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_slow_read = ~ ((i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_empty_reg1_q | redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_empty_reg1_q | i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty_reg1_q | i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_empty_reg1_q | i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_empty_reg1_q | i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_empty_reg1_q));
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall = ~ (merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_forced_read);
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_no_space_for_result = merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_temp_back_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V0 = merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_forced_read;
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg0(REG,217)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_backStall);
        end
    end

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg1(REG,218)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg1_q <= $unsigned(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_acl_global_id_1);
        end
    end

    // stall_entry_o5_reg1(REG,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_acl_global_id_0);
        end
    end

    // stall_entry_o4_reg1(REG,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,77)
    assign bubble_join_stall_entry_q = {stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,78)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg0(REG,247)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg1(REG,248)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,237)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,158)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x(BLACKBOX,50)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@45
    // out out_empty_out@45
    // out out_o_stall@20000000
    // out out_o_valid@45
    // out out_c0_exit_0_tpl@45
    // out out_c0_exit_1_tpl@45
    // out out_c0_exit_2_tpl@45
    // out out_c0_exit_3_tpl@45
    // out out_c0_exit_4_tpl@45
    // out out_c0_exit_5_tpl@45
    // out out_c0_exit_6_tpl@45
    // out out_c0_exit_7_tpl@45
    SmithWatermanKernel_i_sfc_s_c0_in_entry_0000atermankernel_51_2gr thei_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_arg_score_acc(in_arg_score_acc),
        .in_arg_seq_a_acc(in_arg_seq_a_acc),
        .in_arg_seq_b_acc(in_arg_seq_b_acc),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_arg_score_acc2_0_tpl(in_arg_score_acc2_0_tpl),
        .in_arg_score_acc2_1_tpl(in_arg_score_acc2_1_tpl),
        .in_arg_score_acc4_0_tpl(in_arg_score_acc4_0_tpl),
        .in_arg_score_acc4_1_tpl(in_arg_score_acc4_1_tpl),
        .in_arg_seq_a_acc9_0_tpl(in_arg_seq_a_acc9_0_tpl),
        .in_arg_seq_b_acc14_0_tpl(in_arg_seq_b_acc14_0_tpl),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni2_2_tpl(bubble_select_stall_entry_b),
        .out_almost_empty_out(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl),
        .out_c0_exit_7_tpl(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg0(REG,268)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg1(REG,267)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg0(REG,266)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg1(REG,265)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg0(REG,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg1(REG,263)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg0(REG,262)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg1(REG,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg0(REG,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg1(REG,259)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg0(REG,258)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg1(REG,257)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg0(REG,256)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg1(REG,255)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x(BITJOIN,81)
    assign bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q = {i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_6_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_5_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_4_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_3_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_2_tpl_reg1_q, i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x(BITSELECT,82)
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[320:257]);
    assign bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_q[384:321]);

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg0(REG,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg1(REG,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg0(REG,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg1(REG,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg0(REG,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg1(REG,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x(STALLENABLE,159)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_temp_back_stall = redist1_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_7_tpl_64_fifo_o_stall | redist0_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_c0_exit_1_tpl_31_fifo_o_stall | i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_stall | i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_o_stall | i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_o_stall | i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_o_stall | i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0 = i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7 = i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14 = i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V8 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V15 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V2 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V9 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V16 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V10 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V17 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V4 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V11 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V18 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V12 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V19 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V6 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V13 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V7;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V20 = merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V14;

    // i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr(BLACKBOX,11)@45
    // in in_i_stall@20000000
    // out out_lm_SmithWatermanKernel_avm_address@20000000
    // out out_lm_SmithWatermanKernel_avm_burstcount@20000000
    // out out_lm_SmithWatermanKernel_avm_byteenable@20000000
    // out out_lm_SmithWatermanKernel_avm_enable@20000000
    // out out_lm_SmithWatermanKernel_avm_read@20000000
    // out out_lm_SmithWatermanKernel_avm_write@20000000
    // out out_lm_SmithWatermanKernel_avm_writedata@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_readdata@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    SmithWatermanKernel_i_llvm_fpga_mem_lm_s0000termankernel_319_0gr thei_llvm_fpga_mem_lm_smithwatermankernel_51_4gr (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V16),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V9),
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_b),
        .in_i_stall(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_entry_smithwatermankernels_c0_enter_smithwatermankernel_51_2gr_aunroll_x_V2),
        .in_lm_SmithWatermanKernel_avm_readdata(in_lm_SmithWatermanKernel_avm_readdata),
        .in_lm_SmithWatermanKernel_avm_readdatavalid(in_lm_SmithWatermanKernel_avm_readdatavalid),
        .in_lm_SmithWatermanKernel_avm_waitrequest(in_lm_SmithWatermanKernel_avm_waitrequest),
        .in_lm_SmithWatermanKernel_avm_writeack(in_lm_SmithWatermanKernel_avm_writeack),
        .out_lm_SmithWatermanKernel_avm_address(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_address),
        .out_lm_SmithWatermanKernel_avm_burstcount(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_burstcount),
        .out_lm_SmithWatermanKernel_avm_byteenable(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_byteenable),
        .out_lm_SmithWatermanKernel_avm_enable(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_enable),
        .out_lm_SmithWatermanKernel_avm_read(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_read),
        .out_lm_SmithWatermanKernel_avm_write(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_write),
        .out_lm_SmithWatermanKernel_avm_writedata(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_writedata),
        .out_o_almost_empty(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_empty),
        .out_o_readdata(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_address;
    assign out_lm_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_enable;
    assign out_lm_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_read;
    assign out_lm_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_write;
    assign out_lm_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_writedata;
    assign out_lm_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_byteenable;
    assign out_lm_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_lm_smithwatermankernel_51_4gr_out_lm_SmithWatermanKernel_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out_45(GPOUT,36)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // sync_out_46(GPOUT,37)@140
    assign out_almost_empty_out = merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V2;
    assign out_empty_out = merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V1;
    assign out_valid_out = merged_in_SE_out_i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_V0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,40)
    assign out_lm6_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_address;
    assign out_lm6_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_enable;
    assign out_lm6_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_read;
    assign out_lm6_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_write;
    assign out_lm6_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_writedata;
    assign out_lm6_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_byteenable;
    assign out_lm6_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_lm6_smithwatermankernel_51_5gr_out_lm6_SmithWatermanKernel_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,42)
    assign out_lm8_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_address;
    assign out_lm8_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_enable;
    assign out_lm8_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_read;
    assign out_lm8_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_write;
    assign out_lm8_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_writedata;
    assign out_lm8_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_byteenable;
    assign out_lm8_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_lm8_smithwatermankernel_51_6gr_out_lm8_SmithWatermanKernel_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,44)
    assign out_lm10_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_address;
    assign out_lm10_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_enable;
    assign out_lm10_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_read;
    assign out_lm10_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_write;
    assign out_lm10_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_writedata;
    assign out_lm10_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_byteenable;
    assign out_lm10_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_lm10_smithwatermankernel_51_7gr_out_lm10_SmithWatermanKernel_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,46)
    assign out_lm12_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_address;
    assign out_lm12_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_enable;
    assign out_lm12_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_read;
    assign out_lm12_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_write;
    assign out_lm12_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_writedata;
    assign out_lm12_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_byteenable;
    assign out_lm12_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_lm12_smithwatermankernel_51_8gr_out_lm12_SmithWatermanKernel_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,48)
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_address;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_enable;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_read;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_write;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_writedata;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_byteenable;
    assign out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_unnamed_SmithWatermanKernel1_SmithWatermanKernel_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,49)
    assign out_lsu_unnamed_SmithWatermanKernel1_o_active = i_llvm_fpga_mem_unnamed_smithwatermankernel1_smithwatermankernel_51_12_out_lsu_unnamed_SmithWatermanKernel1_o_active;

    // rst_sync(RESETSYNC,299)
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
