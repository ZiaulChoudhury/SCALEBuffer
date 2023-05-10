/*
 * Generated by Bluespec Compiler, version 2023.01-6-g034050db (build 034050db)
 * 
 * On Tue May  9 19:08:20 IST 2023
 * 
 */
#include "bluesim_primitives.h"
#include "mkFlowTest3.h"


/* Literal declarations */
static unsigned int const UWide_literal_512_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa_arr[] = { 2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u,
																							2863311530u };
static tUWide const UWide_literal_512_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa(512u,
																					UWide_literal_512_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa_arr);


/* String declarations */
static std::string const __str_literal_1("%d", 2u);


/* Constructor */
MOD_mkFlowTest3::MOD_mkFlowTest3(tSimStateHdl simHdl, char const *name, Module *parent)
  : Module(simHdl, name, parent),
    __clk_handle_0(BAD_CLOCK_HANDLE),
    INST_count(simHdl, "count", this, 32u, 0u, (tUInt8)0u),
    INST_init(simHdl, "init", this, 1u, (tUInt8)0u, (tUInt8)0u),
    INST_px(simHdl, "px", this),
    INST_value(simHdl, "value", this, 8u, (tUInt8)1u, (tUInt8)0u),
    PORT_RST_N((tUInt8)1u),
    DEF_px_get___d19(512u)
{
  symbol_count = 7u;
  symbols = new tSym[symbol_count];
  init_symbols_0();
}


/* Symbol init fns */

void MOD_mkFlowTest3::init_symbols_0()
{
  init_symbol(&symbols[0u], "count", SYM_MODULE, &INST_count);
  init_symbol(&symbols[1u], "init", SYM_MODULE, &INST_init);
  init_symbol(&symbols[2u], "px", SYM_MODULE, &INST_px);
  init_symbol(&symbols[3u], "RL_initialize", SYM_RULE);
  init_symbol(&symbols[4u], "RL_put", SYM_RULE);
  init_symbol(&symbols[5u], "RL_receive", SYM_RULE);
  init_symbol(&symbols[6u], "value", SYM_MODULE, &INST_value);
}


/* Rule actions */

void MOD_mkFlowTest3::RL_initialize()
{
  INST_px.METH_configure(5u, (tUInt8)5u);
  INST_init.METH_write((tUInt8)1u);
}

void MOD_mkFlowTest3::RL_put()
{
  tUInt8 DEF_value_PLUS_1___d6;
  tUInt64 DEF__0_CONCAT_5_MUL_value_BITS_7_TO_0_CONCAT_value__ETC___d17;
  tUInt8 DEF_value_BITS_5_TO_0___h1227;
  tUInt8 DEF_value_BITS_6_TO_0___h1356;
  tUInt8 DEF_value__h1421;
  DEF_value__h1421 = INST_value.METH_read();
  DEF_value_BITS_6_TO_0___h1356 = (tUInt8)((tUInt8)127u & DEF_value__h1421);
  DEF_value_BITS_5_TO_0___h1227 = (tUInt8)((tUInt8)63u & DEF_value__h1421);
  DEF__0_CONCAT_5_MUL_value_BITS_7_TO_0_CONCAT_value__ETC___d17 = (((((((((tUInt64)(0u)) << 40u) | (((tUInt64)((tUInt8)((tUInt8)255u & (65535u & (((tUInt32)((tUInt8)5u)) * ((tUInt32)(DEF_value__h1421))))))) << 32u)) | (((tUInt64)(DEF_value_BITS_5_TO_0___h1227)) << 26u)) | (((tUInt64)((tUInt8)0u)) << 24u)) | (((tUInt64)((tUInt8)((tUInt8)255u & (65535u & (((tUInt32)((tUInt8)3u)) * ((tUInt32)(DEF_value__h1421))))))) << 16u)) | (((tUInt64)(DEF_value_BITS_6_TO_0___h1356)) << 9u)) | (((tUInt64)((tUInt8)0u)) << 8u)) | (tUInt64)(DEF_value__h1421);
  DEF_value_PLUS_1___d6 = (tUInt8)255u & (DEF_value__h1421 + (tUInt8)1u);
  INST_value.METH_write(DEF_value_PLUS_1___d6);
  INST_px.METH_put(DEF__0_CONCAT_5_MUL_value_BITS_7_TO_0_CONCAT_value__ETC___d17);
}

void MOD_mkFlowTest3::RL_receive()
{
  tUInt32 DEF_count_0_PLUS_1___d71;
  tUInt8 DEF_count_0_EQ_1___d72;
  tUInt32 DEF_b__h5874;
  tUInt8 DEF_unsigned_px_get_9_BITS_15_TO_8_2___d23;
  tUInt8 DEF_unsigned_px_get_9_BITS_7_TO_0_0___d21;
  tUInt8 DEF_unsigned_px_get_9_BITS_23_TO_16_4___d25;
  tUInt8 DEF_unsigned_px_get_9_BITS_31_TO_24_6___d27;
  tUInt8 DEF_unsigned_px_get_9_BITS_39_TO_32_8___d29;
  tUInt8 DEF_unsigned_px_get_9_BITS_71_TO_64_0___d31;
  tUInt8 DEF_unsigned_px_get_9_BITS_79_TO_72_2___d33;
  tUInt8 DEF_unsigned_px_get_9_BITS_87_TO_80_4___d35;
  tUInt8 DEF_unsigned_px_get_9_BITS_95_TO_88_6___d37;
  tUInt8 DEF_unsigned_px_get_9_BITS_103_TO_96_8___d39;
  tUInt8 DEF_unsigned_px_get_9_BITS_135_TO_128_0___d41;
  tUInt8 DEF_unsigned_px_get_9_BITS_143_TO_136_2___d43;
  tUInt8 DEF_unsigned_px_get_9_BITS_151_TO_144_4___d45;
  tUInt8 DEF_unsigned_px_get_9_BITS_159_TO_152_6___d47;
  tUInt8 DEF_unsigned_px_get_9_BITS_167_TO_160_8___d49;
  tUInt8 DEF_unsigned_px_get_9_BITS_199_TO_192_0___d51;
  tUInt8 DEF_unsigned_px_get_9_BITS_207_TO_200_2___d53;
  tUInt8 DEF_unsigned_px_get_9_BITS_215_TO_208_4___d55;
  tUInt8 DEF_unsigned_px_get_9_BITS_223_TO_216_6___d57;
  tUInt8 DEF_unsigned_px_get_9_BITS_231_TO_224_8___d59;
  tUInt8 DEF_unsigned_px_get_9_BITS_263_TO_256_0___d61;
  tUInt8 DEF_unsigned_px_get_9_BITS_271_TO_264_2___d63;
  tUInt8 DEF_unsigned_px_get_9_BITS_279_TO_272_4___d65;
  tUInt8 DEF_unsigned_px_get_9_BITS_287_TO_280_6___d67;
  tUInt8 DEF_unsigned_px_get_9_BITS_295_TO_288_8___d69;
  tUWide DEF_AVMeth_px_get(512u, false);
  DEF_b__h5874 = INST_count.METH_read();
  DEF_count_0_EQ_1___d72 = DEF_b__h5874 == 1u;
  DEF_count_0_PLUS_1___d71 = DEF_b__h5874 + 1u;
  DEF_AVMeth_px_get = INST_px.METH_get();
  DEF_px_get___d19 = DEF_AVMeth_px_get;
  DEF_unsigned_px_get_9_BITS_295_TO_288_8___d69 = DEF_px_get___d19.get_bits_in_word8(9u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_287_TO_280_6___d67 = DEF_px_get___d19.get_bits_in_word8(8u, 24u, 8u);
  DEF_unsigned_px_get_9_BITS_279_TO_272_4___d65 = DEF_px_get___d19.get_bits_in_word8(8u, 16u, 8u);
  DEF_unsigned_px_get_9_BITS_271_TO_264_2___d63 = DEF_px_get___d19.get_bits_in_word8(8u, 8u, 8u);
  DEF_unsigned_px_get_9_BITS_263_TO_256_0___d61 = DEF_px_get___d19.get_bits_in_word8(8u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_231_TO_224_8___d59 = DEF_px_get___d19.get_bits_in_word8(7u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_223_TO_216_6___d57 = DEF_px_get___d19.get_bits_in_word8(6u, 24u, 8u);
  DEF_unsigned_px_get_9_BITS_215_TO_208_4___d55 = DEF_px_get___d19.get_bits_in_word8(6u, 16u, 8u);
  DEF_unsigned_px_get_9_BITS_207_TO_200_2___d53 = DEF_px_get___d19.get_bits_in_word8(6u, 8u, 8u);
  DEF_unsigned_px_get_9_BITS_199_TO_192_0___d51 = DEF_px_get___d19.get_bits_in_word8(6u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_167_TO_160_8___d49 = DEF_px_get___d19.get_bits_in_word8(5u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_159_TO_152_6___d47 = DEF_px_get___d19.get_bits_in_word8(4u, 24u, 8u);
  DEF_unsigned_px_get_9_BITS_151_TO_144_4___d45 = DEF_px_get___d19.get_bits_in_word8(4u, 16u, 8u);
  DEF_unsigned_px_get_9_BITS_143_TO_136_2___d43 = DEF_px_get___d19.get_bits_in_word8(4u, 8u, 8u);
  DEF_unsigned_px_get_9_BITS_135_TO_128_0___d41 = DEF_px_get___d19.get_bits_in_word8(4u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_103_TO_96_8___d39 = DEF_px_get___d19.get_bits_in_word8(3u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_95_TO_88_6___d37 = DEF_px_get___d19.get_bits_in_word8(2u, 24u, 8u);
  DEF_unsigned_px_get_9_BITS_79_TO_72_2___d33 = DEF_px_get___d19.get_bits_in_word8(2u, 8u, 8u);
  DEF_unsigned_px_get_9_BITS_87_TO_80_4___d35 = DEF_px_get___d19.get_bits_in_word8(2u, 16u, 8u);
  DEF_unsigned_px_get_9_BITS_71_TO_64_0___d31 = DEF_px_get___d19.get_bits_in_word8(2u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_39_TO_32_8___d29 = DEF_px_get___d19.get_bits_in_word8(1u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_31_TO_24_6___d27 = DEF_px_get___d19.get_bits_in_word8(0u, 24u, 8u);
  DEF_unsigned_px_get_9_BITS_23_TO_16_4___d25 = DEF_px_get___d19.get_bits_in_word8(0u, 16u, 8u);
  DEF_unsigned_px_get_9_BITS_7_TO_0_0___d21 = DEF_px_get___d19.get_bits_in_word8(0u, 0u, 8u);
  DEF_unsigned_px_get_9_BITS_15_TO_8_2___d23 = DEF_px_get___d19.get_bits_in_word8(0u, 8u, 8u);
  if (!(PORT_RST_N == (tUInt8)0u))
  {
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_7_TO_0_0___d21);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_15_TO_8_2___d23);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_23_TO_16_4___d25);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_31_TO_24_6___d27);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_39_TO_32_8___d29);
    dollar_display(sim_hdl, this);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_71_TO_64_0___d31);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_79_TO_72_2___d33);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_87_TO_80_4___d35);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_95_TO_88_6___d37);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_103_TO_96_8___d39);
    dollar_display(sim_hdl, this);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_135_TO_128_0___d41);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_143_TO_136_2___d43);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_151_TO_144_4___d45);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_159_TO_152_6___d47);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_167_TO_160_8___d49);
    dollar_display(sim_hdl, this);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_199_TO_192_0___d51);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_207_TO_200_2___d53);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_215_TO_208_4___d55);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_223_TO_216_6___d57);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_231_TO_224_8___d59);
    dollar_display(sim_hdl, this);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_263_TO_256_0___d61);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_271_TO_264_2___d63);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_279_TO_272_4___d65);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_287_TO_280_6___d67);
    dollar_write(sim_hdl, this, "s,8", &__str_literal_1, DEF_unsigned_px_get_9_BITS_295_TO_288_8___d69);
    dollar_display(sim_hdl, this);
    dollar_display(sim_hdl, this);
  }
  INST_count.METH_write(DEF_count_0_PLUS_1___d71);
  if (!(PORT_RST_N == (tUInt8)0u))
    if (DEF_count_0_EQ_1___d72)
      dollar_finish(sim_hdl, "32", 0u);
}


