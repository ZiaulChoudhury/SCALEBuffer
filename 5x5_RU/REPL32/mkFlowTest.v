//
// Generated by Bluespec Compiler, version untagged-gad02e931 (build ad02e931)
//
// On Sun Jan 16 12:50:24 GMT 2022
//
//
// Ports:
// Name                         I/O  size props
// get                            O    32
// RDY_get                        O     1 reg
// RDY_put                        O     1 const
// RDY_configure                  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// put_datas                      I     8 reg
// configure_a                    I     4 reg
// configure_m                    I     8 reg
// configure_wx                   I    12 reg
// configure_wxx                  I    19 reg
// EN_put                         I     1
// EN_configure                   I     1
// EN_get                         I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkFlowTest(CLK,
		  RST_N,

		  EN_get,
		  get,
		  RDY_get,

		  put_datas,
		  EN_put,
		  RDY_put,

		  configure_a,
		  configure_m,
		  configure_wx,
		  configure_wxx,
		  EN_configure,
		  RDY_configure);
  input  CLK;
  input  RST_N;

  // actionvalue method get
  input  EN_get;
  output [31 : 0] get;
  output RDY_get;

  // action method put
  input  [7 : 0] put_datas;
  input  EN_put;
  output RDY_put;

  // action method configure
  input  [3 : 0] configure_a;
  input  [7 : 0] configure_m;
  input  [11 : 0] configure_wx;
  input  [18 : 0] configure_wxx;
  input  EN_configure;
  output RDY_configure;

  // signals for module outputs
  wire [31 : 0] get;
  wire RDY_configure, RDY_get, RDY_put;

  // register count
  reg [31 : 0] count;
  wire [31 : 0] count$D_IN;
  wire count$EN;

  // register fetch
  reg fetch;
  wire fetch$D_IN, fetch$EN;

  // register index
  reg [18 : 0] index;
  wire [18 : 0] index$D_IN;
  wire index$EN;

  // register init
  reg init;
  wire init$D_IN, init$EN;

  // register out
  reg [6399 : 0] out;
  wire [6399 : 0] out$D_IN;
  wire out$EN;

  // register seed
  reg [7 : 0] seed;
  wire [7 : 0] seed$D_IN;
  wire seed$EN;

  // register value
  reg [7 : 0] value;
  wire [7 : 0] value$D_IN;
  wire value$EN;

  // ports of submodule cx_0
  wire [199 : 0] cx_0$put_datas;
  wire [7 : 0] cx_0$put_sumPrev, cx_0$result;
  wire cx_0$EN_put, cx_0$EN_result, cx_0$RDY_result;

  // ports of submodule cx_1
  wire [199 : 0] cx_1$put_datas;
  wire [7 : 0] cx_1$put_sumPrev, cx_1$result;
  wire cx_1$EN_put, cx_1$EN_result, cx_1$RDY_result;

  // ports of submodule cx_10
  wire [199 : 0] cx_10$put_datas;
  wire [7 : 0] cx_10$put_sumPrev, cx_10$result;
  wire cx_10$EN_put, cx_10$EN_result, cx_10$RDY_result;

  // ports of submodule cx_11
  wire [199 : 0] cx_11$put_datas;
  wire [7 : 0] cx_11$put_sumPrev, cx_11$result;
  wire cx_11$EN_put, cx_11$EN_result, cx_11$RDY_result;

  // ports of submodule cx_12
  wire [199 : 0] cx_12$put_datas;
  wire [7 : 0] cx_12$put_sumPrev, cx_12$result;
  wire cx_12$EN_put, cx_12$EN_result, cx_12$RDY_result;

  // ports of submodule cx_13
  wire [199 : 0] cx_13$put_datas;
  wire [7 : 0] cx_13$put_sumPrev, cx_13$result;
  wire cx_13$EN_put, cx_13$EN_result, cx_13$RDY_result;

  // ports of submodule cx_14
  wire [199 : 0] cx_14$put_datas;
  wire [7 : 0] cx_14$put_sumPrev, cx_14$result;
  wire cx_14$EN_put, cx_14$EN_result, cx_14$RDY_result;

  // ports of submodule cx_15
  wire [199 : 0] cx_15$put_datas;
  wire [7 : 0] cx_15$put_sumPrev, cx_15$result;
  wire cx_15$EN_put, cx_15$EN_result, cx_15$RDY_result;

  // ports of submodule cx_16
  wire [199 : 0] cx_16$put_datas;
  wire [7 : 0] cx_16$put_sumPrev, cx_16$result;
  wire cx_16$EN_put, cx_16$EN_result, cx_16$RDY_result;

  // ports of submodule cx_17
  wire [199 : 0] cx_17$put_datas;
  wire [7 : 0] cx_17$put_sumPrev, cx_17$result;
  wire cx_17$EN_put, cx_17$EN_result, cx_17$RDY_result;

  // ports of submodule cx_18
  wire [199 : 0] cx_18$put_datas;
  wire [7 : 0] cx_18$put_sumPrev, cx_18$result;
  wire cx_18$EN_put, cx_18$EN_result, cx_18$RDY_result;

  // ports of submodule cx_19
  wire [199 : 0] cx_19$put_datas;
  wire [7 : 0] cx_19$put_sumPrev, cx_19$result;
  wire cx_19$EN_put, cx_19$EN_result, cx_19$RDY_result;

  // ports of submodule cx_2
  wire [199 : 0] cx_2$put_datas;
  wire [7 : 0] cx_2$put_sumPrev, cx_2$result;
  wire cx_2$EN_put, cx_2$EN_result, cx_2$RDY_result;

  // ports of submodule cx_20
  wire [199 : 0] cx_20$put_datas;
  wire [7 : 0] cx_20$put_sumPrev, cx_20$result;
  wire cx_20$EN_put, cx_20$EN_result, cx_20$RDY_result;

  // ports of submodule cx_21
  wire [199 : 0] cx_21$put_datas;
  wire [7 : 0] cx_21$put_sumPrev, cx_21$result;
  wire cx_21$EN_put, cx_21$EN_result, cx_21$RDY_result;

  // ports of submodule cx_22
  wire [199 : 0] cx_22$put_datas;
  wire [7 : 0] cx_22$put_sumPrev, cx_22$result;
  wire cx_22$EN_put, cx_22$EN_result, cx_22$RDY_result;

  // ports of submodule cx_23
  wire [199 : 0] cx_23$put_datas;
  wire [7 : 0] cx_23$put_sumPrev, cx_23$result;
  wire cx_23$EN_put, cx_23$EN_result, cx_23$RDY_result;

  // ports of submodule cx_24
  wire [199 : 0] cx_24$put_datas;
  wire [7 : 0] cx_24$put_sumPrev, cx_24$result;
  wire cx_24$EN_put, cx_24$EN_result, cx_24$RDY_result;

  // ports of submodule cx_25
  wire [199 : 0] cx_25$put_datas;
  wire [7 : 0] cx_25$put_sumPrev, cx_25$result;
  wire cx_25$EN_put, cx_25$EN_result, cx_25$RDY_result;

  // ports of submodule cx_26
  wire [199 : 0] cx_26$put_datas;
  wire [7 : 0] cx_26$put_sumPrev, cx_26$result;
  wire cx_26$EN_put, cx_26$EN_result, cx_26$RDY_result;

  // ports of submodule cx_27
  wire [199 : 0] cx_27$put_datas;
  wire [7 : 0] cx_27$put_sumPrev, cx_27$result;
  wire cx_27$EN_put, cx_27$EN_result, cx_27$RDY_result;

  // ports of submodule cx_28
  wire [199 : 0] cx_28$put_datas;
  wire [7 : 0] cx_28$put_sumPrev, cx_28$result;
  wire cx_28$EN_put, cx_28$EN_result, cx_28$RDY_result;

  // ports of submodule cx_29
  wire [199 : 0] cx_29$put_datas;
  wire [7 : 0] cx_29$put_sumPrev, cx_29$result;
  wire cx_29$EN_put, cx_29$EN_result, cx_29$RDY_result;

  // ports of submodule cx_3
  wire [199 : 0] cx_3$put_datas;
  wire [7 : 0] cx_3$put_sumPrev, cx_3$result;
  wire cx_3$EN_put, cx_3$EN_result, cx_3$RDY_result;

  // ports of submodule cx_30
  wire [199 : 0] cx_30$put_datas;
  wire [7 : 0] cx_30$put_sumPrev, cx_30$result;
  wire cx_30$EN_put, cx_30$EN_result, cx_30$RDY_result;

  // ports of submodule cx_31
  wire [199 : 0] cx_31$put_datas;
  wire [7 : 0] cx_31$put_sumPrev, cx_31$result;
  wire cx_31$EN_put, cx_31$EN_result, cx_31$RDY_result;

  // ports of submodule cx_4
  wire [199 : 0] cx_4$put_datas;
  wire [7 : 0] cx_4$put_sumPrev, cx_4$result;
  wire cx_4$EN_put, cx_4$EN_result, cx_4$RDY_result;

  // ports of submodule cx_5
  wire [199 : 0] cx_5$put_datas;
  wire [7 : 0] cx_5$put_sumPrev, cx_5$result;
  wire cx_5$EN_put, cx_5$EN_result, cx_5$RDY_result;

  // ports of submodule cx_6
  wire [199 : 0] cx_6$put_datas;
  wire [7 : 0] cx_6$put_sumPrev, cx_6$result;
  wire cx_6$EN_put, cx_6$EN_result, cx_6$RDY_result;

  // ports of submodule cx_7
  wire [199 : 0] cx_7$put_datas;
  wire [7 : 0] cx_7$put_sumPrev, cx_7$result;
  wire cx_7$EN_put, cx_7$EN_result, cx_7$RDY_result;

  // ports of submodule cx_8
  wire [199 : 0] cx_8$put_datas;
  wire [7 : 0] cx_8$put_sumPrev, cx_8$result;
  wire cx_8$EN_put, cx_8$EN_result, cx_8$RDY_result;

  // ports of submodule cx_9
  wire [199 : 0] cx_9$put_datas;
  wire [7 : 0] cx_9$put_sumPrev, cx_9$result;
  wire cx_9$EN_put, cx_9$EN_result, cx_9$RDY_result;

  // ports of submodule outQ
  wire [7 : 0] outQ$D_IN, outQ$D_OUT;
  wire outQ$CLR, outQ$DEQ, outQ$EMPTY_N, outQ$ENQ, outQ$FULL_N;

  // ports of submodule px
  wire [6399 : 0] px$get;
  wire [287 : 0] px$put_datas;
  wire [11 : 0] px$configure_wx;
  wire [7 : 0] px$configure_m;
  wire [3 : 0] px$configure_a;
  wire px$EN_configure, px$EN_get, px$EN_put, px$RDY_get, px$RDY_put;

  // inputs to muxes for submodule ports
  wire MUX_fetch$write_1__SEL_1, MUX_fetch$write_1__SEL_2;

  // remaining internal signals
  wire [271 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d125;
  wire [255 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d118;
  wire [223 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d104;
  wire [191 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d90;
  wire [159 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d76;
  wire [127 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d62;
  wire [95 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d48;
  wire [63 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d34;
  wire [31 : 0] _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d20;
  wire [15 : 0] _10_MUL_value___d94,
		_11_MUL_value___d91,
		_12_MUL_value___d87,
		_13_MUL_value___d84,
		_14_MUL_value___d80,
		_15_MUL_value___d77,
		_17_MUL_value___d70,
		_18_MUL_value___d66,
		_19_MUL_value___d63,
		_20_MUL_value___d59,
		_21_MUL_value___d56,
		_22_MUL_value___d52,
		_23_MUL_value___d49,
		_24_MUL_value___d45,
		_25_MUL_value___d42,
		_26_MUL_value___d38,
		_27_MUL_value___d35,
		_28_MUL_value___d31,
		_29_MUL_value___d28,
		_30_MUL_value___d24,
		_31_MUL_value___d21,
		_33_MUL_value___d14,
		_34_MUL_value___d10,
		_35_MUL_value___d6,
		_3_MUL_value___d119,
		_5_MUL_value___d112,
		_6_MUL_value___d108,
		_7_MUL_value___d105,
		_9_MUL_value___d98;

  // actionvalue method get
  assign get = { 24'd0, outQ$D_OUT } ;
  assign RDY_get = outQ$EMPTY_N ;

  // action method put
  assign RDY_put = 1'd1 ;

  // action method configure
  assign RDY_configure = 1'd1 ;

  // submodule cx_0
  mkConv cx_0(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_0$put_datas),
	      .put_sumPrev(cx_0$put_sumPrev),
	      .EN_put(cx_0$EN_put),
	      .EN_result(cx_0$EN_result),
	      .RDY_put(),
	      .result(cx_0$result),
	      .RDY_result(cx_0$RDY_result));

  // submodule cx_1
  mkConv cx_1(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_1$put_datas),
	      .put_sumPrev(cx_1$put_sumPrev),
	      .EN_put(cx_1$EN_put),
	      .EN_result(cx_1$EN_result),
	      .RDY_put(),
	      .result(cx_1$result),
	      .RDY_result(cx_1$RDY_result));

  // submodule cx_10
  mkConv cx_10(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_10$put_datas),
	       .put_sumPrev(cx_10$put_sumPrev),
	       .EN_put(cx_10$EN_put),
	       .EN_result(cx_10$EN_result),
	       .RDY_put(),
	       .result(cx_10$result),
	       .RDY_result(cx_10$RDY_result));

  // submodule cx_11
  mkConv cx_11(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_11$put_datas),
	       .put_sumPrev(cx_11$put_sumPrev),
	       .EN_put(cx_11$EN_put),
	       .EN_result(cx_11$EN_result),
	       .RDY_put(),
	       .result(cx_11$result),
	       .RDY_result(cx_11$RDY_result));

  // submodule cx_12
  mkConv cx_12(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_12$put_datas),
	       .put_sumPrev(cx_12$put_sumPrev),
	       .EN_put(cx_12$EN_put),
	       .EN_result(cx_12$EN_result),
	       .RDY_put(),
	       .result(cx_12$result),
	       .RDY_result(cx_12$RDY_result));

  // submodule cx_13
  mkConv cx_13(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_13$put_datas),
	       .put_sumPrev(cx_13$put_sumPrev),
	       .EN_put(cx_13$EN_put),
	       .EN_result(cx_13$EN_result),
	       .RDY_put(),
	       .result(cx_13$result),
	       .RDY_result(cx_13$RDY_result));

  // submodule cx_14
  mkConv cx_14(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_14$put_datas),
	       .put_sumPrev(cx_14$put_sumPrev),
	       .EN_put(cx_14$EN_put),
	       .EN_result(cx_14$EN_result),
	       .RDY_put(),
	       .result(cx_14$result),
	       .RDY_result(cx_14$RDY_result));

  // submodule cx_15
  mkConv cx_15(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_15$put_datas),
	       .put_sumPrev(cx_15$put_sumPrev),
	       .EN_put(cx_15$EN_put),
	       .EN_result(cx_15$EN_result),
	       .RDY_put(),
	       .result(cx_15$result),
	       .RDY_result(cx_15$RDY_result));

  // submodule cx_16
  mkConv cx_16(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_16$put_datas),
	       .put_sumPrev(cx_16$put_sumPrev),
	       .EN_put(cx_16$EN_put),
	       .EN_result(cx_16$EN_result),
	       .RDY_put(),
	       .result(cx_16$result),
	       .RDY_result(cx_16$RDY_result));

  // submodule cx_17
  mkConv cx_17(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_17$put_datas),
	       .put_sumPrev(cx_17$put_sumPrev),
	       .EN_put(cx_17$EN_put),
	       .EN_result(cx_17$EN_result),
	       .RDY_put(),
	       .result(cx_17$result),
	       .RDY_result(cx_17$RDY_result));

  // submodule cx_18
  mkConv cx_18(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_18$put_datas),
	       .put_sumPrev(cx_18$put_sumPrev),
	       .EN_put(cx_18$EN_put),
	       .EN_result(cx_18$EN_result),
	       .RDY_put(),
	       .result(cx_18$result),
	       .RDY_result(cx_18$RDY_result));

  // submodule cx_19
  mkConv cx_19(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_19$put_datas),
	       .put_sumPrev(cx_19$put_sumPrev),
	       .EN_put(cx_19$EN_put),
	       .EN_result(cx_19$EN_result),
	       .RDY_put(),
	       .result(cx_19$result),
	       .RDY_result(cx_19$RDY_result));

  // submodule cx_2
  mkConv cx_2(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_2$put_datas),
	      .put_sumPrev(cx_2$put_sumPrev),
	      .EN_put(cx_2$EN_put),
	      .EN_result(cx_2$EN_result),
	      .RDY_put(),
	      .result(cx_2$result),
	      .RDY_result(cx_2$RDY_result));

  // submodule cx_20
  mkConv cx_20(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_20$put_datas),
	       .put_sumPrev(cx_20$put_sumPrev),
	       .EN_put(cx_20$EN_put),
	       .EN_result(cx_20$EN_result),
	       .RDY_put(),
	       .result(cx_20$result),
	       .RDY_result(cx_20$RDY_result));

  // submodule cx_21
  mkConv cx_21(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_21$put_datas),
	       .put_sumPrev(cx_21$put_sumPrev),
	       .EN_put(cx_21$EN_put),
	       .EN_result(cx_21$EN_result),
	       .RDY_put(),
	       .result(cx_21$result),
	       .RDY_result(cx_21$RDY_result));

  // submodule cx_22
  mkConv cx_22(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_22$put_datas),
	       .put_sumPrev(cx_22$put_sumPrev),
	       .EN_put(cx_22$EN_put),
	       .EN_result(cx_22$EN_result),
	       .RDY_put(),
	       .result(cx_22$result),
	       .RDY_result(cx_22$RDY_result));

  // submodule cx_23
  mkConv cx_23(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_23$put_datas),
	       .put_sumPrev(cx_23$put_sumPrev),
	       .EN_put(cx_23$EN_put),
	       .EN_result(cx_23$EN_result),
	       .RDY_put(),
	       .result(cx_23$result),
	       .RDY_result(cx_23$RDY_result));

  // submodule cx_24
  mkConv cx_24(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_24$put_datas),
	       .put_sumPrev(cx_24$put_sumPrev),
	       .EN_put(cx_24$EN_put),
	       .EN_result(cx_24$EN_result),
	       .RDY_put(),
	       .result(cx_24$result),
	       .RDY_result(cx_24$RDY_result));

  // submodule cx_25
  mkConv cx_25(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_25$put_datas),
	       .put_sumPrev(cx_25$put_sumPrev),
	       .EN_put(cx_25$EN_put),
	       .EN_result(cx_25$EN_result),
	       .RDY_put(),
	       .result(cx_25$result),
	       .RDY_result(cx_25$RDY_result));

  // submodule cx_26
  mkConv cx_26(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_26$put_datas),
	       .put_sumPrev(cx_26$put_sumPrev),
	       .EN_put(cx_26$EN_put),
	       .EN_result(cx_26$EN_result),
	       .RDY_put(),
	       .result(cx_26$result),
	       .RDY_result(cx_26$RDY_result));

  // submodule cx_27
  mkConv cx_27(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_27$put_datas),
	       .put_sumPrev(cx_27$put_sumPrev),
	       .EN_put(cx_27$EN_put),
	       .EN_result(cx_27$EN_result),
	       .RDY_put(),
	       .result(cx_27$result),
	       .RDY_result(cx_27$RDY_result));

  // submodule cx_28
  mkConv cx_28(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_28$put_datas),
	       .put_sumPrev(cx_28$put_sumPrev),
	       .EN_put(cx_28$EN_put),
	       .EN_result(cx_28$EN_result),
	       .RDY_put(),
	       .result(cx_28$result),
	       .RDY_result(cx_28$RDY_result));

  // submodule cx_29
  mkConv cx_29(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_29$put_datas),
	       .put_sumPrev(cx_29$put_sumPrev),
	       .EN_put(cx_29$EN_put),
	       .EN_result(cx_29$EN_result),
	       .RDY_put(),
	       .result(cx_29$result),
	       .RDY_result(cx_29$RDY_result));

  // submodule cx_3
  mkConv cx_3(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_3$put_datas),
	      .put_sumPrev(cx_3$put_sumPrev),
	      .EN_put(cx_3$EN_put),
	      .EN_result(cx_3$EN_result),
	      .RDY_put(),
	      .result(cx_3$result),
	      .RDY_result(cx_3$RDY_result));

  // submodule cx_30
  mkConv cx_30(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_30$put_datas),
	       .put_sumPrev(cx_30$put_sumPrev),
	       .EN_put(cx_30$EN_put),
	       .EN_result(cx_30$EN_result),
	       .RDY_put(),
	       .result(cx_30$result),
	       .RDY_result(cx_30$RDY_result));

  // submodule cx_31
  mkConv cx_31(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(cx_31$put_datas),
	       .put_sumPrev(cx_31$put_sumPrev),
	       .EN_put(cx_31$EN_put),
	       .EN_result(cx_31$EN_result),
	       .RDY_put(),
	       .result(cx_31$result),
	       .RDY_result(cx_31$RDY_result));

  // submodule cx_4
  mkConv cx_4(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_4$put_datas),
	      .put_sumPrev(cx_4$put_sumPrev),
	      .EN_put(cx_4$EN_put),
	      .EN_result(cx_4$EN_result),
	      .RDY_put(),
	      .result(cx_4$result),
	      .RDY_result(cx_4$RDY_result));

  // submodule cx_5
  mkConv cx_5(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_5$put_datas),
	      .put_sumPrev(cx_5$put_sumPrev),
	      .EN_put(cx_5$EN_put),
	      .EN_result(cx_5$EN_result),
	      .RDY_put(),
	      .result(cx_5$result),
	      .RDY_result(cx_5$RDY_result));

  // submodule cx_6
  mkConv cx_6(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_6$put_datas),
	      .put_sumPrev(cx_6$put_sumPrev),
	      .EN_put(cx_6$EN_put),
	      .EN_result(cx_6$EN_result),
	      .RDY_put(),
	      .result(cx_6$result),
	      .RDY_result(cx_6$RDY_result));

  // submodule cx_7
  mkConv cx_7(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_7$put_datas),
	      .put_sumPrev(cx_7$put_sumPrev),
	      .EN_put(cx_7$EN_put),
	      .EN_result(cx_7$EN_result),
	      .RDY_put(),
	      .result(cx_7$result),
	      .RDY_result(cx_7$RDY_result));

  // submodule cx_8
  mkConv cx_8(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_8$put_datas),
	      .put_sumPrev(cx_8$put_sumPrev),
	      .EN_put(cx_8$EN_put),
	      .EN_result(cx_8$EN_result),
	      .RDY_put(),
	      .result(cx_8$result),
	      .RDY_result(cx_8$RDY_result));

  // submodule cx_9
  mkConv cx_9(.CLK(CLK),
	      .RST_N(RST_N),
	      .put_datas(cx_9$put_datas),
	      .put_sumPrev(cx_9$put_sumPrev),
	      .EN_put(cx_9$EN_put),
	      .EN_result(cx_9$EN_result),
	      .RDY_put(),
	      .result(cx_9$result),
	      .RDY_result(cx_9$RDY_result));

  // submodule outQ
  FIFO2 #(.width(32'd8), .guarded(1'd1)) outQ(.RST(RST_N),
					      .CLK(CLK),
					      .D_IN(outQ$D_IN),
					      .ENQ(outQ$ENQ),
					      .DEQ(outQ$DEQ),
					      .CLR(outQ$CLR),
					      .D_OUT(outQ$D_OUT),
					      .FULL_N(outQ$FULL_N),
					      .EMPTY_N(outQ$EMPTY_N));

  // submodule px
  mkMerge px(.CLK(CLK),
	     .RST_N(RST_N),
	     .configure_a(px$configure_a),
	     .configure_m(px$configure_m),
	     .configure_wx(px$configure_wx),
	     .put_datas(px$put_datas),
	     .EN_put(px$EN_put),
	     .EN_get(px$EN_get),
	     .EN_configure(px$EN_configure),
	     .RDY_put(px$RDY_put),
	     .get(px$get),
	     .RDY_get(px$RDY_get),
	     .RDY_configure());

  // inputs to muxes for submodule ports
  assign MUX_fetch$write_1__SEL_1 = cx_31$RDY_result && outQ$FULL_N ;
  assign MUX_fetch$write_1__SEL_2 = px$RDY_get && fetch ;

  // register count
  assign count$D_IN = 32'h0 ;
  assign count$EN = 1'b0 ;

  // register fetch
  assign fetch$D_IN = MUX_fetch$write_1__SEL_1 ;
  assign fetch$EN = px$RDY_get && fetch || MUX_fetch$write_1__SEL_1 ;

  // register index
  assign index$D_IN = configure_wxx ;
  assign index$EN = EN_configure ;

  // register init
  assign init$D_IN = 1'd1 ;
  assign init$EN = EN_configure ;

  // register out
  assign out$D_IN = px$get ;
  assign out$EN = MUX_fetch$write_1__SEL_2 ;

  // register seed
  assign seed$D_IN = put_datas ;
  assign seed$EN = EN_put ;

  // register value
  assign value$D_IN = value + 8'd1 ;
  assign value$EN = px$RDY_put && init ;

  // submodule cx_0
  assign cx_0$put_datas = out[199:0] ;
  assign cx_0$put_sumPrev = 8'd0 ;
  assign cx_0$EN_put = 1'd1 ;
  assign cx_0$EN_result = cx_0$RDY_result ;

  // submodule cx_1
  assign cx_1$put_datas = out[399:200] ;
  assign cx_1$put_sumPrev = cx_0$result ;
  assign cx_1$EN_put = cx_0$RDY_result ;
  assign cx_1$EN_result = cx_1$RDY_result ;

  // submodule cx_10
  assign cx_10$put_datas = out[2199:2000] ;
  assign cx_10$put_sumPrev = cx_9$result ;
  assign cx_10$EN_put = cx_9$RDY_result ;
  assign cx_10$EN_result = cx_10$RDY_result ;

  // submodule cx_11
  assign cx_11$put_datas = out[2399:2200] ;
  assign cx_11$put_sumPrev = cx_10$result ;
  assign cx_11$EN_put = cx_10$RDY_result ;
  assign cx_11$EN_result = cx_11$RDY_result ;

  // submodule cx_12
  assign cx_12$put_datas = out[2599:2400] ;
  assign cx_12$put_sumPrev = cx_11$result ;
  assign cx_12$EN_put = cx_11$RDY_result ;
  assign cx_12$EN_result = cx_12$RDY_result ;

  // submodule cx_13
  assign cx_13$put_datas = out[2799:2600] ;
  assign cx_13$put_sumPrev = cx_12$result ;
  assign cx_13$EN_put = cx_12$RDY_result ;
  assign cx_13$EN_result = cx_13$RDY_result ;

  // submodule cx_14
  assign cx_14$put_datas = out[2999:2800] ;
  assign cx_14$put_sumPrev = cx_13$result ;
  assign cx_14$EN_put = cx_13$RDY_result ;
  assign cx_14$EN_result = cx_14$RDY_result ;

  // submodule cx_15
  assign cx_15$put_datas = out[3199:3000] ;
  assign cx_15$put_sumPrev = cx_14$result ;
  assign cx_15$EN_put = cx_14$RDY_result ;
  assign cx_15$EN_result = cx_15$RDY_result ;

  // submodule cx_16
  assign cx_16$put_datas = out[3399:3200] ;
  assign cx_16$put_sumPrev = cx_15$result ;
  assign cx_16$EN_put = cx_15$RDY_result ;
  assign cx_16$EN_result = cx_16$RDY_result ;

  // submodule cx_17
  assign cx_17$put_datas = out[3599:3400] ;
  assign cx_17$put_sumPrev = cx_16$result ;
  assign cx_17$EN_put = cx_16$RDY_result ;
  assign cx_17$EN_result = cx_17$RDY_result ;

  // submodule cx_18
  assign cx_18$put_datas = out[3799:3600] ;
  assign cx_18$put_sumPrev = cx_17$result ;
  assign cx_18$EN_put = cx_17$RDY_result ;
  assign cx_18$EN_result = cx_18$RDY_result ;

  // submodule cx_19
  assign cx_19$put_datas = out[3999:3800] ;
  assign cx_19$put_sumPrev = cx_18$result ;
  assign cx_19$EN_put = cx_18$RDY_result ;
  assign cx_19$EN_result = cx_19$RDY_result ;

  // submodule cx_2
  assign cx_2$put_datas = out[599:400] ;
  assign cx_2$put_sumPrev = cx_1$result ;
  assign cx_2$EN_put = cx_1$RDY_result ;
  assign cx_2$EN_result = cx_2$RDY_result ;

  // submodule cx_20
  assign cx_20$put_datas = out[4199:4000] ;
  assign cx_20$put_sumPrev = cx_19$result ;
  assign cx_20$EN_put = cx_19$RDY_result ;
  assign cx_20$EN_result = cx_20$RDY_result ;

  // submodule cx_21
  assign cx_21$put_datas = out[4399:4200] ;
  assign cx_21$put_sumPrev = cx_20$result ;
  assign cx_21$EN_put = cx_20$RDY_result ;
  assign cx_21$EN_result = cx_21$RDY_result ;

  // submodule cx_22
  assign cx_22$put_datas = out[4599:4400] ;
  assign cx_22$put_sumPrev = cx_21$result ;
  assign cx_22$EN_put = cx_21$RDY_result ;
  assign cx_22$EN_result = cx_22$RDY_result ;

  // submodule cx_23
  assign cx_23$put_datas = out[4799:4600] ;
  assign cx_23$put_sumPrev = cx_22$result ;
  assign cx_23$EN_put = cx_22$RDY_result ;
  assign cx_23$EN_result = cx_23$RDY_result ;

  // submodule cx_24
  assign cx_24$put_datas = out[4999:4800] ;
  assign cx_24$put_sumPrev = cx_23$result ;
  assign cx_24$EN_put = cx_23$RDY_result ;
  assign cx_24$EN_result = cx_24$RDY_result ;

  // submodule cx_25
  assign cx_25$put_datas = out[5199:5000] ;
  assign cx_25$put_sumPrev = cx_24$result ;
  assign cx_25$EN_put = cx_24$RDY_result ;
  assign cx_25$EN_result = cx_25$RDY_result ;

  // submodule cx_26
  assign cx_26$put_datas = out[5399:5200] ;
  assign cx_26$put_sumPrev = cx_25$result ;
  assign cx_26$EN_put = cx_25$RDY_result ;
  assign cx_26$EN_result = cx_26$RDY_result ;

  // submodule cx_27
  assign cx_27$put_datas = out[5599:5400] ;
  assign cx_27$put_sumPrev = cx_26$result ;
  assign cx_27$EN_put = cx_26$RDY_result ;
  assign cx_27$EN_result = cx_27$RDY_result ;

  // submodule cx_28
  assign cx_28$put_datas = out[5799:5600] ;
  assign cx_28$put_sumPrev = cx_27$result ;
  assign cx_28$EN_put = cx_27$RDY_result ;
  assign cx_28$EN_result = cx_28$RDY_result ;

  // submodule cx_29
  assign cx_29$put_datas = out[5999:5800] ;
  assign cx_29$put_sumPrev = cx_28$result ;
  assign cx_29$EN_put = cx_28$RDY_result ;
  assign cx_29$EN_result = cx_29$RDY_result ;

  // submodule cx_3
  assign cx_3$put_datas = out[799:600] ;
  assign cx_3$put_sumPrev = cx_2$result ;
  assign cx_3$EN_put = cx_2$RDY_result ;
  assign cx_3$EN_result = cx_3$RDY_result ;

  // submodule cx_30
  assign cx_30$put_datas = out[6199:6000] ;
  assign cx_30$put_sumPrev = cx_29$result ;
  assign cx_30$EN_put = cx_29$RDY_result ;
  assign cx_30$EN_result = cx_30$RDY_result ;

  // submodule cx_31
  assign cx_31$put_datas = out[6399:6200] ;
  assign cx_31$put_sumPrev = cx_30$result ;
  assign cx_31$EN_put = cx_30$RDY_result ;
  assign cx_31$EN_result = MUX_fetch$write_1__SEL_1 ;

  // submodule cx_4
  assign cx_4$put_datas = out[999:800] ;
  assign cx_4$put_sumPrev = cx_3$result ;
  assign cx_4$EN_put = cx_3$RDY_result ;
  assign cx_4$EN_result = cx_4$RDY_result ;

  // submodule cx_5
  assign cx_5$put_datas = out[1199:1000] ;
  assign cx_5$put_sumPrev = cx_4$result ;
  assign cx_5$EN_put = cx_4$RDY_result ;
  assign cx_5$EN_result = cx_5$RDY_result ;

  // submodule cx_6
  assign cx_6$put_datas = out[1399:1200] ;
  assign cx_6$put_sumPrev = cx_5$result ;
  assign cx_6$EN_put = cx_5$RDY_result ;
  assign cx_6$EN_result = cx_6$RDY_result ;

  // submodule cx_7
  assign cx_7$put_datas = out[1599:1400] ;
  assign cx_7$put_sumPrev = cx_6$result ;
  assign cx_7$EN_put = cx_6$RDY_result ;
  assign cx_7$EN_result = cx_7$RDY_result ;

  // submodule cx_8
  assign cx_8$put_datas = out[1799:1600] ;
  assign cx_8$put_sumPrev = cx_7$result ;
  assign cx_8$EN_put = cx_7$RDY_result ;
  assign cx_8$EN_result = cx_8$RDY_result ;

  // submodule cx_9
  assign cx_9$put_datas = out[1999:1800] ;
  assign cx_9$put_sumPrev = cx_8$result ;
  assign cx_9$EN_put = cx_8$RDY_result ;
  assign cx_9$EN_result = cx_9$RDY_result ;

  // submodule outQ
  assign outQ$D_IN = cx_31$result ;
  assign outQ$ENQ = MUX_fetch$write_1__SEL_1 ;
  assign outQ$DEQ = EN_get ;
  assign outQ$CLR = 1'b0 ;

  // submodule px
  assign px$configure_a = configure_a ;
  assign px$configure_m = configure_m ;
  assign px$configure_wx = configure_wx ;
  assign px$put_datas =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d125,
	       value + seed,
	       seed } ;
  assign px$EN_put = px$RDY_put && init ;
  assign px$EN_get = MUX_fetch$write_1__SEL_2 ;
  assign px$EN_configure = EN_configure ;

  // remaining internal signals
  assign _10_MUL_value___d94 = 8'd10 * value ;
  assign _11_MUL_value___d91 = 8'd11 * value ;
  assign _12_MUL_value___d87 = 8'd12 * value ;
  assign _13_MUL_value___d84 = 8'd13 * value ;
  assign _14_MUL_value___d80 = 8'd14 * value ;
  assign _15_MUL_value___d77 = 8'd15 * value ;
  assign _17_MUL_value___d70 = 8'd17 * value ;
  assign _18_MUL_value___d66 = 8'd18 * value ;
  assign _19_MUL_value___d63 = 8'd19 * value ;
  assign _20_MUL_value___d59 = 8'd20 * value ;
  assign _21_MUL_value___d56 = 8'd21 * value ;
  assign _22_MUL_value___d52 = 8'd22 * value ;
  assign _23_MUL_value___d49 = 8'd23 * value ;
  assign _24_MUL_value___d45 = 8'd24 * value ;
  assign _25_MUL_value___d42 = 8'd25 * value ;
  assign _26_MUL_value___d38 = 8'd26 * value ;
  assign _27_MUL_value___d35 = 8'd27 * value ;
  assign _28_MUL_value___d31 = 8'd28 * value ;
  assign _29_MUL_value___d28 = 8'd29 * value ;
  assign _30_MUL_value___d24 = 8'd30 * value ;
  assign _31_MUL_value___d21 = 8'd31 * value ;
  assign _33_MUL_value___d14 = 8'd33 * value ;
  assign _34_MUL_value___d10 = 8'd34 * value ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d104 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d90,
	       _11_MUL_value___d91[7:0] + seed,
	       _10_MUL_value___d94[7:0] + seed,
	       _9_MUL_value___d98[7:0] + seed,
	       { value[4:0], 3'd0 } + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d118 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d104,
	       _7_MUL_value___d105[7:0] + seed,
	       _6_MUL_value___d108[7:0] + seed,
	       _5_MUL_value___d112[7:0] + seed,
	       { value[5:0], 2'd0 } + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d125 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d118,
	       _3_MUL_value___d119[7:0] + seed,
	       { value[6:0], 1'd0 } + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d20 =
	     { _35_MUL_value___d6[7:0] + seed,
	       _34_MUL_value___d10[7:0] + seed,
	       _33_MUL_value___d14[7:0] + seed,
	       { value[2:0], 5'd0 } + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d34 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d20,
	       _31_MUL_value___d21[7:0] + seed,
	       _30_MUL_value___d24[7:0] + seed,
	       _29_MUL_value___d28[7:0] + seed,
	       _28_MUL_value___d31[7:0] + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d48 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d34,
	       _27_MUL_value___d35[7:0] + seed,
	       _26_MUL_value___d38[7:0] + seed,
	       _25_MUL_value___d42[7:0] + seed,
	       _24_MUL_value___d45[7:0] + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d62 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d48,
	       _23_MUL_value___d49[7:0] + seed,
	       _22_MUL_value___d52[7:0] + seed,
	       _21_MUL_value___d56[7:0] + seed,
	       _20_MUL_value___d59[7:0] + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d76 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d62,
	       _19_MUL_value___d63[7:0] + seed,
	       _18_MUL_value___d66[7:0] + seed,
	       _17_MUL_value___d70[7:0] + seed,
	       { value[3:0], 4'd0 } + seed } ;
  assign _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d90 =
	     { _35_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_34_M_ETC___d76,
	       _15_MUL_value___d77[7:0] + seed,
	       _14_MUL_value___d80[7:0] + seed,
	       _13_MUL_value___d84[7:0] + seed,
	       _12_MUL_value___d87[7:0] + seed } ;
  assign _35_MUL_value___d6 = 8'd35 * value ;
  assign _3_MUL_value___d119 = 8'd3 * value ;
  assign _5_MUL_value___d112 = 8'd5 * value ;
  assign _6_MUL_value___d108 = 8'd6 * value ;
  assign _7_MUL_value___d105 = 8'd7 * value ;
  assign _9_MUL_value___d98 = 8'd9 * value ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        count <= `BSV_ASSIGNMENT_DELAY 32'd0;
	fetch <= `BSV_ASSIGNMENT_DELAY 1'd1;
	index <= `BSV_ASSIGNMENT_DELAY 19'd0;
	init <= `BSV_ASSIGNMENT_DELAY 1'd0;
	seed <= `BSV_ASSIGNMENT_DELAY 8'd1;
	value <= `BSV_ASSIGNMENT_DELAY 8'd1;
      end
    else
      begin
        if (count$EN) count <= `BSV_ASSIGNMENT_DELAY count$D_IN;
	if (fetch$EN) fetch <= `BSV_ASSIGNMENT_DELAY fetch$D_IN;
	if (index$EN) index <= `BSV_ASSIGNMENT_DELAY index$D_IN;
	if (init$EN) init <= `BSV_ASSIGNMENT_DELAY init$D_IN;
	if (seed$EN) seed <= `BSV_ASSIGNMENT_DELAY seed$D_IN;
	if (value$EN) value <= `BSV_ASSIGNMENT_DELAY value$D_IN;
      end
    if (out$EN) out <= `BSV_ASSIGNMENT_DELAY out$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    count = 32'hAAAAAAAA;
    fetch = 1'h0;
    index = 19'h2AAAA;
    init = 1'h0;
    out =
	6400'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    seed = 8'hAA;
    value = 8'hAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkFlowTest

