//
// Generated by Bluespec Compiler, version untagged-gad02e931 (build ad02e931)
//
// On Sun Jan 16 12:48:15 GMT 2022
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
  reg [799 : 0] out;
  wire [799 : 0] out$D_IN;
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

  // ports of submodule cx_2
  wire [199 : 0] cx_2$put_datas;
  wire [7 : 0] cx_2$put_sumPrev, cx_2$result;
  wire cx_2$EN_put, cx_2$EN_result, cx_2$RDY_result;

  // ports of submodule cx_3
  wire [199 : 0] cx_3$put_datas;
  wire [7 : 0] cx_3$put_sumPrev, cx_3$result;
  wire cx_3$EN_put, cx_3$EN_result, cx_3$RDY_result;

  // ports of submodule outQ
  wire [7 : 0] outQ$D_IN, outQ$D_OUT;
  wire outQ$CLR, outQ$DEQ, outQ$EMPTY_N, outQ$ENQ, outQ$FULL_N;

  // ports of submodule px
  wire [799 : 0] px$get;
  wire [63 : 0] px$put_datas;
  wire [11 : 0] px$configure_wx;
  wire [7 : 0] px$configure_m;
  wire [3 : 0] px$configure_a;
  wire px$EN_configure, px$EN_get, px$EN_put, px$RDY_get, px$RDY_put;

  // rule scheduling signals
  wire WILL_FIRE_RL__getFinal;

  // inputs to muxes for submodule ports
  wire MUX_fetch$write_1__SEL_2;

  // remaining internal signals
  wire [47 : 0] _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d27;
  wire [31 : 0] _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d20;
  wire [15 : 0] _3_MUL_value___d21,
		_5_MUL_value___d14,
		_6_MUL_value___d10,
		_7_MUL_value___d6;

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

  // rule RL__getFinal
  assign WILL_FIRE_RL__getFinal = cx_3$RDY_result && outQ$FULL_N ;

  // inputs to muxes for submodule ports
  assign MUX_fetch$write_1__SEL_2 = px$RDY_get && fetch ;

  // register count
  assign count$D_IN = 32'h0 ;
  assign count$EN = 1'b0 ;

  // register fetch
  assign fetch$D_IN = WILL_FIRE_RL__getFinal ;
  assign fetch$EN = px$RDY_get && fetch || WILL_FIRE_RL__getFinal ;

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

  // submodule cx_2
  assign cx_2$put_datas = out[599:400] ;
  assign cx_2$put_sumPrev = cx_1$result ;
  assign cx_2$EN_put = cx_1$RDY_result ;
  assign cx_2$EN_result = cx_2$RDY_result ;

  // submodule cx_3
  assign cx_3$put_datas = out[799:600] ;
  assign cx_3$put_sumPrev = cx_2$result ;
  assign cx_3$EN_put = cx_2$RDY_result ;
  assign cx_3$EN_result = WILL_FIRE_RL__getFinal ;

  // submodule outQ
  assign outQ$D_IN = cx_3$result ;
  assign outQ$ENQ = WILL_FIRE_RL__getFinal ;
  assign outQ$DEQ = EN_get ;
  assign outQ$CLR = 1'b0 ;

  // submodule px
  assign px$configure_a = configure_a ;
  assign px$configure_m = configure_m ;
  assign px$configure_wx = configure_wx ;
  assign px$put_datas =
	     { _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d27,
	       value + seed,
	       seed } ;
  assign px$EN_put = px$RDY_put && init ;
  assign px$EN_get = MUX_fetch$write_1__SEL_2 ;
  assign px$EN_configure = EN_configure ;

  // remaining internal signals
  assign _3_MUL_value___d21 = 8'd3 * value ;
  assign _5_MUL_value___d14 = 8'd5 * value ;
  assign _6_MUL_value___d10 = 8'd6 * value ;
  assign _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d20 =
	     { _7_MUL_value___d6[7:0] + seed,
	       _6_MUL_value___d10[7:0] + seed,
	       _5_MUL_value___d14[7:0] + seed,
	       { value[5:0], 2'd0 } + seed } ;
  assign _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d27 =
	     { _7_MUL_value_BITS_7_TO_0_PLUS_seed_CONCAT_6_MUL_ETC___d20,
	       _3_MUL_value___d21[7:0] + seed,
	       { value[6:0], 1'd0 } + seed } ;
  assign _7_MUL_value___d6 = 8'd7 * value ;

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
	800'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    seed = 8'hAA;
    value = 8'hAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkFlowTest

