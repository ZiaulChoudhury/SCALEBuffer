//
// Generated by Bluespec Compiler, version untagged-gad02e931 (build ad02e931)
//
// On Wed Dec 29 14:45:10 GMT 2021
//
//
// Ports:
// Name                         I/O  size props
// RDY_put                        O     1 const
// result                         O     8 reg
// RDY_result                     O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// put_datas                      I   392
// put_sumPrev                    I     8
// EN_put                         I     1
// EN_result                      I     1
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

module mkConv(CLK,
	      RST_N,

	      put_datas,
	      put_sumPrev,
	      EN_put,
	      RDY_put,

	      EN_result,
	      result,
	      RDY_result);
  input  CLK;
  input  RST_N;

  // action method put
  input  [391 : 0] put_datas;
  input  [7 : 0] put_sumPrev;
  input  EN_put;
  output RDY_put;

  // actionvalue method result
  input  EN_result;
  output [7 : 0] result;
  output RDY_result;

  // signals for module outputs
  wire [7 : 0] result;
  wire RDY_put, RDY_result;

  // register sIn
  reg [391 : 0] sIn;
  wire [391 : 0] sIn$D_IN;
  wire sIn$EN;

  // ports of submodule s2
  wire [55 : 0] s2$put_datas;
  wire [7 : 0] s2$result;
  wire s2$EN_put, s2$EN_result, s2$RDY_result;

  // ports of submodule s_0
  wire [55 : 0] s_0$put_datas;
  wire [7 : 0] s_0$result;
  wire s_0$EN_put, s_0$EN_result, s_0$RDY_result;

  // ports of submodule s_1
  wire [55 : 0] s_1$put_datas;
  wire [7 : 0] s_1$result;
  wire s_1$EN_put, s_1$EN_result, s_1$RDY_result;

  // ports of submodule s_2
  wire [55 : 0] s_2$put_datas;
  wire [7 : 0] s_2$result;
  wire s_2$EN_put, s_2$EN_result, s_2$RDY_result;

  // ports of submodule s_3
  wire [55 : 0] s_3$put_datas;
  wire [7 : 0] s_3$result;
  wire s_3$EN_put, s_3$EN_result, s_3$RDY_result;

  // ports of submodule s_4
  wire [55 : 0] s_4$put_datas;
  wire [7 : 0] s_4$result;
  wire s_4$EN_put, s_4$EN_result, s_4$RDY_result;

  // ports of submodule s_5
  wire [55 : 0] s_5$put_datas;
  wire [7 : 0] s_5$result;
  wire s_5$EN_put, s_5$EN_result, s_5$RDY_result;

  // ports of submodule s_6
  wire [55 : 0] s_6$put_datas;
  wire [7 : 0] s_6$result;
  wire s_6$EN_put, s_6$EN_result, s_6$RDY_result;

  // remaining internal signals
  wire s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18;

  // action method put
  assign RDY_put = 1'd1 ;

  // actionvalue method result
  assign result = s2$result ;
  assign RDY_result = s2$RDY_result ;

  // submodule s2
  mkSumTree s2(.CLK(CLK),
	       .RST_N(RST_N),
	       .put_datas(s2$put_datas),
	       .EN_put(s2$EN_put),
	       .EN_result(s2$EN_result),
	       .RDY_put(),
	       .result(s2$result),
	       .RDY_result(s2$RDY_result));

  // submodule s_0
  mkSumTree s_0(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_0$put_datas),
		.EN_put(s_0$EN_put),
		.EN_result(s_0$EN_result),
		.RDY_put(),
		.result(s_0$result),
		.RDY_result(s_0$RDY_result));

  // submodule s_1
  mkSumTree s_1(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_1$put_datas),
		.EN_put(s_1$EN_put),
		.EN_result(s_1$EN_result),
		.RDY_put(),
		.result(s_1$result),
		.RDY_result(s_1$RDY_result));

  // submodule s_2
  mkSumTree s_2(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_2$put_datas),
		.EN_put(s_2$EN_put),
		.EN_result(s_2$EN_result),
		.RDY_put(),
		.result(s_2$result),
		.RDY_result(s_2$RDY_result));

  // submodule s_3
  mkSumTree s_3(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_3$put_datas),
		.EN_put(s_3$EN_put),
		.EN_result(s_3$EN_result),
		.RDY_put(),
		.result(s_3$result),
		.RDY_result(s_3$RDY_result));

  // submodule s_4
  mkSumTree s_4(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_4$put_datas),
		.EN_put(s_4$EN_put),
		.EN_result(s_4$EN_result),
		.RDY_put(),
		.result(s_4$result),
		.RDY_result(s_4$RDY_result));

  // submodule s_5
  mkSumTree s_5(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_5$put_datas),
		.EN_put(s_5$EN_put),
		.EN_result(s_5$EN_result),
		.RDY_put(),
		.result(s_5$result),
		.RDY_result(s_5$RDY_result));

  // submodule s_6
  mkSumTree s_6(.CLK(CLK),
		.RST_N(RST_N),
		.put_datas(s_6$put_datas),
		.EN_put(s_6$EN_put),
		.EN_result(s_6$EN_result),
		.RDY_put(),
		.result(s_6$result),
		.RDY_result(s_6$RDY_result));

  // register sIn
  assign sIn$D_IN =
	     { put_datas[391:384] + put_sumPrev,
	       put_datas[383:376] + put_sumPrev,
	       put_datas[375:368] + put_sumPrev,
	       put_datas[367:360] + put_sumPrev,
	       put_datas[359:352] + put_sumPrev,
	       put_datas[351:344] + put_sumPrev,
	       put_datas[343:336] + put_sumPrev,
	       put_datas[335:328] + put_sumPrev,
	       put_datas[327:320] + put_sumPrev,
	       put_datas[319:312] + put_sumPrev,
	       put_datas[311:304] + put_sumPrev,
	       put_datas[303:296] + put_sumPrev,
	       put_datas[295:288] + put_sumPrev,
	       put_datas[287:280] + put_sumPrev,
	       put_datas[279:272] + put_sumPrev,
	       put_datas[271:264] + put_sumPrev,
	       put_datas[263:256] + put_sumPrev,
	       put_datas[255:248] + put_sumPrev,
	       put_datas[247:240] + put_sumPrev,
	       put_datas[239:232] + put_sumPrev,
	       put_datas[231:224] + put_sumPrev,
	       put_datas[223:216] + put_sumPrev,
	       put_datas[215:208] + put_sumPrev,
	       put_datas[207:200] + put_sumPrev,
	       put_datas[199:192] + put_sumPrev,
	       put_datas[191:184] + put_sumPrev,
	       put_datas[183:176] + put_sumPrev,
	       put_datas[175:168] + put_sumPrev,
	       put_datas[167:160] + put_sumPrev,
	       put_datas[159:152] + put_sumPrev,
	       put_datas[151:144] + put_sumPrev,
	       put_datas[143:136] + put_sumPrev,
	       put_datas[135:128] + put_sumPrev,
	       put_datas[127:120] + put_sumPrev,
	       put_datas[119:112] + put_sumPrev,
	       put_datas[111:104] + put_sumPrev,
	       put_datas[103:96] + put_sumPrev,
	       put_datas[95:88] + put_sumPrev,
	       put_datas[87:80] + put_sumPrev,
	       put_datas[79:72] + put_sumPrev,
	       put_datas[71:64] + put_sumPrev,
	       put_datas[63:56] + put_sumPrev,
	       put_datas[55:48] + put_sumPrev,
	       put_datas[47:40] + put_sumPrev,
	       put_datas[39:32] + put_sumPrev,
	       put_datas[31:24] + put_sumPrev,
	       put_datas[23:16] + put_sumPrev,
	       put_datas[15:8] + put_sumPrev,
	       put_datas[7:0] + put_sumPrev } ;
  assign sIn$EN = EN_put ;

  // submodule s2
  assign s2$put_datas =
	     { s_6$result,
	       s_5$result,
	       s_4$result,
	       s_3$result,
	       s_2$result,
	       s_1$result,
	       s_0$result } ;
  assign s2$EN_put =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;
  assign s2$EN_result = EN_result ;

  // submodule s_0
  assign s_0$put_datas = sIn[103:48] ;
  assign s_0$EN_put = 1'd1 ;
  assign s_0$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_1
  assign s_1$put_datas = sIn[151:96] ;
  assign s_1$EN_put = 1'd1 ;
  assign s_1$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_2
  assign s_2$put_datas = sIn[199:144] ;
  assign s_2$EN_put = 1'd1 ;
  assign s_2$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_3
  assign s_3$put_datas = sIn[247:192] ;
  assign s_3$EN_put = 1'd1 ;
  assign s_3$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_4
  assign s_4$put_datas = sIn[295:240] ;
  assign s_4$EN_put = 1'd1 ;
  assign s_4$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_5
  assign s_5$put_datas = sIn[343:288] ;
  assign s_5$EN_put = 1'd1 ;
  assign s_5$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // submodule s_6
  assign s_6$put_datas = sIn[391:336] ;
  assign s_6$EN_put = 1'd1 ;
  assign s_6$EN_result =
	     s_0$RDY_result && s_1$RDY_result && s_2$RDY_result &&
	     s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 ;

  // remaining internal signals
  assign s_3_RDY_result__2_AND_s_4_RDY_result__3_AND_s__ETC___d18 =
	     s_3$RDY_result && s_4$RDY_result && s_5$RDY_result &&
	     s_6$RDY_result ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (sIn$EN) sIn <= `BSV_ASSIGNMENT_DELAY sIn$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    sIn =
	392'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkConv

