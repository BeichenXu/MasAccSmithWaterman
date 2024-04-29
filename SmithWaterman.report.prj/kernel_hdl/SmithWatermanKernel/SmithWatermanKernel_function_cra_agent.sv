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

// SystemVerilog created from SmithWatermanKernel_function_cra_agent
// Created for function/kernel SmithWatermanKernel
// SystemVerilog created on Sat Apr 27 03:14:19 2024


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SmithWatermanKernel_function_cra_agent (
    input wire [0:0] acl_counter_full,
    input wire [31:0] acl_counter_size,
    input wire [4:0] avs_cra_address,
    input wire [7:0] avs_cra_byteenable,
    input wire [0:0] avs_cra_enable,
    input wire [0:0] avs_cra_read,
    input wire [0:0] avs_cra_write,
    input wire [63:0] avs_cra_writedata,
    input wire [0:0] has_a_lsu_active,
    input wire [0:0] has_a_write_pending,
    input wire [0:0] kernel_done,
    input wire [0:0] valid_in,
    output wire [0:0] acl_counter_reset,
    output wire [63:0] avs_cra_readdata,
    output wire [0:0] avs_cra_readdatavalid,
    output wire [0:0] cra_irq,
    output wire [63:0] global_offset_0,
    output wire [63:0] global_offset_1,
    output wire [63:0] global_offset_2,
    output wire [63:0] global_size_0,
    output wire [63:0] global_size_1,
    output wire [63:0] global_size_2,
    output wire [959:0] kernel_arguments,
    output wire [0:0] kernel_start,
    output wire [31:0] local_size_0,
    output wire [31:0] local_size_1,
    output wire [31:0] local_size_2,
    output wire [31:0] num_groups_0,
    output wire [31:0] num_groups_1,
    output wire [31:0] num_groups_2,
    output wire [31:0] status,
    output wire [31:0] work_dim,
    output wire [31:0] workgroup_size,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] GlobalOffset0_address_ref_q;
    wire [0:0] GlobalOffset0_can_write_q;
    wire [31:0] GlobalOffset0_mask0_q;
    wire [31:0] GlobalOffset0_mask1_q;
    wire [31:0] GlobalOffset0_new_data_q;
    wire [31:0] GlobalOffset0_upper_mask0_q;
    wire [31:0] GlobalOffset0_upper_mask1_q;
    wire [31:0] GlobalOffset0_upper_new_data_q;
    wire [4:0] GlobalOffset1_address_ref_q;
    wire [0:0] GlobalOffset1_can_write_q;
    wire [31:0] GlobalOffset1_mask0_q;
    wire [31:0] GlobalOffset1_new_data_q;
    wire [31:0] GlobalOffset1_upper_mask0_q;
    wire [31:0] GlobalOffset1_upper_new_data_q;
    wire [4:0] GlobalOffset2_address_ref_q;
    wire [0:0] GlobalOffset2_can_write_q;
    wire [31:0] GlobalOffset2_mask0_q;
    wire [31:0] GlobalOffset2_new_data_q;
    wire [31:0] GlobalOffset2_upper_mask0_q;
    wire [31:0] GlobalOffset2_upper_new_data_q;
    wire [4:0] GlobalSize0_address_ref_q;
    wire [0:0] GlobalSize0_can_write_q;
    wire [31:0] GlobalSize0_mask0_q;
    wire [31:0] GlobalSize0_new_data_q;
    wire [31:0] GlobalSize1_mask0_q;
    wire [31:0] GlobalSize1_new_data_q;
    wire [4:0] GlobalSize2_address_ref_q;
    wire [0:0] GlobalSize2_can_write_q;
    wire [31:0] GlobalSize2_mask0_q;
    wire [31:0] GlobalSize2_new_data_q;
    wire [4:0] LocalSize0_address_ref_q;
    wire [0:0] LocalSize0_can_write_q;
    wire [31:0] LocalSize0_mask0_q;
    wire [31:0] LocalSize0_new_data_q;
    wire [31:0] LocalSize1_mask0_q;
    wire [31:0] LocalSize1_new_data_q;
    wire [4:0] LocalSize2_address_ref_q;
    wire [0:0] LocalSize2_can_write_q;
    wire [31:0] LocalSize2_mask0_q;
    wire [31:0] LocalSize2_new_data_q;
    wire [0:0] NO_NAME_q;
    wire [31:0] NumGroups0_mask0_q;
    wire [31:0] NumGroups0_new_data_q;
    wire [4:0] NumGroups1_address_ref_q;
    wire [0:0] NumGroups1_can_write_q;
    wire [31:0] NumGroups1_mask0_q;
    wire [31:0] NumGroups1_new_data_q;
    wire [31:0] NumGroups2_mask0_q;
    wire [31:0] NumGroups2_new_data_q;
    wire [4:0] Start_address_ref_q;
    wire [0:0] Start_can_write_q;
    wire [4:0] Status_address_ref_q;
    wire [0:0] Status_can_write_q;
    wire [4:0] WorkgroupDimension_address_ref_q;
    wire [0:0] WorkgroupDimension_can_write_q;
    wire [31:0] WorkgroupDimension_mask0_q;
    wire [31:0] WorkgroupDimension_new_data_q;
    wire [31:0] WorkgroupSize_mask0_q;
    wire [31:0] WorkgroupSize_new_data_q;
    wire [31:0] mask0_x_q;
    wire [31:0] new_data_x_q;
    wire [1:0] adder_counter_width_b;
    wire [0:0] address_cmp_0_q;
    wire [63:0] arg_bit_join_q;
    reg [31:0] arguments_0_q;
    reg [31:0] arguments_0_buffered_q;
    reg [31:0] arguments_1_q;
    reg [31:0] arguments_10_q;
    reg [31:0] arguments_10_buffered_q;
    reg [31:0] arguments_11_q;
    reg [31:0] arguments_11_buffered_q;
    reg [31:0] arguments_12_q;
    reg [31:0] arguments_12_buffered_q;
    reg [31:0] arguments_13_q;
    reg [31:0] arguments_13_buffered_q;
    reg [31:0] arguments_14_q;
    reg [31:0] arguments_14_buffered_q;
    reg [31:0] arguments_15_q;
    reg [31:0] arguments_15_buffered_q;
    reg [31:0] arguments_16_q;
    reg [31:0] arguments_16_buffered_q;
    reg [31:0] arguments_17_q;
    reg [31:0] arguments_17_buffered_q;
    reg [31:0] arguments_18_q;
    reg [31:0] arguments_18_buffered_q;
    reg [31:0] arguments_19_q;
    reg [31:0] arguments_19_buffered_q;
    reg [31:0] arguments_1_buffered_q;
    reg [31:0] arguments_2_q;
    reg [31:0] arguments_20_q;
    reg [31:0] arguments_20_buffered_q;
    reg [31:0] arguments_21_q;
    reg [31:0] arguments_21_buffered_q;
    reg [31:0] arguments_22_q;
    reg [31:0] arguments_22_buffered_q;
    reg [31:0] arguments_23_q;
    reg [31:0] arguments_23_buffered_q;
    reg [31:0] arguments_24_q;
    reg [31:0] arguments_24_buffered_q;
    reg [31:0] arguments_25_q;
    reg [31:0] arguments_25_buffered_q;
    reg [31:0] arguments_26_q;
    reg [31:0] arguments_26_buffered_q;
    reg [31:0] arguments_27_q;
    reg [31:0] arguments_27_buffered_q;
    reg [31:0] arguments_28_q;
    reg [31:0] arguments_28_buffered_q;
    reg [31:0] arguments_29_q;
    reg [31:0] arguments_29_buffered_q;
    reg [31:0] arguments_2_buffered_q;
    reg [31:0] arguments_3_q;
    reg [31:0] arguments_3_buffered_q;
    reg [31:0] arguments_4_q;
    reg [31:0] arguments_4_buffered_q;
    reg [31:0] arguments_5_q;
    reg [31:0] arguments_5_buffered_q;
    reg [31:0] arguments_6_q;
    reg [31:0] arguments_6_buffered_q;
    reg [31:0] arguments_7_q;
    reg [31:0] arguments_7_buffered_q;
    reg [31:0] arguments_8_q;
    reg [31:0] arguments_8_buffered_q;
    reg [31:0] arguments_9_q;
    reg [31:0] arguments_9_buffered_q;
    wire [63:0] bit_enable_q;
    wire [63:0] bit_enable_bar_q;
    wire [31:0] bit_enable_bottom_b;
    wire [31:0] bit_enable_bottom_bar_b;
    wire [31:0] bit_enable_top_b;
    wire [31:0] bit_enable_top_bar_b;
    reg [0:0] buffered_start_NO_SHIFT_REG_q;
    wire [31:0] bus_high_b;
    wire [31:0] bus_low_b;
    wire [0:0] clear_finish_counter_pre_comp_q;
    reg [0:0] clear_finish_counter_reg_q;
    wire [0:0] clear_on_read_mux_s;
    reg [1:0] clear_on_read_mux_q;
    wire [0:0] clear_or_finish_s;
    reg [1:0] clear_or_finish_q;
    wire [1:0] clear_to_zero_q;
    wire [0:0] compute_busy_q;
    wire [0:0] compute_finished_q;
    wire [0:0] compute_running_q;
    wire [0:0] compute_running_not_done_q;
    wire [30:0] const_0_31_q;
    wire [31:0] const_32_zero_q;
    wire [61:0] const_finish_counter_padding_q;
    reg [63:0] cra_output_readdata_reg_q;
    reg [0:0] cra_output_readdatavalid_reg_q;
    wire [0:0] done_or_printf_or_profile_irq_signal_q;
    reg [1:0] finish_counter_NO_SHIFT_REG_q;
    wire [4:0] finish_counter_addr_q;
    wire [1:0] finish_during_clear_q;
    wire [0:0] finish_masked_by_running_q;
    wire [0:0] finish_pulse_q;
    wire [0:0] finish_pulse_while_running_q;
    wire [3:0] finished_exists_a;
    wire [3:0] finished_exists_b;
    logic [3:0] finished_exists_o;
    wire [0:0] finished_exists_c;
    wire [63:0] global_offset_0_bit_join_q;
    wire [63:0] global_offset_1_bit_join_q;
    wire [63:0] global_offset_2_bit_join_q;
    reg [31:0] global_offset_reg_lower_0_q;
    reg [31:0] global_offset_reg_lower_0_buffered_q;
    reg [31:0] global_offset_reg_lower_1_q;
    reg [31:0] global_offset_reg_lower_1_buffered_q;
    reg [31:0] global_offset_reg_lower_2_q;
    reg [31:0] global_offset_reg_lower_2_buffered_q;
    reg [31:0] global_offset_reg_upper_0_q;
    reg [31:0] global_offset_reg_upper_0_buffered_q;
    reg [31:0] global_offset_reg_upper_1_q;
    reg [31:0] global_offset_reg_upper_1_buffered_q;
    reg [31:0] global_offset_reg_upper_2_q;
    reg [31:0] global_offset_reg_upper_2_buffered_q;
    wire [63:0] global_size_0_bit_join_q;
    wire [63:0] global_size_1_bit_join_q;
    wire [63:0] global_size_2_bit_join_q;
    reg [31:0] global_size_reg_lower_0_q;
    reg [31:0] global_size_reg_lower_0_buffered_q;
    reg [31:0] global_size_reg_lower_1_q;
    reg [31:0] global_size_reg_lower_1_buffered_q;
    reg [31:0] global_size_reg_lower_2_q;
    reg [31:0] global_size_reg_lower_2_buffered_q;
    reg [31:0] global_size_reg_upper_0_q;
    wire [2:0] incrementor_a;
    wire [2:0] incrementor_b;
    logic [2:0] incrementor_o;
    wire [2:0] incrementor_q;
    wire [0:0] is_finish_counter_addr_q;
    wire [1:0] join_address_cmp_q;
    wire [0:0] keep_buffered_start_q;
    wire [0:0] keep_buffered_start_or_new_start_q;
    wire [959:0] kernel_arg_bit_join_q;
    reg [0:0] last_finish_state_q;
    reg [31:0] local_size_reg_0_q;
    reg [31:0] local_size_reg_0_buffered_q;
    reg [31:0] local_size_reg_1_q;
    reg [31:0] local_size_reg_1_buffered_q;
    reg [31:0] local_size_reg_2_q;
    reg [31:0] local_size_reg_2_buffered_q;
    wire [31:0] mask0_q;
    wire [31:0] new_data_q;
    wire [0:0] next_start_reg_value_q;
    wire [0:0] next_started_value_q;
    wire [0:0] not_finished_q;
    wire [0:0] not_last_finish_state_q;
    wire [0:0] not_running_bit_q;
    wire [0:0] not_start_q;
    wire [0:0] not_started_q;
    reg [31:0] num_groups_reg_0_q;
    reg [31:0] num_groups_reg_0_buffered_q;
    reg [31:0] num_groups_reg_1_q;
    reg [31:0] num_groups_reg_1_buffered_q;
    reg [31:0] num_groups_reg_2_q;
    reg [31:0] num_groups_reg_2_buffered_q;
    wire [63:0] padded_finish_counter_q;
    reg [959:0] pipe_reg0_kernel_arguments_q;
    reg [0:0] pipe_reg0_kernel_start_q;
    reg [959:0] pipe_reg1_kernel_arguments_q;
    reg [0:0] pipe_reg1_kernel_start_q;
    wire [0:0] printf_bit_b;
    wire [0:0] printf_bit_mux_s;
    reg [0:0] printf_bit_mux_q;
    wire [0:0] printf_counter_reset_mux_s;
    reg [0:0] printf_counter_reset_mux_q;
    wire [0:0] printf_reset_bit_b;
    wire [0:0] profile_irq_and_running_q;
    wire [63:0] readdata_bus_out_q;
    wire [1:0] readdata_lower_bits_mux_s;
    reg [31:0] readdata_lower_bits_mux_q;
    wire [0:0] readdata_output_mux_2_s;
    reg [63:0] readdata_output_mux_2_q;
    wire [1:0] readdata_upper_bits_mux_s;
    reg [31:0] readdata_upper_bits_mux_q;
    wire [0:0] running_bit_b;
    wire [0:0] select_0_b;
    wire [0:0] select_1_b;
    wire [0:0] select_2_b;
    wire [0:0] select_3_b;
    wire [0:0] select_4_b;
    wire [0:0] select_5_b;
    wire [0:0] select_6_b;
    wire [0:0] select_7_b;
    reg [0:0] start_NO_SHIFT_REG_q;
    wire [0:0] start_bit_b;
    wire [0:0] start_bit_computation_q;
    wire [0:0] start_buffered_and_kernel_idle_q;
    reg [0:0] start_from_buffered_start_NO_SHIFT_REG_q;
    wire [0:0] start_is_or_going_high_q;
    wire [0:0] start_or_start_buffered_q;
    wire [31:0] start_self_update_q;
    reg [31:0] start_status_reg_q;
    reg [0:0] started_NO_SHIFT_REG_q;
    reg [31:0] status_NO_SHIFT_REG_q;
    wire [0:0] status_done_bit_b;
    wire [31:0] status_from_cra_q;
    wire [14:0] status_low_b;
    wire [0:0] status_select_s;
    reg [31:0] status_select_q;
    wire [31:0] status_self_update_q;
    wire [4:0] unchanged_status_data_b;
    wire [15:0] version_number_q;
    wire [0:0] will_be_started_q;
    reg [31:0] work_dim_NO_SHIFT_REG_q;
    reg [31:0] work_dim_NO_SHIFT_REG_buffered_q;
    reg [31:0] workgroup_size_NO_SHIFT_REG_q;
    reg [31:0] workgroup_size_NO_SHIFT_REG_buffered_q;
    wire [0:0] write_selector_start_status_s;
    reg [31:0] write_selector_start_status_q;
    wire [31:0] dupName_0_mask0_x_q;
    wire [31:0] dupName_0_new_data_x_q;
    wire [127:0] dupName_0_arg_bit_join_x_q;
    wire [0:0] dupName_0_ctrl_profile_status_bit_x_b;
    wire [31:0] dupName_1_mask0_x_q;
    wire [31:0] dupName_1_new_data_x_q;
    wire [127:0] dupName_1_arg_bit_join_x_q;
    wire [31:0] dupName_2_mask0_x_q;
    wire [31:0] dupName_2_new_data_x_q;
    wire [127:0] dupName_2_arg_bit_join_x_q;
    wire [4:0] dupName_3_address_ref_x_q;
    wire [0:0] dupName_3_can_write_x_q;
    wire [31:0] dupName_3_mask0_x_q;
    wire [31:0] dupName_3_new_data_x_q;
    wire [63:0] dupName_3_arg_bit_join_x_q;
    wire [4:0] dupName_4_address_ref_x_q;
    wire [0:0] dupName_4_can_write_x_q;
    wire [31:0] dupName_4_mask0_x_q;
    wire [31:0] dupName_4_new_data_x_q;
    wire [63:0] dupName_4_arg_bit_join_x_q;
    wire [4:0] dupName_5_address_ref_x_q;
    wire [0:0] dupName_5_can_write_x_q;
    wire [31:0] dupName_5_mask0_x_q;
    wire [31:0] dupName_5_new_data_x_q;
    wire [63:0] dupName_5_arg_bit_join_x_q;
    wire [0:0] dupName_6_NO_NAME_x_q;
    wire [4:0] dupName_6_address_ref_x_q;
    wire [0:0] dupName_6_can_write_x_q;
    wire [31:0] dupName_6_mask0_x_q;
    wire [31:0] dupName_6_new_data_x_q;
    wire [63:0] dupName_6_arg_bit_join_x_q;
    wire [0:0] dupName_7_NO_NAME_x_q;
    wire [4:0] dupName_7_address_ref_x_q;
    wire [0:0] dupName_7_can_write_x_q;
    wire [31:0] dupName_7_mask0_x_q;
    wire [31:0] dupName_7_new_data_x_q;
    wire [63:0] dupName_7_arg_bit_join_x_q;
    wire [0:0] dupName_8_NO_NAME_x_q;
    wire [4:0] dupName_8_address_ref_x_q;
    wire [0:0] dupName_8_can_write_x_q;
    wire [31:0] dupName_8_mask0_x_q;
    wire [31:0] dupName_8_new_data_x_q;
    wire [63:0] dupName_8_arg_bit_join_x_q;
    wire [0:0] dupName_9_NO_NAME_x_q;
    wire [4:0] dupName_9_address_ref_x_q;
    wire [0:0] dupName_9_can_write_x_q;
    wire [31:0] dupName_9_mask0_x_q;
    wire [31:0] dupName_9_new_data_x_q;
    wire [63:0] dupName_9_arg_bit_join_x_q;
    wire [0:0] dupName_10_NO_NAME_x_q;
    wire [4:0] dupName_10_address_ref_x_q;
    wire [0:0] dupName_10_can_write_x_q;
    wire [31:0] dupName_10_mask0_x_q;
    wire [31:0] dupName_10_new_data_x_q;
    wire [63:0] dupName_10_arg_bit_join_x_q;
    wire [0:0] dupName_11_NO_NAME_x_q;
    wire [4:0] dupName_11_address_ref_x_q;
    wire [0:0] dupName_11_can_write_x_q;
    wire [31:0] dupName_11_mask0_x_q;
    wire [31:0] dupName_11_new_data_x_q;
    wire [0:0] dupName_12_NO_NAME_x_q;
    wire [4:0] dupName_12_address_ref_x_q;
    wire [0:0] dupName_12_can_write_x_q;
    wire [31:0] dupName_12_mask0_x_q;
    wire [31:0] dupName_12_new_data_x_q;
    wire [0:0] dupName_13_NO_NAME_x_q;
    wire [4:0] dupName_13_address_ref_x_q;
    wire [0:0] dupName_13_can_write_x_q;
    wire [31:0] dupName_13_mask0_x_q;
    wire [31:0] dupName_13_new_data_x_q;
    wire [0:0] dupName_14_NO_NAME_x_q;
    wire [4:0] dupName_14_address_ref_x_q;
    wire [0:0] dupName_14_can_write_x_q;
    wire [31:0] dupName_14_mask0_x_q;
    wire [31:0] dupName_14_new_data_x_q;
    wire [0:0] dupName_15_NO_NAME_x_q;
    wire [4:0] dupName_15_address_ref_x_q;
    wire [0:0] dupName_15_can_write_x_q;
    wire [31:0] dupName_15_mask0_x_q;
    wire [31:0] dupName_15_new_data_x_q;
    wire [0:0] dupName_16_NO_NAME_x_q;
    wire [4:0] dupName_16_address_ref_x_q;
    wire [0:0] dupName_16_can_write_x_q;
    wire [31:0] dupName_16_mask0_x_q;
    wire [31:0] dupName_16_new_data_x_q;
    wire [0:0] dupName_17_NO_NAME_x_q;
    wire [4:0] dupName_17_address_ref_x_q;
    wire [0:0] dupName_17_can_write_x_q;
    wire [31:0] dupName_17_mask0_x_q;
    wire [31:0] dupName_17_new_data_x_q;
    wire [0:0] dupName_18_NO_NAME_x_q;
    wire [31:0] dupName_18_mask0_x_q;
    wire [31:0] dupName_18_new_data_x_q;
    wire [0:0] dupName_19_NO_NAME_x_q;
    wire [31:0] dupName_19_mask0_x_q;
    wire [31:0] dupName_19_new_data_x_q;
    wire [0:0] dupName_20_NO_NAME_x_q;
    wire [31:0] dupName_20_mask0_x_q;
    wire [31:0] dupName_20_new_data_x_q;
    wire [0:0] dupName_21_NO_NAME_x_q;
    wire [31:0] dupName_21_mask0_x_q;
    wire [31:0] dupName_21_new_data_x_q;
    wire [0:0] dupName_22_NO_NAME_x_q;
    wire [31:0] dupName_22_mask0_x_q;
    wire [31:0] dupName_22_new_data_x_q;
    wire [0:0] dupName_23_NO_NAME_x_q;
    wire [31:0] dupName_23_mask0_x_q;
    wire [31:0] dupName_23_new_data_x_q;
    wire [0:0] dupName_24_NO_NAME_x_q;
    wire [31:0] dupName_24_mask0_x_q;
    wire [31:0] dupName_24_new_data_x_q;
    wire [0:0] dupName_25_NO_NAME_x_q;
    wire [31:0] dupName_25_mask0_x_q;
    wire [31:0] dupName_25_new_data_x_q;
    wire [0:0] dupName_26_NO_NAME_x_q;
    wire [31:0] dupName_26_mask0_x_q;
    wire [31:0] dupName_26_new_data_x_q;
    wire [0:0] dupName_27_NO_NAME_x_q;
    wire [31:0] dupName_27_mask0_x_q;
    wire [31:0] dupName_27_new_data_x_q;
    wire [0:0] dupName_28_NO_NAME_x_q;
    wire [31:0] dupName_28_mask0_x_q;
    wire [31:0] dupName_28_new_data_x_q;
    wire [0:0] dupName_29_NO_NAME_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // version_number(CONSTANT,279)
    assign version_number_q = $unsigned(16'b0000000000000101);

    // running_bit(BITSELECT,252)
    assign running_bit_b = status_NO_SHIFT_REG_q[15:15];

    // not_finished(LOGICAL,227)
    assign not_finished_q = ~ (kernel_done);

    // compute_running_not_done(LOGICAL,164)
    assign compute_running_not_done_q = not_finished_q & running_bit_b;

    // bus_low(BITSELECT,153)
    assign bus_low_b = avs_cra_writedata[31:0];

    // select_7(BITSELECT,260)
    assign select_7_b = avs_cra_byteenable[7:7];

    // select_6(BITSELECT,259)
    assign select_6_b = avs_cra_byteenable[6:6];

    // select_5(BITSELECT,258)
    assign select_5_b = avs_cra_byteenable[5:5];

    // select_4(BITSELECT,257)
    assign select_4_b = avs_cra_byteenable[4:4];

    // select_3(BITSELECT,256)
    assign select_3_b = avs_cra_byteenable[3:3];

    // select_2(BITSELECT,255)
    assign select_2_b = avs_cra_byteenable[2:2];

    // select_1(BITSELECT,254)
    assign select_1_b = avs_cra_byteenable[1:1];

    // select_0(BITSELECT,253)
    assign select_0_b = avs_cra_byteenable[0:0];

    // bit_enable(BITJOIN,145)
    assign bit_enable_q = {select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b};

    // bit_enable_bottom(BITSELECT,147)
    assign bit_enable_bottom_b = bit_enable_q[31:0];

    // GlobalOffset0_mask1(LOGICAL,5)
    assign GlobalOffset0_mask1_q = bit_enable_bottom_b & bus_low_b;

    // const_0_31(CONSTANT,166)
    assign const_0_31_q = $unsigned(31'b0000000000000000000000000000000);

    // not_start(LOGICAL,230)
    assign not_start_q = ~ (start_bit_b);

    // start_bit_computation(LOGICAL,263)
    assign start_bit_computation_q = not_start_q & start_bit_b;

    // start_self_update(BITJOIN,268)
    assign start_self_update_q = {const_0_31_q, start_bit_computation_q};

    // Start_address_ref(CONSTANT,64)
    assign Start_address_ref_q = $unsigned(5'b00001);

    // address_cmp_0(LOGICAL,82)
    assign address_cmp_0_q = $unsigned(avs_cra_address == Start_address_ref_q ? 1'b1 : 1'b0);

    // Start_can_write(LOGICAL,65)
    assign Start_can_write_q = address_cmp_0_q & avs_cra_write;

    // write_selector_start_status(MUX,285)
    assign write_selector_start_status_s = Start_can_write_q;
    always @(write_selector_start_status_s or start_self_update_q or GlobalOffset0_mask1_q)
    begin
        unique case (write_selector_start_status_s)
            1'b0 : write_selector_start_status_q = start_self_update_q;
            1'b1 : write_selector_start_status_q = GlobalOffset0_mask1_q;
            default : write_selector_start_status_q = 32'b0;
        endcase
    end

    // start_status_reg(REG,269)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_status_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            start_status_reg_q <= write_selector_start_status_q;
        end
    end

    // start_bit(BITSELECT,262)
    assign start_bit_b = start_status_reg_q[0:0];

    // start_or_start_buffered(LOGICAL,267)
    assign start_or_start_buffered_q = buffered_start_NO_SHIFT_REG_q | start_bit_b;

    // keep_buffered_start(LOGICAL,212)
    assign keep_buffered_start_q = start_or_start_buffered_q & running_bit_b;

    // keep_buffered_start_or_new_start(LOGICAL,213)
    assign keep_buffered_start_or_new_start_q = keep_buffered_start_q | start_bit_b;

    // buffered_start_NO_SHIFT_REG(REG,151)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            buffered_start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            buffered_start_NO_SHIFT_REG_q <= keep_buffered_start_or_new_start_q;
        end
    end

    // not_running_bit(LOGICAL,229)
    assign not_running_bit_q = ~ (running_bit_b);

    // start_buffered_and_kernel_idle(LOGICAL,264)
    assign start_buffered_and_kernel_idle_q = not_running_bit_q & buffered_start_NO_SHIFT_REG_q;

    // start_from_buffered_start_NO_SHIFT_REG(REG,265)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_from_buffered_start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            start_from_buffered_start_NO_SHIFT_REG_q <= start_buffered_and_kernel_idle_q;
        end
    end

    // compute_running(LOGICAL,163)
    assign compute_running_q = start_from_buffered_start_NO_SHIFT_REG_q | compute_running_not_done_q;

    // bit_enable_bar(LOGICAL,146)
    assign bit_enable_bar_q = ~ (bit_enable_q);

    // bit_enable_bottom_bar(BITSELECT,148)
    assign bit_enable_bottom_bar_b = bit_enable_bar_q[31:0];

    // mask0(LOGICAL,222)
    assign mask0_q = bit_enable_bottom_bar_b & status_NO_SHIFT_REG_q;

    // new_data(LOGICAL,224)
    assign new_data_q = mask0_q | GlobalOffset0_mask1_q;

    // status_low(BITSELECT,274)
    assign status_low_b = new_data_q[14:0];

    // status_from_cra(BITJOIN,273)
    assign status_from_cra_q = {version_number_q, compute_running_q, status_low_b};

    // unchanged_status_data(BITSELECT,278)
    assign unchanged_status_data_b = status_NO_SHIFT_REG_q[11:7];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // printf_counter_reset_mux(MUX,245)
    assign printf_counter_reset_mux_s = printf_reset_bit_b;
    always @(printf_counter_reset_mux_s or printf_reset_bit_b or GND_q)
    begin
        unique case (printf_counter_reset_mux_s)
            1'b0 : printf_counter_reset_mux_q = printf_reset_bit_b;
            1'b1 : printf_counter_reset_mux_q = GND_q;
            default : printf_counter_reset_mux_q = 1'b0;
        endcase
    end

    // printf_bit(BITSELECT,243)
    assign printf_bit_b = status_NO_SHIFT_REG_q[3:3];

    // printf_bit_mux(MUX,244)
    assign printf_bit_mux_s = acl_counter_full;
    always @(printf_bit_mux_s or printf_bit_b or VCC_q)
    begin
        unique case (printf_bit_mux_s)
            1'b0 : printf_bit_mux_q = printf_bit_b;
            1'b1 : printf_bit_mux_q = VCC_q;
            default : printf_bit_mux_q = 1'b0;
        endcase
    end

    // compute_busy(LOGICAL,161)
    assign compute_busy_q = buffered_start_NO_SHIFT_REG_q & compute_running_q;

    // finish_masked_by_running(LOGICAL,178)
    assign finish_masked_by_running_q = kernel_done & running_bit_b;

    // finish_during_clear(CONSTANT,177)
    assign finish_during_clear_q = $unsigned(2'b01);

    // clear_to_zero(CONSTANT,158)
    assign clear_to_zero_q = $unsigned(2'b00);

    // last_finish_state(REG,215)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            last_finish_state_q <= $unsigned(1'b0);
        end
        else
        begin
            last_finish_state_q <= kernel_done;
        end
    end

    // not_last_finish_state(LOGICAL,228)
    assign not_last_finish_state_q = ~ (last_finish_state_q);

    // finish_pulse(LOGICAL,179)
    assign finish_pulse_q = not_last_finish_state_q & kernel_done;

    // finish_pulse_while_running(LOGICAL,180)
    assign finish_pulse_while_running_q = finish_pulse_q & running_bit_b;

    // clear_or_finish(MUX,157)
    assign clear_or_finish_s = finish_pulse_while_running_q;
    always @(clear_or_finish_s or clear_to_zero_q or finish_during_clear_q)
    begin
        unique case (clear_or_finish_s)
            1'b0 : clear_or_finish_q = clear_to_zero_q;
            1'b1 : clear_or_finish_q = finish_during_clear_q;
            default : clear_or_finish_q = 2'b0;
        endcase
    end

    // incrementor(ADD,209)
    assign incrementor_a = {1'b0, finish_counter_NO_SHIFT_REG_q};
    assign incrementor_b = {2'b00, finish_pulse_while_running_q};
    assign incrementor_o = $unsigned(incrementor_a) + $unsigned(incrementor_b);
    assign incrementor_q = incrementor_o[2:0];

    // adder_counter_width(BITSELECT,81)
    assign adder_counter_width_b = incrementor_q[1:0];

    // finish_counter_addr(CONSTANT,176)
    assign finish_counter_addr_q = $unsigned(5'b00110);

    // is_finish_counter_addr(LOGICAL,210)
    assign is_finish_counter_addr_q = $unsigned(avs_cra_address == finish_counter_addr_q ? 1'b1 : 1'b0);

    // clear_finish_counter_pre_comp(LOGICAL,154)
    assign clear_finish_counter_pre_comp_q = is_finish_counter_addr_q & avs_cra_read;

    // clear_finish_counter_reg(REG,155)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            clear_finish_counter_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            clear_finish_counter_reg_q <= clear_finish_counter_pre_comp_q;
        end
    end

    // clear_on_read_mux(MUX,156)
    assign clear_on_read_mux_s = clear_finish_counter_reg_q;
    always @(clear_on_read_mux_s or adder_counter_width_b or clear_or_finish_q)
    begin
        unique case (clear_on_read_mux_s)
            1'b0 : clear_on_read_mux_q = adder_counter_width_b;
            1'b1 : clear_on_read_mux_q = clear_or_finish_q;
            default : clear_on_read_mux_q = 2'b0;
        endcase
    end

    // finish_counter_NO_SHIFT_REG(REG,175)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            finish_counter_NO_SHIFT_REG_q <= $unsigned(2'b00);
        end
        else
        begin
            finish_counter_NO_SHIFT_REG_q <= clear_on_read_mux_q;
        end
    end

    // finished_exists(COMPARE,181)
    assign finished_exists_a = {3'b000, GND_q};
    assign finished_exists_b = {2'b00, finish_counter_NO_SHIFT_REG_q};
    assign finished_exists_o = $unsigned(finished_exists_a) - $unsigned(finished_exists_b);
    assign finished_exists_c[0] = finished_exists_o[3];

    // compute_finished(LOGICAL,162)
    assign compute_finished_q = finished_exists_c | finish_masked_by_running_q;

    // status_self_update(BITJOIN,277)
    assign status_self_update_q = {version_number_q, compute_running_q, GND_q, has_a_write_pending, has_a_lsu_active, unchanged_status_data_b, GND_q, GND_q, printf_counter_reset_mux_q, printf_bit_mux_q, compute_busy_q, compute_finished_q, start_bit_computation_q};

    // Status_address_ref(CONSTANT,68)
    assign Status_address_ref_q = $unsigned(5'b00000);

    // NO_NAME(LOGICAL,52)
    assign NO_NAME_q = $unsigned(avs_cra_address == Status_address_ref_q ? 1'b1 : 1'b0);

    // Status_can_write(LOGICAL,69)
    assign Status_can_write_q = NO_NAME_q & avs_cra_write;

    // status_select(MUX,276)
    assign status_select_s = Status_can_write_q;
    always @(status_select_s or status_self_update_q or status_from_cra_q)
    begin
        unique case (status_select_s)
            1'b0 : status_select_q = status_self_update_q;
            1'b1 : status_select_q = status_from_cra_q;
            default : status_select_q = 32'b0;
        endcase
    end

    // status_NO_SHIFT_REG(REG,271)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            status_NO_SHIFT_REG_q <= $unsigned(32'b00000000000001010000000000000000);
        end
        else
        begin
            status_NO_SHIFT_REG_q <= status_select_q;
        end
    end

    // printf_reset_bit(BITSELECT,246)
    assign printf_reset_bit_b = status_NO_SHIFT_REG_q[4:4];

    // acl_counter_reset(GPOUT,464)
    assign acl_counter_reset = printf_reset_bit_b;

    // const_finish_counter_padding(CONSTANT,169)
    assign const_finish_counter_padding_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // padded_finish_counter(BITJOIN,238)
    assign padded_finish_counter_q = {const_finish_counter_padding_q, finish_counter_NO_SHIFT_REG_q};

    // const_32_zero(CONSTANT,168)
    assign const_32_zero_q = $unsigned(32'b00000000000000000000000000000000);

    // join_address_cmp(BITJOIN,211)
    assign join_address_cmp_q = {NO_NAME_q, address_cmp_0_q};

    // readdata_upper_bits_mux(MUX,251)
    assign readdata_upper_bits_mux_s = join_address_cmp_q;
    always @(readdata_upper_bits_mux_s or const_32_zero_q or acl_counter_size)
    begin
        unique case (readdata_upper_bits_mux_s)
            2'b00 : readdata_upper_bits_mux_q = const_32_zero_q;
            2'b01 : readdata_upper_bits_mux_q = acl_counter_size;
            2'b10 : readdata_upper_bits_mux_q = const_32_zero_q;
            default : readdata_upper_bits_mux_q = 32'b0;
        endcase
    end

    // readdata_lower_bits_mux(MUX,249)
    assign readdata_lower_bits_mux_s = join_address_cmp_q;
    always @(readdata_lower_bits_mux_s or status_NO_SHIFT_REG_q)
    begin
        unique case (readdata_lower_bits_mux_s)
            2'b00 : readdata_lower_bits_mux_q = status_NO_SHIFT_REG_q;
            2'b01 : readdata_lower_bits_mux_q = status_NO_SHIFT_REG_q;
            2'b10 : readdata_lower_bits_mux_q = status_NO_SHIFT_REG_q;
            default : readdata_lower_bits_mux_q = 32'b0;
        endcase
    end

    // readdata_bus_out(BITJOIN,248)
    assign readdata_bus_out_q = {readdata_upper_bits_mux_q, readdata_lower_bits_mux_q};

    // readdata_output_mux_2(MUX,250)
    assign readdata_output_mux_2_s = is_finish_counter_addr_q;
    always @(readdata_output_mux_2_s or readdata_bus_out_q or padded_finish_counter_q)
    begin
        unique case (readdata_output_mux_2_s)
            1'b0 : readdata_output_mux_2_q = readdata_bus_out_q;
            1'b1 : readdata_output_mux_2_q = padded_finish_counter_q;
            default : readdata_output_mux_2_q = 64'b0;
        endcase
    end

    // cra_output_readdata_reg(REG,171)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdata_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            cra_output_readdata_reg_q <= readdata_output_mux_2_q;
        end
    end

    // avs_cra_readdata(GPOUT,465)
    assign avs_cra_readdata = cra_output_readdata_reg_q;

    // cra_output_readdatavalid_reg(REG,172)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdatavalid_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            cra_output_readdatavalid_reg_q <= avs_cra_read;
        end
    end

    // avs_cra_readdatavalid(GPOUT,466)
    assign avs_cra_readdatavalid = cra_output_readdatavalid_reg_q;

    // dupName_0_ctrl_profile_status_bit_x(BITSELECT,292)
    assign dupName_0_ctrl_profile_status_bit_x_b = status_NO_SHIFT_REG_q[5:5];

    // profile_irq_and_running(LOGICAL,247)
    assign profile_irq_and_running_q = dupName_0_ctrl_profile_status_bit_x_b & compute_running_q;

    // status_done_bit(BITSELECT,272)
    assign status_done_bit_b = status_NO_SHIFT_REG_q[1:1];

    // done_or_printf_or_profile_irq_signal(LOGICAL,173)
    assign done_or_printf_or_profile_irq_signal_q = status_done_bit_b | printf_bit_b | profile_irq_and_running_q;

    // cra_irq(GPOUT,467)
    assign cra_irq = done_or_printf_or_profile_irq_signal_q;

    // GlobalOffset0_address_ref(CONSTANT,2)
    assign GlobalOffset0_address_ref_q = $unsigned(5'b01101);

    // dupName_12_NO_NAME_x(LOGICAL,371)
    assign dupName_12_NO_NAME_x_q = $unsigned(avs_cra_address == GlobalOffset0_address_ref_q ? 1'b1 : 1'b0);

    // GlobalOffset0_can_write(LOGICAL,3)
    assign GlobalOffset0_can_write_q = dupName_12_NO_NAME_x_q & avs_cra_write;

    // bus_high(BITSELECT,152)
    assign bus_high_b = avs_cra_writedata[63:32];

    // bit_enable_top(BITSELECT,149)
    assign bit_enable_top_b = bit_enable_q[63:32];

    // GlobalOffset0_upper_mask1(LOGICAL,8)
    assign GlobalOffset0_upper_mask1_q = bit_enable_top_b & bus_high_b;

    // bit_enable_top_bar(BITSELECT,150)
    assign bit_enable_top_bar_b = bit_enable_bar_q[63:32];

    // GlobalOffset0_upper_mask0(LOGICAL,7)
    assign GlobalOffset0_upper_mask0_q = bit_enable_top_bar_b & global_offset_reg_upper_0_buffered_q;

    // GlobalOffset0_upper_new_data(LOGICAL,9)
    assign GlobalOffset0_upper_new_data_q = GlobalOffset0_upper_mask0_q | GlobalOffset0_upper_mask1_q;

    // global_offset_reg_upper_0_buffered(REG,192)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset0_can_write_q == 1'b1)
        begin
            global_offset_reg_upper_0_buffered_q <= GlobalOffset0_upper_new_data_q;
        end
    end

    // global_offset_reg_upper_0(REG,191)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_0_q <= global_offset_reg_upper_0_buffered_q;
        end
    end

    // GlobalOffset0_mask0(LOGICAL,4)
    assign GlobalOffset0_mask0_q = bit_enable_bottom_bar_b & global_offset_reg_lower_0_buffered_q;

    // GlobalOffset0_new_data(LOGICAL,6)
    assign GlobalOffset0_new_data_q = GlobalOffset0_mask0_q | GlobalOffset0_mask1_q;

    // global_offset_reg_lower_0_buffered(REG,186)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset0_can_write_q == 1'b1)
        begin
            global_offset_reg_lower_0_buffered_q <= GlobalOffset0_new_data_q;
        end
    end

    // global_offset_reg_lower_0(REG,185)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_0_q <= global_offset_reg_lower_0_buffered_q;
        end
    end

    // global_offset_0_bit_join(BITJOIN,182)
    assign global_offset_0_bit_join_q = {global_offset_reg_upper_0_q, global_offset_reg_lower_0_q};

    // global_offset_0(GPOUT,468)
    assign global_offset_0 = global_offset_0_bit_join_q;

    // GlobalOffset1_address_ref(CONSTANT,10)
    assign GlobalOffset1_address_ref_q = $unsigned(5'b01110);

    // dupName_13_NO_NAME_x(LOGICAL,377)
    assign dupName_13_NO_NAME_x_q = $unsigned(avs_cra_address == GlobalOffset1_address_ref_q ? 1'b1 : 1'b0);

    // GlobalOffset1_can_write(LOGICAL,11)
    assign GlobalOffset1_can_write_q = dupName_13_NO_NAME_x_q & avs_cra_write;

    // GlobalOffset1_upper_mask0(LOGICAL,15)
    assign GlobalOffset1_upper_mask0_q = bit_enable_top_bar_b & global_offset_reg_upper_1_buffered_q;

    // GlobalOffset1_upper_new_data(LOGICAL,17)
    assign GlobalOffset1_upper_new_data_q = GlobalOffset1_upper_mask0_q | GlobalOffset0_upper_mask1_q;

    // global_offset_reg_upper_1_buffered(REG,194)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset1_can_write_q == 1'b1)
        begin
            global_offset_reg_upper_1_buffered_q <= GlobalOffset1_upper_new_data_q;
        end
    end

    // global_offset_reg_upper_1(REG,193)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_1_q <= global_offset_reg_upper_1_buffered_q;
        end
    end

    // GlobalOffset1_mask0(LOGICAL,12)
    assign GlobalOffset1_mask0_q = bit_enable_bottom_bar_b & global_offset_reg_lower_1_buffered_q;

    // GlobalOffset1_new_data(LOGICAL,14)
    assign GlobalOffset1_new_data_q = GlobalOffset1_mask0_q | GlobalOffset0_mask1_q;

    // global_offset_reg_lower_1_buffered(REG,188)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset1_can_write_q == 1'b1)
        begin
            global_offset_reg_lower_1_buffered_q <= GlobalOffset1_new_data_q;
        end
    end

    // global_offset_reg_lower_1(REG,187)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_1_q <= global_offset_reg_lower_1_buffered_q;
        end
    end

    // global_offset_1_bit_join(BITJOIN,183)
    assign global_offset_1_bit_join_q = {global_offset_reg_upper_1_q, global_offset_reg_lower_1_q};

    // global_offset_1(GPOUT,469)
    assign global_offset_1 = global_offset_1_bit_join_q;

    // GlobalOffset2_address_ref(CONSTANT,18)
    assign GlobalOffset2_address_ref_q = $unsigned(5'b01111);

    // dupName_14_NO_NAME_x(LOGICAL,383)
    assign dupName_14_NO_NAME_x_q = $unsigned(avs_cra_address == GlobalOffset2_address_ref_q ? 1'b1 : 1'b0);

    // GlobalOffset2_can_write(LOGICAL,19)
    assign GlobalOffset2_can_write_q = dupName_14_NO_NAME_x_q & avs_cra_write;

    // GlobalOffset2_upper_mask0(LOGICAL,23)
    assign GlobalOffset2_upper_mask0_q = bit_enable_top_bar_b & global_offset_reg_upper_2_buffered_q;

    // GlobalOffset2_upper_new_data(LOGICAL,25)
    assign GlobalOffset2_upper_new_data_q = GlobalOffset2_upper_mask0_q | GlobalOffset0_upper_mask1_q;

    // global_offset_reg_upper_2_buffered(REG,196)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset2_can_write_q == 1'b1)
        begin
            global_offset_reg_upper_2_buffered_q <= GlobalOffset2_upper_new_data_q;
        end
    end

    // global_offset_reg_upper_2(REG,195)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_2_q <= global_offset_reg_upper_2_buffered_q;
        end
    end

    // GlobalOffset2_mask0(LOGICAL,20)
    assign GlobalOffset2_mask0_q = bit_enable_bottom_bar_b & global_offset_reg_lower_2_buffered_q;

    // GlobalOffset2_new_data(LOGICAL,22)
    assign GlobalOffset2_new_data_q = GlobalOffset2_mask0_q | GlobalOffset0_mask1_q;

    // global_offset_reg_lower_2_buffered(REG,190)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (GlobalOffset2_can_write_q == 1'b1)
        begin
            global_offset_reg_lower_2_buffered_q <= GlobalOffset2_new_data_q;
        end
    end

    // global_offset_reg_lower_2(REG,189)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_2_q <= global_offset_reg_lower_2_buffered_q;
        end
    end

    // global_offset_2_bit_join(BITJOIN,184)
    assign global_offset_2_bit_join_q = {global_offset_reg_upper_2_q, global_offset_reg_lower_2_q};

    // global_offset_2(GPOUT,470)
    assign global_offset_2 = global_offset_2_bit_join_q;

    // global_size_reg_upper_0(REG,206)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_upper_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            global_size_reg_upper_0_q <= const_32_zero_q;
        end
    end

    // GlobalSize0_address_ref(CONSTANT,26)
    assign GlobalSize0_address_ref_q = $unsigned(5'b01000);

    // dupName_7_NO_NAME_x(LOGICAL,333)
    assign dupName_7_NO_NAME_x_q = $unsigned(avs_cra_address == GlobalSize0_address_ref_q ? 1'b1 : 1'b0);

    // GlobalSize0_can_write(LOGICAL,27)
    assign GlobalSize0_can_write_q = dupName_7_NO_NAME_x_q & avs_cra_write;

    // GlobalSize0_mask0(LOGICAL,28)
    assign GlobalSize0_mask0_q = bit_enable_bottom_bar_b & global_size_reg_lower_0_buffered_q;

    // GlobalSize0_new_data(LOGICAL,30)
    assign GlobalSize0_new_data_q = GlobalSize0_mask0_q | GlobalOffset0_mask1_q;

    // global_size_reg_lower_0_buffered(REG,201)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_0_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (GlobalSize0_can_write_q == 1'b1)
        begin
            global_size_reg_lower_0_buffered_q <= GlobalSize0_new_data_q;
        end
    end

    // global_size_reg_lower_0(REG,200)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_0_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_0_q <= global_size_reg_lower_0_buffered_q;
        end
    end

    // global_size_0_bit_join(BITJOIN,197)
    assign global_size_0_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_0_q};

    // global_size_0(GPOUT,471)
    assign global_size_0 = global_size_0_bit_join_q;

    // GlobalSize1_mask0(LOGICAL,31)
    assign GlobalSize1_mask0_q = bit_enable_top_bar_b & global_size_reg_lower_1_buffered_q;

    // GlobalSize1_new_data(LOGICAL,33)
    assign GlobalSize1_new_data_q = GlobalSize1_mask0_q | GlobalOffset0_upper_mask1_q;

    // global_size_reg_lower_1_buffered(REG,203)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_1_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (GlobalSize0_can_write_q == 1'b1)
        begin
            global_size_reg_lower_1_buffered_q <= GlobalSize1_new_data_q;
        end
    end

    // global_size_reg_lower_1(REG,202)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_1_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_1_q <= global_size_reg_lower_1_buffered_q;
        end
    end

    // global_size_1_bit_join(BITJOIN,198)
    assign global_size_1_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_1_q};

    // global_size_1(GPOUT,472)
    assign global_size_1 = global_size_1_bit_join_q;

    // GlobalSize2_address_ref(CONSTANT,34)
    assign GlobalSize2_address_ref_q = $unsigned(5'b01001);

    // dupName_8_NO_NAME_x(LOGICAL,341)
    assign dupName_8_NO_NAME_x_q = $unsigned(avs_cra_address == GlobalSize2_address_ref_q ? 1'b1 : 1'b0);

    // GlobalSize2_can_write(LOGICAL,35)
    assign GlobalSize2_can_write_q = dupName_8_NO_NAME_x_q & avs_cra_write;

    // GlobalSize2_mask0(LOGICAL,36)
    assign GlobalSize2_mask0_q = bit_enable_bottom_bar_b & global_size_reg_lower_2_buffered_q;

    // GlobalSize2_new_data(LOGICAL,38)
    assign GlobalSize2_new_data_q = GlobalSize2_mask0_q | GlobalOffset0_mask1_q;

    // global_size_reg_lower_2_buffered(REG,205)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_2_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (GlobalSize2_can_write_q == 1'b1)
        begin
            global_size_reg_lower_2_buffered_q <= GlobalSize2_new_data_q;
        end
    end

    // global_size_reg_lower_2(REG,204)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_2_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_2_q <= global_size_reg_lower_2_buffered_q;
        end
    end

    // global_size_2_bit_join(BITJOIN,199)
    assign global_size_2_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_2_q};

    // global_size_2(GPOUT,473)
    assign global_size_2 = global_size_2_bit_join_q;

    // dupName_17_address_ref_x(CONSTANT,402)
    assign dupName_17_address_ref_x_q = $unsigned(5'b11110);

    // dupName_29_NO_NAME_x(LOGICAL,451)
    assign dupName_29_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_17_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_17_can_write_x(LOGICAL,403)
    assign dupName_17_can_write_x_q = dupName_29_NO_NAME_x_q & avs_cra_write;

    // dupName_28_mask0_x(LOGICAL,448)
    assign dupName_28_mask0_x_q = bit_enable_top_bar_b & arguments_29_buffered_q;

    // dupName_28_new_data_x(LOGICAL,450)
    assign dupName_28_new_data_x_q = dupName_28_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_29_buffered(REG,129)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_29_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_17_can_write_x_q == 1'b1)
        begin
            arguments_29_buffered_q <= dupName_28_new_data_x_q;
        end
    end

    // arguments_29(REG,128)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_29_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_29_q <= arguments_29_buffered_q;
        end
    end

    // dupName_27_mask0_x(LOGICAL,444)
    assign dupName_27_mask0_x_q = bit_enable_bottom_bar_b & arguments_28_buffered_q;

    // dupName_27_new_data_x(LOGICAL,446)
    assign dupName_27_new_data_x_q = dupName_27_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_28_buffered(REG,127)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_28_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_17_can_write_x_q == 1'b1)
        begin
            arguments_28_buffered_q <= dupName_27_new_data_x_q;
        end
    end

    // arguments_28(REG,126)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_28_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_28_q <= arguments_28_buffered_q;
        end
    end

    // dupName_10_arg_bit_join_x(BITJOIN,363)
    assign dupName_10_arg_bit_join_x_q = {arguments_29_q, arguments_28_q};

    // dupName_16_address_ref_x(CONSTANT,396)
    assign dupName_16_address_ref_x_q = $unsigned(5'b11101);

    // dupName_28_NO_NAME_x(LOGICAL,447)
    assign dupName_28_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_16_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_16_can_write_x(LOGICAL,397)
    assign dupName_16_can_write_x_q = dupName_28_NO_NAME_x_q & avs_cra_write;

    // dupName_26_mask0_x(LOGICAL,440)
    assign dupName_26_mask0_x_q = bit_enable_top_bar_b & arguments_27_buffered_q;

    // dupName_26_new_data_x(LOGICAL,442)
    assign dupName_26_new_data_x_q = dupName_26_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_27_buffered(REG,125)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_27_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_16_can_write_x_q == 1'b1)
        begin
            arguments_27_buffered_q <= dupName_26_new_data_x_q;
        end
    end

    // arguments_27(REG,124)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_27_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_27_q <= arguments_27_buffered_q;
        end
    end

    // dupName_25_mask0_x(LOGICAL,436)
    assign dupName_25_mask0_x_q = bit_enable_bottom_bar_b & arguments_26_buffered_q;

    // dupName_25_new_data_x(LOGICAL,438)
    assign dupName_25_new_data_x_q = dupName_25_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_26_buffered(REG,123)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_26_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_16_can_write_x_q == 1'b1)
        begin
            arguments_26_buffered_q <= dupName_25_new_data_x_q;
        end
    end

    // arguments_26(REG,122)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_26_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_26_q <= arguments_26_buffered_q;
        end
    end

    // dupName_9_arg_bit_join_x(BITJOIN,355)
    assign dupName_9_arg_bit_join_x_q = {arguments_27_q, arguments_26_q};

    // dupName_15_address_ref_x(CONSTANT,390)
    assign dupName_15_address_ref_x_q = $unsigned(5'b11100);

    // dupName_27_NO_NAME_x(LOGICAL,443)
    assign dupName_27_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_15_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_15_can_write_x(LOGICAL,391)
    assign dupName_15_can_write_x_q = dupName_27_NO_NAME_x_q & avs_cra_write;

    // dupName_24_mask0_x(LOGICAL,432)
    assign dupName_24_mask0_x_q = bit_enable_top_bar_b & arguments_25_buffered_q;

    // dupName_24_new_data_x(LOGICAL,434)
    assign dupName_24_new_data_x_q = dupName_24_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_25_buffered(REG,121)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_25_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_25_buffered_q <= dupName_24_new_data_x_q;
        end
    end

    // arguments_25(REG,120)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_25_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_25_q <= arguments_25_buffered_q;
        end
    end

    // dupName_23_mask0_x(LOGICAL,428)
    assign dupName_23_mask0_x_q = bit_enable_bottom_bar_b & arguments_24_buffered_q;

    // dupName_23_new_data_x(LOGICAL,430)
    assign dupName_23_new_data_x_q = dupName_23_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_24_buffered(REG,119)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_24_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_24_buffered_q <= dupName_23_new_data_x_q;
        end
    end

    // arguments_24(REG,118)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_24_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_24_q <= arguments_24_buffered_q;
        end
    end

    // dupName_8_arg_bit_join_x(BITJOIN,347)
    assign dupName_8_arg_bit_join_x_q = {arguments_25_q, arguments_24_q};

    // dupName_14_address_ref_x(CONSTANT,384)
    assign dupName_14_address_ref_x_q = $unsigned(5'b11011);

    // dupName_26_NO_NAME_x(LOGICAL,439)
    assign dupName_26_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_14_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_14_can_write_x(LOGICAL,385)
    assign dupName_14_can_write_x_q = dupName_26_NO_NAME_x_q & avs_cra_write;

    // dupName_22_mask0_x(LOGICAL,424)
    assign dupName_22_mask0_x_q = bit_enable_top_bar_b & arguments_23_buffered_q;

    // dupName_22_new_data_x(LOGICAL,426)
    assign dupName_22_new_data_x_q = dupName_22_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_23_buffered(REG,117)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_23_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_23_buffered_q <= dupName_22_new_data_x_q;
        end
    end

    // arguments_23(REG,116)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_23_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_23_q <= arguments_23_buffered_q;
        end
    end

    // dupName_21_mask0_x(LOGICAL,420)
    assign dupName_21_mask0_x_q = bit_enable_bottom_bar_b & arguments_22_buffered_q;

    // dupName_21_new_data_x(LOGICAL,422)
    assign dupName_21_new_data_x_q = dupName_21_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_22_buffered(REG,115)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_22_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_22_buffered_q <= dupName_21_new_data_x_q;
        end
    end

    // arguments_22(REG,114)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_22_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_22_q <= arguments_22_buffered_q;
        end
    end

    // dupName_7_arg_bit_join_x(BITJOIN,339)
    assign dupName_7_arg_bit_join_x_q = {arguments_23_q, arguments_22_q};

    // dupName_13_address_ref_x(CONSTANT,378)
    assign dupName_13_address_ref_x_q = $unsigned(5'b11010);

    // dupName_25_NO_NAME_x(LOGICAL,435)
    assign dupName_25_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_13_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_13_can_write_x(LOGICAL,379)
    assign dupName_13_can_write_x_q = dupName_25_NO_NAME_x_q & avs_cra_write;

    // dupName_20_mask0_x(LOGICAL,416)
    assign dupName_20_mask0_x_q = bit_enable_top_bar_b & arguments_21_buffered_q;

    // dupName_20_new_data_x(LOGICAL,418)
    assign dupName_20_new_data_x_q = dupName_20_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_21_buffered(REG,113)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_21_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            arguments_21_buffered_q <= dupName_20_new_data_x_q;
        end
    end

    // arguments_21(REG,112)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_21_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_21_q <= arguments_21_buffered_q;
        end
    end

    // dupName_19_mask0_x(LOGICAL,412)
    assign dupName_19_mask0_x_q = bit_enable_bottom_bar_b & arguments_20_buffered_q;

    // dupName_19_new_data_x(LOGICAL,414)
    assign dupName_19_new_data_x_q = dupName_19_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_20_buffered(REG,111)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_20_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            arguments_20_buffered_q <= dupName_19_new_data_x_q;
        end
    end

    // arguments_20(REG,110)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_20_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_20_q <= arguments_20_buffered_q;
        end
    end

    // dupName_6_arg_bit_join_x(BITJOIN,331)
    assign dupName_6_arg_bit_join_x_q = {arguments_21_q, arguments_20_q};

    // dupName_12_address_ref_x(CONSTANT,372)
    assign dupName_12_address_ref_x_q = $unsigned(5'b11001);

    // dupName_24_NO_NAME_x(LOGICAL,431)
    assign dupName_24_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_12_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_12_can_write_x(LOGICAL,373)
    assign dupName_12_can_write_x_q = dupName_24_NO_NAME_x_q & avs_cra_write;

    // dupName_18_mask0_x(LOGICAL,408)
    assign dupName_18_mask0_x_q = bit_enable_top_bar_b & arguments_19_buffered_q;

    // dupName_18_new_data_x(LOGICAL,410)
    assign dupName_18_new_data_x_q = dupName_18_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_19_buffered(REG,107)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_19_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            arguments_19_buffered_q <= dupName_18_new_data_x_q;
        end
    end

    // arguments_19(REG,106)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_19_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_19_q <= arguments_19_buffered_q;
        end
    end

    // dupName_17_mask0_x(LOGICAL,404)
    assign dupName_17_mask0_x_q = bit_enable_bottom_bar_b & arguments_18_buffered_q;

    // dupName_17_new_data_x(LOGICAL,406)
    assign dupName_17_new_data_x_q = dupName_17_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_18_buffered(REG,105)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_18_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            arguments_18_buffered_q <= dupName_17_new_data_x_q;
        end
    end

    // arguments_18(REG,104)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_18_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_18_q <= arguments_18_buffered_q;
        end
    end

    // dupName_5_arg_bit_join_x(BITJOIN,323)
    assign dupName_5_arg_bit_join_x_q = {arguments_19_q, arguments_18_q};

    // dupName_11_address_ref_x(CONSTANT,366)
    assign dupName_11_address_ref_x_q = $unsigned(5'b11000);

    // dupName_23_NO_NAME_x(LOGICAL,427)
    assign dupName_23_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_11_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_11_can_write_x(LOGICAL,367)
    assign dupName_11_can_write_x_q = dupName_23_NO_NAME_x_q & avs_cra_write;

    // dupName_16_mask0_x(LOGICAL,398)
    assign dupName_16_mask0_x_q = bit_enable_top_bar_b & arguments_17_buffered_q;

    // dupName_16_new_data_x(LOGICAL,400)
    assign dupName_16_new_data_x_q = dupName_16_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_17_buffered(REG,103)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_17_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            arguments_17_buffered_q <= dupName_16_new_data_x_q;
        end
    end

    // arguments_17(REG,102)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_17_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_17_q <= arguments_17_buffered_q;
        end
    end

    // dupName_15_mask0_x(LOGICAL,392)
    assign dupName_15_mask0_x_q = bit_enable_bottom_bar_b & arguments_16_buffered_q;

    // dupName_15_new_data_x(LOGICAL,394)
    assign dupName_15_new_data_x_q = dupName_15_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_16_buffered(REG,101)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_16_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            arguments_16_buffered_q <= dupName_15_new_data_x_q;
        end
    end

    // arguments_16(REG,100)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_16_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_16_q <= arguments_16_buffered_q;
        end
    end

    // dupName_4_arg_bit_join_x(BITJOIN,316)
    assign dupName_4_arg_bit_join_x_q = {arguments_17_q, arguments_16_q};

    // dupName_10_address_ref_x(CONSTANT,358)
    assign dupName_10_address_ref_x_q = $unsigned(5'b10111);

    // dupName_22_NO_NAME_x(LOGICAL,423)
    assign dupName_22_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_10_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_10_can_write_x(LOGICAL,359)
    assign dupName_10_can_write_x_q = dupName_22_NO_NAME_x_q & avs_cra_write;

    // dupName_14_mask0_x(LOGICAL,386)
    assign dupName_14_mask0_x_q = bit_enable_top_bar_b & arguments_15_buffered_q;

    // dupName_14_new_data_x(LOGICAL,388)
    assign dupName_14_new_data_x_q = dupName_14_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_15_buffered(REG,99)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_15_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_10_can_write_x_q == 1'b1)
        begin
            arguments_15_buffered_q <= dupName_14_new_data_x_q;
        end
    end

    // arguments_15(REG,98)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_15_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_15_q <= arguments_15_buffered_q;
        end
    end

    // dupName_13_mask0_x(LOGICAL,380)
    assign dupName_13_mask0_x_q = bit_enable_bottom_bar_b & arguments_14_buffered_q;

    // dupName_13_new_data_x(LOGICAL,382)
    assign dupName_13_new_data_x_q = dupName_13_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_14_buffered(REG,97)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_14_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_10_can_write_x_q == 1'b1)
        begin
            arguments_14_buffered_q <= dupName_13_new_data_x_q;
        end
    end

    // arguments_14(REG,96)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_14_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_14_q <= arguments_14_buffered_q;
        end
    end

    // dupName_3_arg_bit_join_x(BITJOIN,309)
    assign dupName_3_arg_bit_join_x_q = {arguments_15_q, arguments_14_q};

    // dupName_9_address_ref_x(CONSTANT,350)
    assign dupName_9_address_ref_x_q = $unsigned(5'b10110);

    // dupName_21_NO_NAME_x(LOGICAL,419)
    assign dupName_21_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_9_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_9_can_write_x(LOGICAL,351)
    assign dupName_9_can_write_x_q = dupName_21_NO_NAME_x_q & avs_cra_write;

    // dupName_12_mask0_x(LOGICAL,374)
    assign dupName_12_mask0_x_q = bit_enable_top_bar_b & arguments_13_buffered_q;

    // dupName_12_new_data_x(LOGICAL,376)
    assign dupName_12_new_data_x_q = dupName_12_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_13_buffered(REG,95)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_13_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            arguments_13_buffered_q <= dupName_12_new_data_x_q;
        end
    end

    // arguments_13(REG,94)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_13_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_13_q <= arguments_13_buffered_q;
        end
    end

    // dupName_11_mask0_x(LOGICAL,368)
    assign dupName_11_mask0_x_q = bit_enable_bottom_bar_b & arguments_12_buffered_q;

    // dupName_11_new_data_x(LOGICAL,370)
    assign dupName_11_new_data_x_q = dupName_11_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_12_buffered(REG,93)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_12_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            arguments_12_buffered_q <= dupName_11_new_data_x_q;
        end
    end

    // arguments_12(REG,92)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_12_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_12_q <= arguments_12_buffered_q;
        end
    end

    // dupName_8_address_ref_x(CONSTANT,342)
    assign dupName_8_address_ref_x_q = $unsigned(5'b10101);

    // dupName_20_NO_NAME_x(LOGICAL,415)
    assign dupName_20_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_8_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_8_can_write_x(LOGICAL,343)
    assign dupName_8_can_write_x_q = dupName_20_NO_NAME_x_q & avs_cra_write;

    // dupName_10_mask0_x(LOGICAL,360)
    assign dupName_10_mask0_x_q = bit_enable_top_bar_b & arguments_11_buffered_q;

    // dupName_10_new_data_x(LOGICAL,362)
    assign dupName_10_new_data_x_q = dupName_10_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_11_buffered(REG,91)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_11_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            arguments_11_buffered_q <= dupName_10_new_data_x_q;
        end
    end

    // arguments_11(REG,90)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_11_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_11_q <= arguments_11_buffered_q;
        end
    end

    // dupName_9_mask0_x(LOGICAL,352)
    assign dupName_9_mask0_x_q = bit_enable_bottom_bar_b & arguments_10_buffered_q;

    // dupName_9_new_data_x(LOGICAL,354)
    assign dupName_9_new_data_x_q = dupName_9_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_10_buffered(REG,89)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_10_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            arguments_10_buffered_q <= dupName_9_new_data_x_q;
        end
    end

    // arguments_10(REG,88)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_10_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_10_q <= arguments_10_buffered_q;
        end
    end

    // dupName_2_arg_bit_join_x(BITJOIN,302)
    assign dupName_2_arg_bit_join_x_q = {arguments_13_q, arguments_12_q, arguments_11_q, arguments_10_q};

    // dupName_7_address_ref_x(CONSTANT,334)
    assign dupName_7_address_ref_x_q = $unsigned(5'b10100);

    // dupName_19_NO_NAME_x(LOGICAL,411)
    assign dupName_19_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_7_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_7_can_write_x(LOGICAL,335)
    assign dupName_7_can_write_x_q = dupName_19_NO_NAME_x_q & avs_cra_write;

    // dupName_8_mask0_x(LOGICAL,344)
    assign dupName_8_mask0_x_q = bit_enable_top_bar_b & arguments_9_buffered_q;

    // dupName_8_new_data_x(LOGICAL,346)
    assign dupName_8_new_data_x_q = dupName_8_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_9_buffered(REG,144)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_9_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            arguments_9_buffered_q <= dupName_8_new_data_x_q;
        end
    end

    // arguments_9(REG,143)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_9_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_9_q <= arguments_9_buffered_q;
        end
    end

    // dupName_7_mask0_x(LOGICAL,336)
    assign dupName_7_mask0_x_q = bit_enable_bottom_bar_b & arguments_8_buffered_q;

    // dupName_7_new_data_x(LOGICAL,338)
    assign dupName_7_new_data_x_q = dupName_7_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_8_buffered(REG,142)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_8_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            arguments_8_buffered_q <= dupName_7_new_data_x_q;
        end
    end

    // arguments_8(REG,141)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_8_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_8_q <= arguments_8_buffered_q;
        end
    end

    // dupName_6_address_ref_x(CONSTANT,326)
    assign dupName_6_address_ref_x_q = $unsigned(5'b10011);

    // dupName_18_NO_NAME_x(LOGICAL,407)
    assign dupName_18_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_6_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_6_can_write_x(LOGICAL,327)
    assign dupName_6_can_write_x_q = dupName_18_NO_NAME_x_q & avs_cra_write;

    // dupName_6_mask0_x(LOGICAL,328)
    assign dupName_6_mask0_x_q = bit_enable_top_bar_b & arguments_7_buffered_q;

    // dupName_6_new_data_x(LOGICAL,330)
    assign dupName_6_new_data_x_q = dupName_6_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_7_buffered(REG,140)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_7_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            arguments_7_buffered_q <= dupName_6_new_data_x_q;
        end
    end

    // arguments_7(REG,139)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_7_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_7_q <= arguments_7_buffered_q;
        end
    end

    // dupName_5_mask0_x(LOGICAL,320)
    assign dupName_5_mask0_x_q = bit_enable_bottom_bar_b & arguments_6_buffered_q;

    // dupName_5_new_data_x(LOGICAL,322)
    assign dupName_5_new_data_x_q = dupName_5_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_6_buffered(REG,138)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_6_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            arguments_6_buffered_q <= dupName_5_new_data_x_q;
        end
    end

    // arguments_6(REG,137)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_6_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_6_q <= arguments_6_buffered_q;
        end
    end

    // dupName_1_arg_bit_join_x(BITJOIN,297)
    assign dupName_1_arg_bit_join_x_q = {arguments_9_q, arguments_8_q, arguments_7_q, arguments_6_q};

    // dupName_5_address_ref_x(CONSTANT,318)
    assign dupName_5_address_ref_x_q = $unsigned(5'b10010);

    // dupName_17_NO_NAME_x(LOGICAL,401)
    assign dupName_17_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_5_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_5_can_write_x(LOGICAL,319)
    assign dupName_5_can_write_x_q = dupName_17_NO_NAME_x_q & avs_cra_write;

    // dupName_4_mask0_x(LOGICAL,313)
    assign dupName_4_mask0_x_q = bit_enable_top_bar_b & arguments_5_buffered_q;

    // dupName_4_new_data_x(LOGICAL,315)
    assign dupName_4_new_data_x_q = dupName_4_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_5_buffered(REG,136)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_5_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            arguments_5_buffered_q <= dupName_4_new_data_x_q;
        end
    end

    // arguments_5(REG,135)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_5_q <= arguments_5_buffered_q;
        end
    end

    // dupName_3_mask0_x(LOGICAL,306)
    assign dupName_3_mask0_x_q = bit_enable_bottom_bar_b & arguments_4_buffered_q;

    // dupName_3_new_data_x(LOGICAL,308)
    assign dupName_3_new_data_x_q = dupName_3_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_4_buffered(REG,134)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_4_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            arguments_4_buffered_q <= dupName_3_new_data_x_q;
        end
    end

    // arguments_4(REG,133)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_4_q <= arguments_4_buffered_q;
        end
    end

    // dupName_4_address_ref_x(CONSTANT,311)
    assign dupName_4_address_ref_x_q = $unsigned(5'b10001);

    // dupName_16_NO_NAME_x(LOGICAL,395)
    assign dupName_16_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_4_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_4_can_write_x(LOGICAL,312)
    assign dupName_4_can_write_x_q = dupName_16_NO_NAME_x_q & avs_cra_write;

    // dupName_2_mask0_x(LOGICAL,299)
    assign dupName_2_mask0_x_q = bit_enable_top_bar_b & arguments_3_buffered_q;

    // dupName_2_new_data_x(LOGICAL,301)
    assign dupName_2_new_data_x_q = dupName_2_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_3_buffered(REG,132)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_3_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_4_can_write_x_q == 1'b1)
        begin
            arguments_3_buffered_q <= dupName_2_new_data_x_q;
        end
    end

    // arguments_3(REG,131)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_3_q <= arguments_3_buffered_q;
        end
    end

    // dupName_1_mask0_x(LOGICAL,294)
    assign dupName_1_mask0_x_q = bit_enable_bottom_bar_b & arguments_2_buffered_q;

    // dupName_1_new_data_x(LOGICAL,296)
    assign dupName_1_new_data_x_q = dupName_1_mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_2_buffered(REG,130)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_4_can_write_x_q == 1'b1)
        begin
            arguments_2_buffered_q <= dupName_1_new_data_x_q;
        end
    end

    // arguments_2(REG,109)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_2_q <= arguments_2_buffered_q;
        end
    end

    // dupName_0_arg_bit_join_x(BITJOIN,290)
    assign dupName_0_arg_bit_join_x_q = {arguments_5_q, arguments_4_q, arguments_3_q, arguments_2_q};

    // dupName_3_address_ref_x(CONSTANT,304)
    assign dupName_3_address_ref_x_q = $unsigned(5'b10000);

    // dupName_15_NO_NAME_x(LOGICAL,389)
    assign dupName_15_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_3_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_3_can_write_x(LOGICAL,305)
    assign dupName_3_can_write_x_q = dupName_15_NO_NAME_x_q & avs_cra_write;

    // dupName_0_mask0_x(LOGICAL,287)
    assign dupName_0_mask0_x_q = bit_enable_top_bar_b & arguments_1_buffered_q;

    // dupName_0_new_data_x(LOGICAL,289)
    assign dupName_0_new_data_x_q = dupName_0_mask0_x_q | GlobalOffset0_upper_mask1_q;

    // arguments_1_buffered(REG,108)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_3_can_write_x_q == 1'b1)
        begin
            arguments_1_buffered_q <= dupName_0_new_data_x_q;
        end
    end

    // arguments_1(REG,87)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_1_q <= arguments_1_buffered_q;
        end
    end

    // mask0_x(LOGICAL,78)
    assign mask0_x_q = bit_enable_bottom_bar_b & arguments_0_buffered_q;

    // new_data_x(LOGICAL,80)
    assign new_data_x_q = mask0_x_q | GlobalOffset0_mask1_q;

    // arguments_0_buffered(REG,86)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_3_can_write_x_q == 1'b1)
        begin
            arguments_0_buffered_q <= new_data_x_q;
        end
    end

    // arguments_0(REG,85)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_0_q <= arguments_0_buffered_q;
        end
    end

    // arg_bit_join(BITJOIN,84)
    assign arg_bit_join_q = {arguments_1_q, arguments_0_q};

    // kernel_arg_bit_join(BITJOIN,214)
    assign kernel_arg_bit_join_q = {dupName_10_arg_bit_join_x_q, dupName_9_arg_bit_join_x_q, dupName_8_arg_bit_join_x_q, dupName_7_arg_bit_join_x_q, dupName_6_arg_bit_join_x_q, dupName_5_arg_bit_join_x_q, dupName_4_arg_bit_join_x_q, dupName_3_arg_bit_join_x_q, dupName_2_arg_bit_join_x_q, dupName_1_arg_bit_join_x_q, dupName_0_arg_bit_join_x_q, arg_bit_join_q};

    // pipe_reg0_kernel_arguments(REG,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_kernel_arguments_q <= kernel_arg_bit_join_q;
        end
    end

    // pipe_reg1_kernel_arguments(REG,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_kernel_arguments_q <= pipe_reg0_kernel_arguments_q;
        end
    end

    // kernel_arguments(GPOUT,474)
    assign kernel_arguments = pipe_reg1_kernel_arguments_q;

    // will_be_started(LOGICAL,280)
    assign will_be_started_q = start_NO_SHIFT_REG_q | started_NO_SHIFT_REG_q;

    // next_started_value(LOGICAL,226)
    assign next_started_value_q = will_be_started_q & not_finished_q;

    // started_NO_SHIFT_REG(REG,270)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            started_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            started_NO_SHIFT_REG_q <= next_started_value_q;
        end
    end

    // not_started(LOGICAL,231)
    assign not_started_q = ~ (started_NO_SHIFT_REG_q);

    // start_is_or_going_high(LOGICAL,266)
    assign start_is_or_going_high_q = start_from_buffered_start_NO_SHIFT_REG_q | start_NO_SHIFT_REG_q;

    // next_start_reg_value(LOGICAL,225)
    assign next_start_reg_value_q = start_is_or_going_high_q & not_started_q;

    // start_NO_SHIFT_REG(REG,261)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            start_NO_SHIFT_REG_q <= next_start_reg_value_q;
        end
    end

    // pipe_reg0_kernel_start(REG,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_kernel_start_q <= start_NO_SHIFT_REG_q;
        end
    end

    // pipe_reg1_kernel_start(REG,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_kernel_start_q <= pipe_reg0_kernel_start_q;
        end
    end

    // kernel_start(GPOUT,475)
    assign kernel_start = pipe_reg1_kernel_start_q;

    // LocalSize0_address_ref(CONSTANT,39)
    assign LocalSize0_address_ref_q = $unsigned(5'b01011);

    // dupName_10_NO_NAME_x(LOGICAL,357)
    assign dupName_10_NO_NAME_x_q = $unsigned(avs_cra_address == LocalSize0_address_ref_q ? 1'b1 : 1'b0);

    // LocalSize0_can_write(LOGICAL,40)
    assign LocalSize0_can_write_q = dupName_10_NO_NAME_x_q & avs_cra_write;

    // LocalSize0_mask0(LOGICAL,41)
    assign LocalSize0_mask0_q = bit_enable_bottom_bar_b & local_size_reg_0_buffered_q;

    // LocalSize0_new_data(LOGICAL,43)
    assign LocalSize0_new_data_q = LocalSize0_mask0_q | GlobalOffset0_mask1_q;

    // local_size_reg_0_buffered(REG,217)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_0_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (LocalSize0_can_write_q == 1'b1)
        begin
            local_size_reg_0_buffered_q <= LocalSize0_new_data_q;
        end
    end

    // local_size_reg_0(REG,216)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_0_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_0_q <= local_size_reg_0_buffered_q;
        end
    end

    // local_size_0(GPOUT,476)
    assign local_size_0 = local_size_reg_0_q;

    // LocalSize1_mask0(LOGICAL,44)
    assign LocalSize1_mask0_q = bit_enable_top_bar_b & local_size_reg_1_buffered_q;

    // LocalSize1_new_data(LOGICAL,46)
    assign LocalSize1_new_data_q = LocalSize1_mask0_q | GlobalOffset0_upper_mask1_q;

    // local_size_reg_1_buffered(REG,219)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_1_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (LocalSize0_can_write_q == 1'b1)
        begin
            local_size_reg_1_buffered_q <= LocalSize1_new_data_q;
        end
    end

    // local_size_reg_1(REG,218)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_1_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_1_q <= local_size_reg_1_buffered_q;
        end
    end

    // local_size_1(GPOUT,477)
    assign local_size_1 = local_size_reg_1_q;

    // LocalSize2_address_ref(CONSTANT,47)
    assign LocalSize2_address_ref_q = $unsigned(5'b01100);

    // dupName_11_NO_NAME_x(LOGICAL,365)
    assign dupName_11_NO_NAME_x_q = $unsigned(avs_cra_address == LocalSize2_address_ref_q ? 1'b1 : 1'b0);

    // LocalSize2_can_write(LOGICAL,48)
    assign LocalSize2_can_write_q = dupName_11_NO_NAME_x_q & avs_cra_write;

    // LocalSize2_mask0(LOGICAL,49)
    assign LocalSize2_mask0_q = bit_enable_bottom_bar_b & local_size_reg_2_buffered_q;

    // LocalSize2_new_data(LOGICAL,51)
    assign LocalSize2_new_data_q = LocalSize2_mask0_q | GlobalOffset0_mask1_q;

    // local_size_reg_2_buffered(REG,221)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_2_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (LocalSize2_can_write_q == 1'b1)
        begin
            local_size_reg_2_buffered_q <= LocalSize2_new_data_q;
        end
    end

    // local_size_reg_2(REG,220)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_2_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_2_q <= local_size_reg_2_buffered_q;
        end
    end

    // local_size_2(GPOUT,478)
    assign local_size_2 = local_size_reg_2_q;

    // NumGroups0_mask0(LOGICAL,53)
    assign NumGroups0_mask0_q = bit_enable_top_bar_b & num_groups_reg_0_buffered_q;

    // NumGroups0_new_data(LOGICAL,55)
    assign NumGroups0_new_data_q = NumGroups0_mask0_q | GlobalOffset0_upper_mask1_q;

    // num_groups_reg_0_buffered(REG,233)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_0_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (GlobalSize2_can_write_q == 1'b1)
        begin
            num_groups_reg_0_buffered_q <= NumGroups0_new_data_q;
        end
    end

    // num_groups_reg_0(REG,232)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_0_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_0_q <= num_groups_reg_0_buffered_q;
        end
    end

    // num_groups_0(GPOUT,479)
    assign num_groups_0 = num_groups_reg_0_q;

    // NumGroups1_address_ref(CONSTANT,56)
    assign NumGroups1_address_ref_q = $unsigned(5'b01010);

    // dupName_9_NO_NAME_x(LOGICAL,349)
    assign dupName_9_NO_NAME_x_q = $unsigned(avs_cra_address == NumGroups1_address_ref_q ? 1'b1 : 1'b0);

    // NumGroups1_can_write(LOGICAL,57)
    assign NumGroups1_can_write_q = dupName_9_NO_NAME_x_q & avs_cra_write;

    // NumGroups1_mask0(LOGICAL,58)
    assign NumGroups1_mask0_q = bit_enable_bottom_bar_b & num_groups_reg_1_buffered_q;

    // NumGroups1_new_data(LOGICAL,60)
    assign NumGroups1_new_data_q = NumGroups1_mask0_q | GlobalOffset0_mask1_q;

    // num_groups_reg_1_buffered(REG,235)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_1_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (NumGroups1_can_write_q == 1'b1)
        begin
            num_groups_reg_1_buffered_q <= NumGroups1_new_data_q;
        end
    end

    // num_groups_reg_1(REG,234)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_1_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_1_q <= num_groups_reg_1_buffered_q;
        end
    end

    // num_groups_1(GPOUT,480)
    assign num_groups_1 = num_groups_reg_1_q;

    // NumGroups2_mask0(LOGICAL,61)
    assign NumGroups2_mask0_q = bit_enable_top_bar_b & num_groups_reg_2_buffered_q;

    // NumGroups2_new_data(LOGICAL,63)
    assign NumGroups2_new_data_q = NumGroups2_mask0_q | GlobalOffset0_upper_mask1_q;

    // num_groups_reg_2_buffered(REG,237)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_2_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (NumGroups1_can_write_q == 1'b1)
        begin
            num_groups_reg_2_buffered_q <= NumGroups2_new_data_q;
        end
    end

    // num_groups_reg_2(REG,236)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_2_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_2_q <= num_groups_reg_2_buffered_q;
        end
    end

    // num_groups_2(GPOUT,481)
    assign num_groups_2 = num_groups_reg_2_q;

    // status(GPOUT,482)
    assign status = status_NO_SHIFT_REG_q;

    // WorkgroupDimension_address_ref(CONSTANT,70)
    assign WorkgroupDimension_address_ref_q = $unsigned(5'b00111);

    // dupName_6_NO_NAME_x(LOGICAL,325)
    assign dupName_6_NO_NAME_x_q = $unsigned(avs_cra_address == WorkgroupDimension_address_ref_q ? 1'b1 : 1'b0);

    // WorkgroupDimension_can_write(LOGICAL,71)
    assign WorkgroupDimension_can_write_q = dupName_6_NO_NAME_x_q & avs_cra_write;

    // WorkgroupDimension_mask0(LOGICAL,72)
    assign WorkgroupDimension_mask0_q = bit_enable_bottom_bar_b & work_dim_NO_SHIFT_REG_buffered_q;

    // WorkgroupDimension_new_data(LOGICAL,74)
    assign WorkgroupDimension_new_data_q = WorkgroupDimension_mask0_q | GlobalOffset0_mask1_q;

    // work_dim_NO_SHIFT_REG_buffered(REG,282)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            work_dim_NO_SHIFT_REG_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (WorkgroupDimension_can_write_q == 1'b1)
        begin
            work_dim_NO_SHIFT_REG_buffered_q <= WorkgroupDimension_new_data_q;
        end
    end

    // work_dim_NO_SHIFT_REG(REG,281)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            work_dim_NO_SHIFT_REG_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            work_dim_NO_SHIFT_REG_q <= work_dim_NO_SHIFT_REG_buffered_q;
        end
    end

    // work_dim(GPOUT,483)
    assign work_dim = work_dim_NO_SHIFT_REG_q;

    // WorkgroupSize_mask0(LOGICAL,75)
    assign WorkgroupSize_mask0_q = bit_enable_top_bar_b & workgroup_size_NO_SHIFT_REG_buffered_q;

    // WorkgroupSize_new_data(LOGICAL,77)
    assign WorkgroupSize_new_data_q = WorkgroupSize_mask0_q | GlobalOffset0_upper_mask1_q;

    // workgroup_size_NO_SHIFT_REG_buffered(REG,284)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            workgroup_size_NO_SHIFT_REG_buffered_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (WorkgroupDimension_can_write_q == 1'b1)
        begin
            workgroup_size_NO_SHIFT_REG_buffered_q <= WorkgroupSize_new_data_q;
        end
    end

    // workgroup_size_NO_SHIFT_REG(REG,283)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            workgroup_size_NO_SHIFT_REG_q <= $unsigned(32'b00000000000000000000000000000001);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            workgroup_size_NO_SHIFT_REG_q <= workgroup_size_NO_SHIFT_REG_buffered_q;
        end
    end

    // workgroup_size(GPOUT,484)
    assign workgroup_size = workgroup_size_NO_SHIFT_REG_q;

endmodule
