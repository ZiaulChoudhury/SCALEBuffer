/*
 * Generated by Bluespec Compiler, version 2023.01-6-g034050db (build 034050db)
 * 
 * On Tue May  9 19:08:20 IST 2023
 * 
 */

/* Generation options: */
#ifndef __mkFlowTest3_h__
#define __mkFlowTest3_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"
#include "mkCoalesce3.h"


/* Class declaration for the mkFlowTest3 module */
class MOD_mkFlowTest3 : public Module {
 
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
  MOD_Reg<tUInt32> INST_count;
  MOD_Reg<tUInt8> INST_init;
  MOD_mkCoalesce3 INST_px;
  MOD_Reg<tUInt8> INST_value;
 
 /* Constructor */
 public:
  MOD_mkFlowTest3(tSimStateHdl simHdl, char const *name, Module *parent);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_RST_N;
 
 /* Port definitions */
 public:
 
 /* Publicly accessible definitions */
 public:
 
 /* Local definitions */
 private:
  tUWide DEF_px_get___d19;
 
 /* Rules */
 public:
  void RL_initialize();
  void RL_put();
  void RL_receive();
 
 /* Methods */
 public:
 
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
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkFlowTest3 &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkFlowTest3 &backing);
  void vcd_prims(tVCDDumpType dt, MOD_mkFlowTest3 &backing);
  void vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkFlowTest3 &backing);
};

#endif /* ifndef __mkFlowTest3_h__ */
