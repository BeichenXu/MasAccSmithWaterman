
/* This header file describes the Register Map for the SmithWatermanKernel kernel */

/* Note that this header file should NOT be included directly! */
/* Please include the top-level header file register_map_offsets.h instead! */

#ifndef __SMITHWATERMANKERNEL_REGISTER_MAP_REGS_H__
#define __SMITHWATERMANKERNEL_REGISTER_MAP_REGS_H__



/* Status register contains all the control bits to control kernel execution */
/******************************************************************************/
/* Memory Map Summary                                                         */
/******************************************************************************/

/*
 Address | Access | Register     | Argument                            | Description 
---------|--------|--------------|-------------------------------------|-------------------------------
     0x0 |    R/W |   reg0[63:0] |                        Status[63:0] |   * Read/Write the status bits
         |        |              |                                     |       that are described below
---------|--------|--------------|-------------------------------------|-------------------------------
     0x8 |    R/W |   reg1[31:0] |                         Start[31:0] |        * Write 1 to initiate a
         |        |              |                                     |                   kernel start
---------|--------|--------------|-------------------------------------|-------------------------------
    0x30 |      R |   reg6[31:0] |                 FinishCounter[31:0] | * Read to get number of kernel
         |        |  reg6[63:32] |                 FinishCounter[31:0] |       finishes, note that this
         |        |              |                                     |    register will clear on read
---------|--------|--------------|-------------------------------------|-------------------------------
    0x38 |    R/W |   reg7[31:0] |            WorkgroupDimension[31:0] |                              
         |        |  reg7[63:32] |                 WorkgroupSize[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x40 |    R/W |   reg8[31:0] |                   GlobalSize0[31:0] |                              
         |        |  reg8[63:32] |                   GlobalSize1[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x48 |    R/W |   reg9[31:0] |                   GlobalSize2[31:0] |                              
         |        |  reg9[63:32] |                    NumGroups0[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x50 |    R/W |  reg10[31:0] |                    NumGroups1[31:0] |                              
         |        | reg10[63:32] |                    NumGroups2[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x58 |    R/W |  reg11[31:0] |                    LocalSize0[31:0] |                              
         |        | reg11[63:32] |                    LocalSize1[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x60 |    R/W |  reg12[31:0] |                    LocalSize2[31:0] |                              
         |        | reg12[63:32] |                        Unused[31:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x68 |    R/W |  reg13[63:0] |                 GlobalOffset0[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x70 |    R/W |  reg14[63:0] |                 GlobalOffset1[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x78 |    R/W |  reg15[63:0] |                 GlobalOffset2[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x80 |      W |  reg16[63:0] |                 arg_score_acc[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x88 |      W |  reg17[63:0] |                arg_score_acc1[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x90 |      W |  reg18[63:0] |              arg_score_acc1[127:64] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x98 |      W |  reg19[63:0] |                arg_score_acc2[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xa0 |      W |  reg20[63:0] |              arg_score_acc2[127:64] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xa8 |      W |  reg21[63:0] |                arg_score_acc4[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xb0 |      W |  reg22[63:0] |              arg_score_acc4[127:64] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xb8 |      W |  reg23[63:0] |                 arg_seq_a_acc[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xc0 |      W |  reg24[63:0] |                arg_seq_a_acc6[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xc8 |      W |  reg25[63:0] |                arg_seq_a_acc7[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xd0 |      W |  reg26[63:0] |                arg_seq_a_acc9[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xd8 |      W |  reg27[63:0] |                 arg_seq_b_acc[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xe0 |      W |  reg28[63:0] |               arg_seq_b_acc11[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xe8 |      W |  reg29[63:0] |               arg_seq_b_acc12[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0xf0 |      W |  reg30[63:0] |               arg_seq_b_acc14[63:0] |                              

The status register (0x00) has the following layout:

  Byte         |  7  |  6  |  5  |  4  |        3        |        2        |      1      |     0     |
---------------|-----------------------|-----------------------------------|-------------------------|
  Description  |        Reserved       |      CSR Address Map Version      |    kernel_status Bits   |

If the structure of the generated CSR changes in future versions of the Intel® oneAPI DPC++/C++ Compiler,
the CSR address map version will be updated. The current CSR address map version is 5.
If the CSR address map version changes, review the generated CSR structure and any code that depends
on the CSR structure.
The kernel_status bits have the following layout:

  Bit          |    15     |    14:5    |     4     |     3     |    2    |    1    |     0      |
---------------|-----------|------------|-----------|-----------|---------|---------|------------|
  Description  |  running  |  reserved  |  unstall  |  stalled  |  busy   |  done   |  reserved  |

*/

