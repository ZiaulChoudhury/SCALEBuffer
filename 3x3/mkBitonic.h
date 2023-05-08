/*
 * Generated by Bluespec Compiler, version 2023.01 (build 52adafa5)
 * 
 * On Mon May  8 19:05:47 IST 2023
 * 
 */

/* Generation options: */
#ifndef __mkBitonic_h__
#define __mkBitonic_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"


/* Class declaration for the mkBitonic module */
class MOD_mkBitonic : public Module {
 
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
  MOD_Reg<tUInt8> INST__unnamed_;
  MOD_Reg<tUInt8> INST__unnamed__0_1;
  MOD_Reg<tUInt8> INST__unnamed__0_2;
  MOD_Reg<tUInt8> INST__unnamed__0_3;
  MOD_Reg<tUInt8> INST__unnamed__0_4;
  MOD_Reg<tUInt8> INST__unnamed__0_5;
  MOD_Reg<tUInt8> INST__unnamed__0_6;
  MOD_Reg<tUInt8> INST__unnamed__1;
  MOD_Reg<tUInt8> INST__unnamed__10;
  MOD_Reg<tUInt8> INST__unnamed__10_1;
  MOD_Reg<tUInt8> INST__unnamed__10_2;
  MOD_Reg<tUInt8> INST__unnamed__10_3;
  MOD_Reg<tUInt8> INST__unnamed__10_4;
  MOD_Reg<tUInt8> INST__unnamed__10_5;
  MOD_Reg<tUInt8> INST__unnamed__10_6;
  MOD_Reg<tUInt8> INST__unnamed__11;
  MOD_Reg<tUInt8> INST__unnamed__11_1;
  MOD_Reg<tUInt8> INST__unnamed__11_2;
  MOD_Reg<tUInt8> INST__unnamed__11_3;
  MOD_Reg<tUInt8> INST__unnamed__11_4;
  MOD_Reg<tUInt8> INST__unnamed__11_5;
  MOD_Reg<tUInt8> INST__unnamed__11_6;
  MOD_Reg<tUInt8> INST__unnamed__12;
  MOD_Reg<tUInt8> INST__unnamed__12_1;
  MOD_Reg<tUInt8> INST__unnamed__12_2;
  MOD_Reg<tUInt8> INST__unnamed__12_3;
  MOD_Reg<tUInt8> INST__unnamed__12_4;
  MOD_Reg<tUInt8> INST__unnamed__12_5;
  MOD_Reg<tUInt8> INST__unnamed__12_6;
  MOD_Reg<tUInt8> INST__unnamed__13;
  MOD_Reg<tUInt8> INST__unnamed__13_1;
  MOD_Reg<tUInt8> INST__unnamed__13_2;
  MOD_Reg<tUInt8> INST__unnamed__13_3;
  MOD_Reg<tUInt8> INST__unnamed__13_4;
  MOD_Reg<tUInt8> INST__unnamed__13_5;
  MOD_Reg<tUInt8> INST__unnamed__13_6;
  MOD_Reg<tUInt8> INST__unnamed__14;
  MOD_Reg<tUInt8> INST__unnamed__14_1;
  MOD_Reg<tUInt8> INST__unnamed__14_2;
  MOD_Reg<tUInt8> INST__unnamed__14_3;
  MOD_Reg<tUInt8> INST__unnamed__14_4;
  MOD_Reg<tUInt8> INST__unnamed__14_5;
  MOD_Reg<tUInt8> INST__unnamed__14_6;
  MOD_Reg<tUInt8> INST__unnamed__15;
  MOD_Reg<tUInt8> INST__unnamed__15_1;
  MOD_Reg<tUInt8> INST__unnamed__15_2;
  MOD_Reg<tUInt8> INST__unnamed__15_3;
  MOD_Reg<tUInt8> INST__unnamed__15_4;
  MOD_Reg<tUInt8> INST__unnamed__15_5;
  MOD_Reg<tUInt8> INST__unnamed__15_6;
  MOD_Reg<tUInt8> INST__unnamed__1_1;
  MOD_Reg<tUInt8> INST__unnamed__1_2;
  MOD_Reg<tUInt8> INST__unnamed__1_3;
  MOD_Reg<tUInt8> INST__unnamed__1_4;
  MOD_Reg<tUInt8> INST__unnamed__1_5;
  MOD_Reg<tUInt8> INST__unnamed__1_6;
  MOD_Reg<tUInt8> INST__unnamed__2;
  MOD_Reg<tUInt8> INST__unnamed__2_1;
  MOD_Reg<tUInt8> INST__unnamed__2_2;
  MOD_Reg<tUInt8> INST__unnamed__2_3;
  MOD_Reg<tUInt8> INST__unnamed__2_4;
  MOD_Reg<tUInt8> INST__unnamed__2_5;
  MOD_Reg<tUInt8> INST__unnamed__2_6;
  MOD_Reg<tUInt8> INST__unnamed__3;
  MOD_Reg<tUInt8> INST__unnamed__3_1;
  MOD_Reg<tUInt8> INST__unnamed__3_2;
  MOD_Reg<tUInt8> INST__unnamed__3_3;
  MOD_Reg<tUInt8> INST__unnamed__3_4;
  MOD_Reg<tUInt8> INST__unnamed__3_5;
  MOD_Reg<tUInt8> INST__unnamed__3_6;
  MOD_Reg<tUInt8> INST__unnamed__4;
  MOD_Reg<tUInt8> INST__unnamed__4_1;
  MOD_Reg<tUInt8> INST__unnamed__4_2;
  MOD_Reg<tUInt8> INST__unnamed__4_3;
  MOD_Reg<tUInt8> INST__unnamed__4_4;
  MOD_Reg<tUInt8> INST__unnamed__4_5;
  MOD_Reg<tUInt8> INST__unnamed__4_6;
  MOD_Reg<tUInt8> INST__unnamed__5;
  MOD_Reg<tUInt8> INST__unnamed__5_1;
  MOD_Reg<tUInt8> INST__unnamed__5_2;
  MOD_Reg<tUInt8> INST__unnamed__5_3;
  MOD_Reg<tUInt8> INST__unnamed__5_4;
  MOD_Reg<tUInt8> INST__unnamed__5_5;
  MOD_Reg<tUInt8> INST__unnamed__5_6;
  MOD_Reg<tUInt8> INST__unnamed__6;
  MOD_Reg<tUInt8> INST__unnamed__6_1;
  MOD_Reg<tUInt8> INST__unnamed__6_2;
  MOD_Reg<tUInt8> INST__unnamed__6_3;
  MOD_Reg<tUInt8> INST__unnamed__6_4;
  MOD_Reg<tUInt8> INST__unnamed__6_5;
  MOD_Reg<tUInt8> INST__unnamed__6_6;
  MOD_Reg<tUInt8> INST__unnamed__7;
  MOD_Reg<tUInt8> INST__unnamed__7_1;
  MOD_Reg<tUInt8> INST__unnamed__7_2;
  MOD_Reg<tUInt8> INST__unnamed__7_3;
  MOD_Reg<tUInt8> INST__unnamed__7_4;
  MOD_Reg<tUInt8> INST__unnamed__7_5;
  MOD_Reg<tUInt8> INST__unnamed__7_6;
  MOD_Reg<tUInt8> INST__unnamed__8;
  MOD_Reg<tUInt8> INST__unnamed__8_1;
  MOD_Reg<tUInt8> INST__unnamed__8_2;
  MOD_Reg<tUInt8> INST__unnamed__8_3;
  MOD_Reg<tUInt8> INST__unnamed__8_4;
  MOD_Reg<tUInt8> INST__unnamed__8_5;
  MOD_Reg<tUInt8> INST__unnamed__8_6;
  MOD_Reg<tUInt8> INST__unnamed__9;
  MOD_Reg<tUInt8> INST__unnamed__9_1;
  MOD_Reg<tUInt8> INST__unnamed__9_2;
  MOD_Reg<tUInt8> INST__unnamed__9_3;
  MOD_Reg<tUInt8> INST__unnamed__9_4;
  MOD_Reg<tUInt8> INST__unnamed__9_5;
  MOD_Reg<tUInt8> INST__unnamed__9_6;
  MOD_Fifo<tUWide> INST_inQ;
  MOD_CReg<tUInt8> INST_p0_rv;
  MOD_CReg<tUInt8> INST_p1_rv;
  MOD_CReg<tUInt8> INST_p2_rv;
  MOD_CReg<tUInt8> INST_p3_rv;
  MOD_CReg<tUInt8> INST_p4_rv;
  MOD_CReg<tUInt8> INST_p5_rv;
  MOD_CReg<tUInt8> INST_p6_rv;
 
 /* Constructor */
 public:
  MOD_mkBitonic(tSimStateHdl simHdl, char const *name, Module *parent);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_RST_N;
 
 /* Port definitions */
 public:
  tUWide PORT_put_datas;
  tUWide PORT_get;
 
 /* Publicly accessible definitions */
 public:
 
 /* Local definitions */
 private:
  tUWide DEF_inQ_first____d246;
  tUWide DEF_unnamed__15_6_00_CONCAT_unnamed__14_6_01_02_CO_ETC___d320;
  tUWide DEF_unnamed__15_6_00_CONCAT_unnamed__14_6_01_02_CO_ETC___d317;
  tUWide DEF_unnamed__15_6_00_CONCAT_unnamed__14_6_01_02_CO_ETC___d314;
  tUInt8 DEF__0_CONCAT_DONTCARE___d269;
 
 /* Rules */
 public:
  void RL__Q1();
  void RL__Q1_1();
  void RL__Q1_2();
  void RL__Q1_3();
  void RL__Q1_4();
  void RL__Q1_5();
  void RL__Q1_6();
  void RL__Q1_7();
  void RL__Q2();
  void RL__Q2_1();
  void RL__Q2_2();
  void RL__Q2_3();
  void RL__Q3();
  void RL__Q3_1();
  void RL__Q3_2();
  void RL__Q3_3();
  void RL__Q3_4();
  void RL__Q3_5();
  void RL__Q3_6();
  void RL__Q3_7();
  void RL__Q4();
  void RL__Q4_1();
  void RL__Q5();
  void RL__Q5_1();
  void RL__Q5_2();
  void RL__Q5_3();
  void RL__Q6();
  void RL__Q6_1();
  void RL__Q6_2();
  void RL__Q6_3();
  void RL__Q6_4();
  void RL__Q6_5();
  void RL__Q6_6();
  void RL__Q6_7();
  void RL__activate1();
  void RL__activate2();
  void RL__activate3();
  void RL__activate4();
  void RL__activate5();
  void RL__activate6();
  void RL__activate7();
 
 /* Methods */
 public:
  void METH_put(tUWide ARG_put_datas);
  tUInt8 METH_RDY_put();
  tUWide METH_get();
  tUInt8 METH_RDY_get();
 
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
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkBitonic &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkBitonic &backing);
  void vcd_prims(tVCDDumpType dt, MOD_mkBitonic &backing);
};

#endif /* ifndef __mkBitonic_h__ */