/* Methods */


/* Reset routines */

void MOD_mkFlowTest3::reset_RST_N(tUInt8 ARG_rst_in)
{
  PORT_RST_N = ARG_rst_in;
  INST_value.reset_RST(ARG_rst_in);
  INST_px.reset_RST_N(ARG_rst_in);
  INST_init.reset_RST(ARG_rst_in);
  INST_count.reset_RST(ARG_rst_in);
}


/* Static handles to reset routines */


/* Functions for the parent module to register its reset fns */


/* Functions to set the elaborated clock id */

void MOD_mkFlowTest3::set_clk_0(char const *s)
{
  __clk_handle_0 = bk_get_or_define_clock(sim_hdl, s);
}


/* State dumping routine */
void MOD_mkFlowTest3::dump_state(unsigned int indent)
{
  printf("%*s%s:\n", indent, "", inst_name);
  INST_count.dump_state(indent + 2u);
  INST_init.dump_state(indent + 2u);
  INST_px.dump_state(indent + 2u);
  INST_value.dump_state(indent + 2u);
}


/* VCD dumping routines */

unsigned int MOD_mkFlowTest3::dump_VCD_defs(unsigned int levels)
{
  vcd_write_scope_start(sim_hdl, inst_name);
  vcd_num = vcd_reserve_ids(sim_hdl, 5u);
  unsigned int num = vcd_num;
  for (unsigned int clk = 0u; clk < bk_num_clocks(sim_hdl); ++clk)
    vcd_add_clock_def(sim_hdl, this, bk_clock_name(sim_hdl, clk), bk_clock_vcd_num(sim_hdl, clk));
  vcd_write_def(sim_hdl, bk_clock_vcd_num(sim_hdl, __clk_handle_0), "CLK", 1u);
  vcd_write_def(sim_hdl, num++, "RST_N", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "px_get___d19", 512u);
  num = INST_count.dump_VCD_defs(num);
  num = INST_init.dump_VCD_defs(num);
  num = INST_value.dump_VCD_defs(num);
  if (levels != 1u)
  {
    unsigned int l = levels == 0u ? 0u : levels - 1u;
    num = INST_px.dump_VCD_defs(l);
  }
  vcd_write_scope_end(sim_hdl);
  return num;
}

