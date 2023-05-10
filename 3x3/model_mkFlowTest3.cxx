/*
 * Generated by Bluespec Compiler, version 2023.01-6-g034050db (build 034050db)
 * 
 * On Tue May  9 19:08:20 IST 2023
 * 
 */
#include "bluesim_primitives.h"
#include "model_mkFlowTest3.h"

#include <cstdlib>
#include <time.h>
#include "bluesim_kernel_api.h"
#include "bs_vcd.h"
#include "bs_reset.h"


/* Constructor */
MODEL_mkFlowTest3::MODEL_mkFlowTest3()
{
  mkFlowTest3_instance = NULL;
}

/* Function for creating a new model */
void * new_MODEL_mkFlowTest3()
{
  MODEL_mkFlowTest3 *model = new MODEL_mkFlowTest3();
  return (void *)(model);
}

/* Schedule functions */

static void schedule_posedge_CLK(tSimStateHdl simHdl, void *instance_ptr)
       {
	 MOD_mkFlowTest3 &INST_top = *((MOD_mkFlowTest3 *)(instance_ptr));
	 tUInt8 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__Q1;
	 tUInt8 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__Q1;
	 tUInt8 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate1;
	 tUInt8 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate1;
	 tUInt8 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate2;
	 tUInt8 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate2;
	 tUInt8 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL_fill_window;
	 tUInt8 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL_fill_window;
	 tUInt8 DEF_INST_top_DEF_init___d1;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_initialize;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_initialize;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_put;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_put;
	 tUInt8 DEF_INST_top_DEF_CAN_FIRE_RL_receive;
	 tUInt8 DEF_INST_top_DEF_WILL_FIRE_RL_receive;
	 INST_top.INST_px.METH_RDY_configure();
	 DEF_INST_top_DEF_init___d1 = INST_top.INST_init.METH_read();
	 DEF_INST_top_DEF_CAN_FIRE_RL_initialize = !DEF_INST_top_DEF_init___d1;
	 DEF_INST_top_DEF_WILL_FIRE_RL_initialize = DEF_INST_top_DEF_CAN_FIRE_RL_initialize;
	 DEF_INST_top_DEF_CAN_FIRE_RL_put = INST_top.INST_px.METH_RDY_put() && DEF_INST_top_DEF_init___d1;
	 DEF_INST_top_DEF_WILL_FIRE_RL_put = DEF_INST_top_DEF_CAN_FIRE_RL_put;
	 DEF_INST_top_DEF_CAN_FIRE_RL_receive = INST_top.INST_px.METH_RDY_get();
	 DEF_INST_top_DEF_WILL_FIRE_RL_receive = DEF_INST_top_DEF_CAN_FIRE_RL_receive;
	 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__Q1 = (tUInt8)1u;
	 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__Q1 = DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__Q1;
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_put)
	   INST_top.RL_put();
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_receive)
	   INST_top.RL_receive();
	 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL_fill_window = (tUInt8)(INST_top.INST_px.INST_p1_rv.METH_port0__read() >> 1u) && !((tUInt8)(INST_top.INST_px.INST_p2_rv.METH_port1__read() >> 1u));
	 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL_fill_window = DEF_INST_top_INST_px_DEF_CAN_FIRE_RL_fill_window;
	 if (DEF_INST_top_INST_px_DEF_WILL_FIRE_RL_fill_window)
	   INST_top.INST_px.RL_fill_window();
	 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate2 = (tUInt8)(INST_top.INST_px.INST_p0_rv.METH_port0__read() >> 1u) && !((tUInt8)(INST_top.INST_px.INST_p1_rv.METH_port1__read() >> 1u));
	 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate2 = DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate2;
	 if (DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__Q1)
	   INST_top.INST_px.RL__Q1();
	 if (DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate2)
	   INST_top.INST_px.RL__activate2();
	 DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate1 = INST_top.INST_px.INST_inQ.METH_i_notEmpty() && !((tUInt8)(INST_top.INST_px.INST_p0_rv.METH_port1__read() >> 1u));
	 DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate1 = DEF_INST_top_INST_px_DEF_CAN_FIRE_RL__activate1;
	 if (DEF_INST_top_DEF_WILL_FIRE_RL_initialize)
	   INST_top.RL_initialize();
	 if (DEF_INST_top_INST_px_DEF_WILL_FIRE_RL__activate1)
	   INST_top.INST_px.RL__activate1();
	 INST_top.INST_px.INST_p3_rv.clk((tUInt8)1u, (tUInt8)1u);
	 INST_top.INST_px.INST_p2_rv.clk((tUInt8)1u, (tUInt8)1u);
	 INST_top.INST_px.INST_p1_rv.clk((tUInt8)1u, (tUInt8)1u);
	 INST_top.INST_px.INST_p0_rv.clk((tUInt8)1u, (tUInt8)1u);
	 if (do_reset_ticks(simHdl))
	 {
	   INST_top.INST_px.INST__unnamed_.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__0_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__1_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__2_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__3_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__4_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__5_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__6_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST__unnamed__7_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_0_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_0_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_1_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_1_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_2_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_2_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_3_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_3_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_4_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_4_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_5_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_5_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_6_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_6_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_0.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_1.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_2.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_3.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_4.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_5.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_6.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window_7_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_window2_7_7.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_shift_amount.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_kernel.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_count.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_px.INST_p0_rv.rst_tick_clk((tUInt8)1u);
	   INST_top.INST_px.INST_p1_rv.rst_tick_clk((tUInt8)1u);
	   INST_top.INST_px.INST_p2_rv.rst_tick_clk((tUInt8)1u);
	   INST_top.INST_px.INST_p3_rv.rst_tick_clk((tUInt8)1u);
	   INST_top.INST_px.INST_inQ.rst_tick_clk((tUInt8)1u);
	   INST_top.INST_count.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_init.rst_tick__clk__1((tUInt8)1u);
	   INST_top.INST_value.rst_tick__clk__1((tUInt8)1u);
	 }
       };

/* Model creation/destruction functions */

void MODEL_mkFlowTest3::create_model(tSimStateHdl simHdl, bool master)
{
  sim_hdl = simHdl;
  init_reset_request_counters(sim_hdl);
  mkFlowTest3_instance = new MOD_mkFlowTest3(sim_hdl, "top", NULL);
  bk_get_or_define_clock(sim_hdl, "CLK");
  if (master)
  {
    bk_alter_clock(sim_hdl, bk_get_clock_by_name(sim_hdl, "CLK"), CLK_LOW, false, 0llu, 5llu, 5llu);
    bk_use_default_reset(sim_hdl);
  }
  bk_set_clock_event_fn(sim_hdl,
			bk_get_clock_by_name(sim_hdl, "CLK"),
			schedule_posedge_CLK,
			NULL,
			(tEdgeDirection)(POSEDGE));
  (mkFlowTest3_instance->INST_px.INST_p0_rv.set_clk_0)("CLK");
  (mkFlowTest3_instance->INST_px.INST_p1_rv.set_clk_0)("CLK");
  (mkFlowTest3_instance->INST_px.INST_p2_rv.set_clk_0)("CLK");
  (mkFlowTest3_instance->INST_px.INST_p3_rv.set_clk_0)("CLK");
  (mkFlowTest3_instance->INST_px.INST_inQ.set_clk_0)("CLK");
  (mkFlowTest3_instance->INST_px.set_clk_0)("CLK");
  (mkFlowTest3_instance->set_clk_0)("CLK");
}
void MODEL_mkFlowTest3::destroy_model()
{
  delete mkFlowTest3_instance;
  mkFlowTest3_instance = NULL;
}
void MODEL_mkFlowTest3::reset_model(bool asserted)
{
  (mkFlowTest3_instance->reset_RST_N)(asserted ? (tUInt8)0u : (tUInt8)1u);
}
void * MODEL_mkFlowTest3::get_instance()
{
  return mkFlowTest3_instance;
}

/* Fill in version numbers */
void MODEL_mkFlowTest3::get_version(char const **name, char const **build)
{
  *name = "2023.01-6-g034050db";
  *build = "034050db";
}

/* Get the model creation time */
time_t MODEL_mkFlowTest3::get_creation_time()
{
  
  /* Tue May  9 13:38:20 UTC 2023 */
  return 1683639500llu;
}

/* State dumping function */
void MODEL_mkFlowTest3::dump_state()
{
  (mkFlowTest3_instance->dump_state)(0u);
}

/* VCD dumping functions */
MOD_mkFlowTest3 & mkFlowTest3_backing(tSimStateHdl simHdl)
{
  static MOD_mkFlowTest3 *instance = NULL;
  if (instance == NULL)
  {
    vcd_set_backing_instance(simHdl, true);
    instance = new MOD_mkFlowTest3(simHdl, "top", NULL);
    vcd_set_backing_instance(simHdl, false);
  }
  return *instance;
}
void MODEL_mkFlowTest3::dump_VCD_defs()
{
  (mkFlowTest3_instance->dump_VCD_defs)(vcd_depth(sim_hdl));
}
void MODEL_mkFlowTest3::dump_VCD(tVCDDumpType dt)
{
  (mkFlowTest3_instance->dump_VCD)(dt, vcd_depth(sim_hdl), mkFlowTest3_backing(sim_hdl));
}
