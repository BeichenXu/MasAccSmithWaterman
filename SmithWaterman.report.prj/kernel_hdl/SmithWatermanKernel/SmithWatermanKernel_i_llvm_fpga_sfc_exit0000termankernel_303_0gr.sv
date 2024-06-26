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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_0gr
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_i_llvm_fpga_sfc_exit0000termankernel_303_0gr (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [63:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [63:0] out_data_out_5_tpl,
    output wire [63:0] out_data_out_6_tpl,
    output wire [63:0] out_data_out_7_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [63:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [63:0] in_data_in_5_tpl,
    input wire [63:0] in_data_in_6_tpl,
    input wire [63:0] in_data_in_7_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_mask_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_full_detector_out_full;
    wire [0:0] stall_out_or_q;
    reg [0:0] valid_before_fifo_q;
    reg [0:0] before_fifo_0_x_q;
    reg [0:0] before_fifo_1_x_q;
    reg [63:0] before_fifo_2_x_q;
    reg [63:0] before_fifo_3_x_q;
    reg [63:0] before_fifo_4_x_q;
    reg [63:0] before_fifo_5_x_q;
    reg [63:0] before_fifo_6_x_q;
    reg [63:0] before_fifo_7_x_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_empty;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_4_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_7_tpl;


    // before_fifo_7_x(REG,17)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_7_x_q <= in_data_in_7_tpl;
        end
    end

    // before_fifo_6_x(REG,16)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_6_x_q <= in_data_in_6_tpl;
        end
    end

    // before_fifo_5_x(REG,15)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_5_x_q <= in_data_in_5_tpl;
        end
    end

    // before_fifo_4_x(REG,14)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_4_x_q <= in_data_in_4_tpl;
        end
    end

    // before_fifo_3_x(REG,13)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_3_x_q <= in_data_in_3_tpl;
        end
    end

    // before_fifo_2_x(REG,12)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_2_x_q <= in_data_in_2_tpl;
        end
    end

    // before_fifo_1_x(REG,11)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_1_x_q <= in_data_in_1_tpl;
        end
    end

    // before_fifo_0_x(REG,10)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_0_x_q <= in_data_in_0_tpl;
        end
    end

    // valid_before_fifo(REG,9)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_before_fifo_q <= in_valid_in;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x(BLACKBOX,18)@19999970
    // in in_i_stall@20000000
    // out out_o_almost_empty@20000000
    // out out_o_empty@20000000
    // out out_o_stall@20000000
    // out out_o_valid@20000000
    // out out_o_data_0_tpl@20000000
    // out out_o_data_1_tpl@20000000
    // out out_o_data_2_tpl@20000000
    // out out_o_data_3_tpl@20000000
    // out out_o_data_4_tpl@20000000
    // out out_o_data_5_tpl@20000000
    // out out_o_data_6_tpl@20000000
    // out out_o_data_7_tpl@20000000
    SmithWatermanKernel_i_llvm_fpga_sfc_exit0000el_303_1gr_data_fifo thei_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(valid_before_fifo_q),
        .in_i_data_0_tpl(before_fifo_0_x_q),
        .in_i_data_1_tpl(before_fifo_1_x_q),
        .in_i_data_2_tpl(before_fifo_2_x_q),
        .in_i_data_3_tpl(before_fifo_3_x_q),
        .in_i_data_4_tpl(before_fifo_4_x_q),
        .in_i_data_5_tpl(before_fifo_5_x_q),
        .in_i_data_6_tpl(before_fifo_6_x_q),
        .in_i_data_7_tpl(before_fifo_7_x_q),
        .out_o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_empty),
        .out_o_stall(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_full_detector(BLACKBOX,5)@20000000
    SmithWatermanKernel_i_llvm_fpga_sfc_exit000060_1gr_full_detector thei_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_full_detector (
        .in_dec_pipelined_thread(GND_q),
        .in_decrement(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_valid),
        .in_inc_pipelined_thread(GND_q),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_full_detector_out_full),
        .out_throttle(),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_out_or(LOGICAL,7)
    assign stall_out_or_q = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_60_1gr_full_detector_out_full | i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_stall;

    // sync_out_22(GPOUT,8)@20000000
    assign out_stall_entry = stall_out_or_q;

    // sync_out_23_aunroll_x(GPOUT,19)@45
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_almost_empty;
    assign out_data_out_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_0_tpl;
    assign out_data_out_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_1_tpl;
    assign out_data_out_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_2_tpl;
    assign out_data_out_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_3_tpl;
    assign out_data_out_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_4_tpl;
    assign out_data_out_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_5_tpl;
    assign out_data_out_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_6_tpl;
    assign out_data_out_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_data_7_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_empty;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_entry_smithwatermankernels_c0_exit_smithwatermankernel_303_1gr_data_fifo_aunroll_x_out_o_valid;

endmodule
