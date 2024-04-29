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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_i_llvm_fpga_sfc_exit0000el_303_1gr_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [63:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_608_11_in;
    wire [0:0] adapt_scalar_trunc_608_11_q;
    wire [0:0] adapt_scalar_trunc_608_9_in;
    wire [0:0] adapt_scalar_trunc_608_9_q;
    wire [6:0] c_i7_0_608_4gr_q;
    wire [399:0] dsdk_ip_adapt_bitjoin_608_1_q;
    wire [7:0] element_extension_608_3_q;
    wire [7:0] element_extension_608_5_q;
    wire [399:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty_bitsignaltemp;
    wire [399:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_608_10_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_12_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_14_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_16_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_18_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_20_b;
    wire [63:0] ip_dsdk_adapt_bitselect_608_22_b;
    wire [0:0] ip_dsdk_adapt_bitselect_608_8_b;


    // c_i7_0_608_4gr(CONSTANT,4)
    assign c_i7_0_608_4gr_q = $unsigned(7'b0000000);

    // element_extension_608_5(BITJOIN,8)
    assign element_extension_608_5_q = {c_i7_0_608_4gr_q, in_i_data_1_tpl};

    // element_extension_608_3(BITJOIN,7)
    assign element_extension_608_3_q = {c_i7_0_608_4gr_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin_608_1(BITJOIN,6)
    assign dsdk_ip_adapt_bitjoin_608_1_q = {in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, element_extension_608_5_q, element_extension_608_3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr(EXTIFACE,9)
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_data = dsdk_ip_adapt_bitjoin_608_1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(7),
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .STALL_IN_EARLINESS(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(400)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr (
        .i_data(dsdk_ip_adapt_bitjoin_608_1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_20(GPOUT,25)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_stall;

    // ip_dsdk_adapt_bitselect_608_22(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect_608_22_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[399:336];

    // ip_dsdk_adapt_bitselect_608_20(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect_608_20_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[335:272];

    // ip_dsdk_adapt_bitselect_608_18(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect_608_18_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[271:208];

    // ip_dsdk_adapt_bitselect_608_16(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect_608_16_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[207:144];

    // ip_dsdk_adapt_bitselect_608_14(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect_608_14_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[143:80];

    // ip_dsdk_adapt_bitselect_608_12(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect_608_12_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[79:16];

    // ip_dsdk_adapt_bitselect_608_10(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect_608_10_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[8:8];

    // adapt_scalar_trunc_608_11(ROUND,2)
    assign adapt_scalar_trunc_608_11_in = ip_dsdk_adapt_bitselect_608_10_b;
    assign adapt_scalar_trunc_608_11_q = adapt_scalar_trunc_608_11_in[0:0];

    // ip_dsdk_adapt_bitselect_608_8(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect_608_8_b = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_data[0:0];

    // adapt_scalar_trunc_608_9(ROUND,3)
    assign adapt_scalar_trunc_608_9_in = ip_dsdk_adapt_bitselect_608_8_b;
    assign adapt_scalar_trunc_608_9_q = adapt_scalar_trunc_608_9_in[0:0];

    // sync_out_21_aunroll_x(GPOUT,26)@20000000
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc_608_9_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc_608_11_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect_608_12_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect_608_14_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect_608_16_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect_608_18_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect_608_20_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect_608_22_b;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_608_0gr_o_valid;

endmodule
