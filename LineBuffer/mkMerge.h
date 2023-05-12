/*
 * Generated by Bluespec Compiler, version 2023.01-6-g034050db (build 034050db)
 * 
 * On Fri May 12 17:05:38 IST 2023
 * 
 */

/* Generation options: */
#ifndef __mkMerge_h__
#define __mkMerge_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"
#include "mkCoalesce.h"


/* Class declaration for the mkMerge module */
class MOD_mkMerge : public Module {
 
 /* Clock handles */
 private:
  tClock __clk_handle_0;
 
 /* Clock gate handles */
 public:
  tUInt8 *clk_gate[0];
 
 /* Instantiation parameters */
 public:
 
 /* Module state */
 public:
  MOD_Reg<tUInt32> INST__unnamed_;
  MOD_Reg<tUInt32> INST__unnamed__0_1;
  MOD_Reg<tUInt32> INST__unnamed__0_2;
  MOD_Reg<tUInt32> INST__unnamed__0_3;
  MOD_Reg<tUInt64> INST__unnamed__0_4;
  MOD_Reg<tUInt64> INST__unnamed__0_5;
  MOD_Reg<tUInt64> INST__unnamed__0_6;
  MOD_Reg<tUInt64> INST__unnamed__0_7;
  MOD_Reg<tUInt8> INST__unnamed__1;
  MOD_Reg<tUInt32> INST__unnamed__1_1;
  MOD_Reg<tUInt32> INST__unnamed__1_2;
  MOD_Reg<tUInt32> INST__unnamed__1_3;
  MOD_Reg<tUInt64> INST__unnamed__1_4;
  MOD_Reg<tUInt64> INST__unnamed__1_5;
  MOD_Reg<tUInt64> INST__unnamed__1_6;
  MOD_Reg<tUInt64> INST__unnamed__1_7;
  MOD_Reg<tUInt8> INST__unnamed__2;
  MOD_Reg<tUInt32> INST__unnamed__2_1;
  MOD_Reg<tUInt32> INST__unnamed__2_2;
  MOD_Reg<tUInt32> INST__unnamed__2_3;
  MOD_Reg<tUInt64> INST__unnamed__2_4;
  MOD_Reg<tUInt64> INST__unnamed__2_5;
  MOD_Reg<tUInt64> INST__unnamed__2_6;
  MOD_Reg<tUInt64> INST__unnamed__2_7;
  MOD_Reg<tUInt8> INST__unnamed__3;
  MOD_Reg<tUInt32> INST__unnamed__3_1;
  MOD_Reg<tUInt32> INST__unnamed__3_2;
  MOD_Reg<tUInt32> INST__unnamed__3_3;
  MOD_Reg<tUInt64> INST__unnamed__3_4;
  MOD_Reg<tUInt64> INST__unnamed__3_5;
  MOD_Reg<tUInt64> INST__unnamed__3_6;
  MOD_Reg<tUInt64> INST__unnamed__3_7;
  MOD_Reg<tUInt8> INST__unnamed__4;
  MOD_Reg<tUInt32> INST__unnamed__4_1;
  MOD_Reg<tUInt32> INST__unnamed__4_2;
  MOD_Reg<tUInt32> INST__unnamed__4_3;
  MOD_Reg<tUInt64> INST__unnamed__4_4;
  MOD_Reg<tUInt64> INST__unnamed__4_5;
  MOD_Reg<tUInt64> INST__unnamed__4_6;
  MOD_Reg<tUInt64> INST__unnamed__4_7;
  MOD_Reg<tUInt8> INST__unnamed__5;
  MOD_Reg<tUInt32> INST__unnamed__5_1;
  MOD_Reg<tUInt32> INST__unnamed__5_2;
  MOD_Reg<tUInt32> INST__unnamed__5_3;
  MOD_Reg<tUInt64> INST__unnamed__5_4;
  MOD_Reg<tUInt64> INST__unnamed__5_5;
  MOD_Reg<tUInt64> INST__unnamed__5_6;
  MOD_Reg<tUInt64> INST__unnamed__5_7;
  MOD_Reg<tUInt8> INST__unnamed__6;
  MOD_Reg<tUInt32> INST__unnamed__6_1;
  MOD_Reg<tUInt32> INST__unnamed__6_2;
  MOD_Reg<tUInt32> INST__unnamed__6_3;
  MOD_Reg<tUInt64> INST__unnamed__6_4;
  MOD_Reg<tUInt64> INST__unnamed__6_5;
  MOD_Reg<tUInt64> INST__unnamed__6_6;
  MOD_Reg<tUInt64> INST__unnamed__6_7;
  MOD_Reg<tUInt8> INST__unnamed__7;
  MOD_Reg<tUInt32> INST__unnamed__7_1;
  MOD_Reg<tUInt32> INST__unnamed__7_2;
  MOD_Reg<tUInt32> INST__unnamed__7_3;
  MOD_Reg<tUInt64> INST__unnamed__7_4;
  MOD_Reg<tUInt64> INST__unnamed__7_5;
  MOD_Reg<tUInt64> INST__unnamed__7_6;
  MOD_Reg<tUInt64> INST__unnamed__7_7;
  MOD_Reg<tUInt8> INST__unnamed__8;
  MOD_Reg<tUInt64> INST__unnamed__9;
  MOD_mkCoalesce INST_coax_0;
  MOD_mkCoalesce INST_coax_1;
  MOD_Reg<tUInt32> INST_cx;
  MOD_Reg<tUInt32> INST_cx2;
  MOD_Fifo<tUInt64> INST_inQ;
  MOD_Reg<tUInt8> INST_kernel;
  MOD_BRAM<tUInt32,tUInt64,tUInt8> INST_mem_memory;
  MOD_Wire<tUInt8> INST_mem_pwClear;
  MOD_Wire<tUInt8> INST_mem_pwDequeue;
  MOD_Wire<tUInt8> INST_mem_pwEnqueue;
  MOD_Reg<tUWide> INST_mem_rCache;
  MOD_ConfigReg<tUInt32> INST_mem_rRdPtr;
  MOD_ConfigReg<tUInt32> INST_mem_rWrPtr;
  MOD_Wire<tUInt64> INST_mem_wDataIn;
  MOD_Wire<tUInt64> INST_mem_wDataOut;
  MOD_Reg<tUInt8> INST_mx;
  MOD_CReg<tUInt8> INST_p0_rv;
  MOD_CReg<tUInt8> INST_p1_rv;
  MOD_CReg<tUInt8> INST_p2_rv;
  MOD_CReg<tUInt8> INST_p3_rv;
  MOD_CReg<tUInt8> INST_p4_rv;
  MOD_CReg<tUInt8> INST_p5_rv;
  MOD_CReg<tUInt8> INST_p6_rv;
  MOD_CReg<tUInt8> INST_p7_rv;
  MOD_CReg<tUInt8> INST_p8_rv;
  MOD_Reg<tUInt32> INST_width;
 
 /* Constructor */
 public:
  MOD_mkMerge(tSimStateHdl simHdl, char const *name, Module *parent);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_RST_N;
 
 /* Port definitions */
 public:
  tUWide PORT_get_0;
  tUWide PORT_get_1;
 
 /* Publicly accessible definitions */
 public:
  tUInt32 DEF_x__h6041;
  tUInt32 DEF_x__h5967;
  tUInt32 DEF_b__h14772;
 
 /* Local definitions */
 private:
  tUInt64 DEF_x__h10623;
  tUWide DEF_mem_rCache___d25;
  tUInt64 DEF_d__h17169;
  tUInt64 DEF_x__h14711;
  tUInt64 DEF_x__h13762;
  tUInt64 DEF_x__h12813;
  tUInt64 DEF_x__h11864;
  tUInt64 DEF_x__h10915;
  tUInt64 DEF_x__h9966;
  tUInt64 DEF_x__h14566;
  tUInt64 DEF_x__h13617;
  tUInt64 DEF_x__h12668;
  tUInt64 DEF_x__h11719;
  tUInt64 DEF_x__h10770;
  tUInt64 DEF_x__h9821;
  tUInt64 DEF_x__h14419;
  tUInt64 DEF_x__h13470;
  tUInt64 DEF_x__h12521;
  tUInt64 DEF_x__h11572;
  tUInt64 DEF_x__h9674;
  tUInt32 DEF_x__h14272;
  tUInt32 DEF_x__h13323;
  tUInt32 DEF_x__h12374;
  tUInt32 DEF_x__h11425;
  tUInt32 DEF_x__h10476;
  tUInt32 DEF_x__h9527;
  tUInt32 DEF_x__h14125;
  tUInt32 DEF_x__h13176;
  tUInt32 DEF_x__h12227;
  tUInt32 DEF_x__h11278;
  tUInt32 DEF_x__h10329;
  tUInt32 DEF_x__h9380;
  tUInt32 DEF_x__h13940;
  tUInt32 DEF_x__h12991;
  tUInt32 DEF_x__h12042;
  tUInt32 DEF_x__h11093;
  tUInt32 DEF_x__h10144;
  tUInt32 DEF_x__h9195;
  tUInt8 DEF_x__h13854;
  tUInt8 DEF_x__h12905;
  tUInt8 DEF_x__h11956;
  tUInt8 DEF_x__h11007;
  tUInt8 DEF_x__h10058;
  tUInt8 DEF_x__h9109;
  tUInt8 DEF_mx__h14608;
  tUInt8 DEF_mem_pwClear_whas____d3;
  tUInt8 DEF_mx_BIT_6___h14611;
  tUInt8 DEF_mx_BIT_5___h14466;
  tUInt8 DEF_mx_BIT_4___h14319;
  tUInt8 DEF_mx_BIT_3___h14172;
  tUInt8 DEF_mx_BIT_2___h14025;
  tUInt64 DEF_x__h14639;
  tUInt64 DEF_x__h13690;
  tUInt64 DEF_x__h12741;
  tUInt64 DEF_x__h11792;
  tUInt64 DEF_x__h10843;
  tUInt64 DEF_x__h9894;
  tUInt64 DEF_x__h14494;
  tUInt64 DEF_x__h13545;
  tUInt64 DEF_x__h12596;
  tUInt64 DEF_x__h11647;
  tUInt64 DEF_x__h10698;
  tUInt64 DEF_x__h9749;
  tUInt64 DEF_x__h14347;
  tUInt64 DEF_x__h13398;
  tUInt64 DEF_x__h12449;
  tUInt64 DEF_x__h11500;
  tUInt64 DEF_x__h10551;
  tUInt64 DEF_x__h9602;
  tUInt64 DEF_x__h14200;
  tUInt64 DEF_x__h13251;
  tUInt64 DEF_x__h12302;
  tUInt64 DEF_x__h11353;
  tUInt64 DEF_x__h10404;
  tUInt64 DEF_x__h9455;
  tUInt32 DEF_x__h14053;
  tUInt32 DEF_x__h13104;
  tUInt32 DEF_x__h12155;
  tUInt32 DEF_x__h11206;
  tUInt32 DEF_x__h10257;
  tUInt32 DEF_x__h9308;
  tUWide DEF__1_CONCAT_mem_rWrPtr_read_CONCAT_IF_mem_wDataIn_ETC___d16;
  tUInt8 DEF__0_CONCAT_DONTCARE___d283;
  tUInt8 DEF_NOT_mem_pwClear_whas___d9;
 
 /* Rules */
 public:
  void RL_inCLK();
  void RL_mem_portA();
  void RL_mem_portB();
  void RL_mem_portB_read_data();
  void RL__Q1();
  void RL__Q2();
  void RL__Q3();
  void RL__Q4();
  void RL__Q5();
  void RL__Q6();
  void RL__Q7();
  void RL__Q1_1();
  void RL__Q2_1();
  void RL__Q3_1();
  void RL__Q4_1();
  void RL__Q5_1();
  void RL__Q6_1();
  void RL__Q7_1();
  void RL__Q1_2();
  void RL__Q2_2();
  void RL__Q3_2();
  void RL__Q4_2();
  void RL__Q5_2();
  void RL__Q6_2();
  void RL__Q7_2();
  void RL__Q1_3();
  void RL__Q2_3();
  void RL__Q3_3();
  void RL__Q4_3();
  void RL__Q5_3();
  void RL__Q6_3();
  void RL__Q7_3();
  void RL__Q1_4();
  void RL__Q2_4();
  void RL__Q3_4();
  void RL__Q4_4();
  void RL__Q5_4();
  void RL__Q6_4();
  void RL__Q7_4();
  void RL__Q1_5();
  void RL__Q2_5();
  void RL__Q3_5();
  void RL__Q4_5();
  void RL__Q5_5();
  void RL__Q6_5();
  void RL__Q7_5();
  void RL__Q1_6();
  void RL__Q2_6();
  void RL__Q3_6();
  void RL__Q4_6();
  void RL__Q5_6();
  void RL__Q6_6();
  void RL__Q7_6();
  void RL__activate1();
  void RL__activate2();
  void RL__activate3();
  void RL__activate4();
  void RL__activate5();
  void RL__activate6();
  void RL__activate67();
  void RL_lateralLoad();
  void RL_initialLoad();
  void RL_coalesce();
 
 /* Methods */
 public:
  void METH_put(tUInt64 ARG_put_datas);
  tUInt8 METH_RDY_put();
  tUWide METH_get_0();
  tUInt8 METH_RDY_get_0();
  tUWide METH_get_1();
  tUInt8 METH_RDY_get_1();
  void METH_configure(tUInt8 ARG_configure_a, tUInt8 ARG_configure_m, tUInt32 ARG_configure_wx);
  tUInt8 METH_RDY_configure();
 
 /* Reset routines */
 public:
  void reset_RST_N(tUInt8 ARG_rst_in);
 
 /* Static handles to reset routines */
 public:
 
 /* Pointers to reset fns in parent module for asserting output resets */
 private:
 
 /* Functions for the parent module to register its reset fns */
 public:
 
 /* Functions to set the elaborated clock id */
 public:
  void set_clk_0(char const *s);
 
 /* State dumping routine */
 public:
  void dump_state(unsigned int indent);
 
 /* VCD dumping routines */
 public:
  unsigned int dump_VCD_defs(unsigned int levels);
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkMerge &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkMerge &backing);
  void vcd_prims(tVCDDumpType dt, MOD_mkMerge &backing);
  void vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkMerge &backing);
};

#endif /* ifndef __mkMerge_h__ */