void MOD_mkFlowTest3::dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkFlowTest3 &backing)
{
  vcd_defs(dt, backing);
  vcd_prims(dt, backing);
  if (levels != 1u)
    vcd_submodules(dt, levels - 1u, backing);
}

void MOD_mkFlowTest3::vcd_defs(tVCDDumpType dt, MOD_mkFlowTest3 &backing)
{
  unsigned int num = vcd_num;
  if (dt == VCD_DUMP_XS)
  {
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 512u);
  }
  else
    if (dt == VCD_DUMP_CHANGES)
    {
      if ((backing.PORT_RST_N) != PORT_RST_N)
      {
	vcd_write_val(sim_hdl, num, PORT_RST_N, 1u);
	backing.PORT_RST_N = PORT_RST_N;
      }
      ++num;
      if ((backing.DEF_px_get___d19) != DEF_px_get___d19)
      {
	vcd_write_val(sim_hdl, num, DEF_px_get___d19, 512u);
	backing.DEF_px_get___d19 = DEF_px_get___d19;
      }
      ++num;
    }
    else
    {
      vcd_write_val(sim_hdl, num++, PORT_RST_N, 1u);
      backing.PORT_RST_N = PORT_RST_N;
      vcd_write_val(sim_hdl, num++, DEF_px_get___d19, 512u);
      backing.DEF_px_get___d19 = DEF_px_get___d19;
    }
}

void MOD_mkFlowTest3::vcd_prims(tVCDDumpType dt, MOD_mkFlowTest3 &backing)
{
  INST_count.dump_VCD(dt, backing.INST_count);
  INST_init.dump_VCD(dt, backing.INST_init);
  INST_value.dump_VCD(dt, backing.INST_value);
}

void MOD_mkFlowTest3::vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkFlowTest3 &backing)
{
  INST_px.dump_VCD(dt, levels, backing.INST_px);
}