#define CSR_VERSION_NUMBER (5)

/******************************************************************************/
/* Register Address Macros                                                    */
/******************************************************************************/

/* Status Register Bit Offsets (Bits) */
/* Note: Bits In Status Registers Are Marked As Read-Only or Read-Write
   Please Do Not Write To Read-Only Bits */
#ifndef __REGISTER_BITOFFSET_MACROS__
#define __REGISTER_BITOFFSET_MACROS__
#define KERNEL_REGISTER_MAP_DONE_OFFSET (1) // Read-only
#define KERNEL_REGISTER_MAP_BUSY_OFFSET (2) // Read-only
#define KERNEL_REGISTER_MAP_STALLED_OFFSET (3) // Read-only
#define KERNEL_REGISTER_MAP_UNSTALL_OFFSET (4) // Read-write
#define KERNEL_REGISTER_MAP_RUNNING_OFFSET (15) // Read-only
#endif

/* Status Register Bit Masks (Bits) */
#ifndef __REGISTER_BITMASK_MACROS__
#define __REGISTER_BITMASK_MACROS__
#define KERNEL_REGISTER_MAP_DONE_MASK (0x2)
#define KERNEL_REGISTER_MAP_BUSY_MASK (0x4)
#define KERNEL_REGISTER_MAP_STALLED_MASK (0x8)
#define KERNEL_REGISTER_MAP_UNSTALL_MASK (0x10)
#define KERNEL_REGISTER_MAP_RUNNING_MASK (0x8000)
#endif

/* Byte Addresses */
#define SMITHWATERMANKERNEL_REGISTER_MAP_STATUS_REG (0x0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_START_REG (0x8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_FINISHCOUNTER_REG (0x30 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_FINISHCOUNTER_REG (0x30 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_WORKGROUPDIMENSION_REG (0x38 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_WORKGROUPSIZE_REG (0x38 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALSIZE0_REG (0x40 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALSIZE1_REG (0x40 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALSIZE2_REG (0x48 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_NUMGROUPS0_REG (0x48 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_NUMGROUPS1_REG (0x50 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_NUMGROUPS2_REG (0x50 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_LOCALSIZE0_REG (0x58 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_LOCALSIZE1_REG (0x58 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_LOCALSIZE2_REG (0x60 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_UNUSED_REG (0x60 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALOFFSET0_REG (0x68 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALOFFSET1_REG (0x70 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_GLOBALOFFSET2_REG (0x78 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC_REG (0x80 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_0_REG (0x88 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_1_REG (0x90 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_0_REG (0x98 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_1_REG (0xa0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_0_REG (0xa8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_1_REG (0xb0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC_REG (0xb8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC6_REG (0xc0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC7_REG (0xc8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC9_REG (0xd0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC_REG (0xd8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC11_REG (0xe0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC12_REG (0xe8 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC14_REG (0xf0 + SMITHWATERMANKERNEL_REGISTER_MAP_OFFSET)

/* Argument Sizes (bytes) */
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_0_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_1_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_0_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_1_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_0_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_1_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC6_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC7_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC9_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC11_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC12_SIZE (8)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC14_SIZE (8)

/* Argument Masks */
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_0_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC1_1_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_0_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC2_1_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_0_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SCORE_ACC4_1_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC6_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC7_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_A_ACC9_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC11_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC12_MASK (0xffffffffffffffffULL)
#define SMITHWATERMANKERNEL_REGISTER_MAP_ARG_ARG_SEQ_B_ACC14_MASK (0xffffffffffffffffULL)

#endif /* __SMITHWATERMANKERNEL_REGISTER_MAP_REGS_H__ */
