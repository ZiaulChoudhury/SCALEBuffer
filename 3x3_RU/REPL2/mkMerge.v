//
// Generated by Bluespec Compiler, version untagged-gad02e931 (build ad02e931)
//
// On Tue Jan 11 16:06:38 GMT 2022
//
//
// Ports:
// Name                         I/O  size props
// RDY_put                        O     1 reg
// get                            O   144 reg
// RDY_get                        O     1
// RDY_configure                  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// put_datas                      I    32 reg
// configure_a                    I     4 unused
// configure_m                    I     8 reg
// configure_wx                   I    12 reg
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

module mkMerge(CLK,
	       RST_N,

	       put_datas,
	       EN_put,
	       RDY_put,

	       EN_get,
	       get,
	       RDY_get,

	       configure_a,
	       configure_m,
	       configure_wx,
	       EN_configure,
	       RDY_configure);
  input  CLK;
  input  RST_N;

  // action method put
  input  [31 : 0] put_datas;
  input  EN_put;
  output RDY_put;

  // actionvalue method get
  input  EN_get;
  output [143 : 0] get;
  output RDY_get;

  // action method configure
  input  [3 : 0] configure_a;
  input  [7 : 0] configure_m;
  input  [11 : 0] configure_wx;
  input  EN_configure;
  output RDY_configure;

  // signals for module outputs
  wire [143 : 0] get;
  wire RDY_configure, RDY_get, RDY_put;

  // inlined wires
  wire [1 : 0] p0_rv$port1__read,
	       p0_rv$port2__read,
	       p1_rv$port1__read,
	       p1_rv$port2__read,
	       p2_rv$port1__read,
	       p2_rv$port2__read,
	       p3_rv$port1__read,
	       p3_rv$port2__read;
  wire mem_pwDequeue$whas,
       mem_pwEnqueue$whas,
       p0_rv$EN_port1__write,
       p1_rv$EN_port0__write,
       p2_rv$EN_port0__write,
       p2_rv$EN_port1__write,
       p3_rv$EN_port1__write;

  // register _unnamed_
  reg [7 : 0] _unnamed_;
  wire [7 : 0] _unnamed_$D_IN;
  wire _unnamed_$EN;

  // register _unnamed__0_1
  reg [15 : 0] _unnamed__0_1;
  wire [15 : 0] _unnamed__0_1$D_IN;
  wire _unnamed__0_1$EN;

  // register _unnamed__0_2
  reg [23 : 0] _unnamed__0_2;
  wire [23 : 0] _unnamed__0_2$D_IN;
  wire _unnamed__0_2$EN;

  // register _unnamed__1
  reg [7 : 0] _unnamed__1;
  wire [7 : 0] _unnamed__1$D_IN;
  wire _unnamed__1$EN;

  // register _unnamed__10
  reg [23 : 0] _unnamed__10;
  wire [23 : 0] _unnamed__10$D_IN;
  wire _unnamed__10$EN;

  // register _unnamed__11
  reg [23 : 0] _unnamed__11;
  wire [23 : 0] _unnamed__11$D_IN;
  wire _unnamed__11$EN;

  // register _unnamed__12
  reg [23 : 0] _unnamed__12;
  wire [23 : 0] _unnamed__12$D_IN;
  wire _unnamed__12$EN;

  // register _unnamed__13
  reg [23 : 0] _unnamed__13;
  wire [23 : 0] _unnamed__13$D_IN;
  wire _unnamed__13$EN;

  // register _unnamed__14
  reg [23 : 0] _unnamed__14;
  wire [23 : 0] _unnamed__14$D_IN;
  wire _unnamed__14$EN;

  // register _unnamed__15
  reg [23 : 0] _unnamed__15;
  wire [23 : 0] _unnamed__15$D_IN;
  wire _unnamed__15$EN;

  // register _unnamed__16
  reg [31 : 0] _unnamed__16;
  wire [31 : 0] _unnamed__16$D_IN;
  wire _unnamed__16$EN;

  // register _unnamed__1_1
  reg [15 : 0] _unnamed__1_1;
  wire [15 : 0] _unnamed__1_1$D_IN;
  wire _unnamed__1_1$EN;

  // register _unnamed__1_2
  reg [23 : 0] _unnamed__1_2;
  wire [23 : 0] _unnamed__1_2$D_IN;
  wire _unnamed__1_2$EN;

  // register _unnamed__2
  reg [7 : 0] _unnamed__2;
  wire [7 : 0] _unnamed__2$D_IN;
  wire _unnamed__2$EN;

  // register _unnamed__2_1
  reg [15 : 0] _unnamed__2_1;
  wire [15 : 0] _unnamed__2_1$D_IN;
  wire _unnamed__2_1$EN;

  // register _unnamed__2_2
  reg [23 : 0] _unnamed__2_2;
  wire [23 : 0] _unnamed__2_2$D_IN;
  wire _unnamed__2_2$EN;

  // register _unnamed__3
  reg [7 : 0] _unnamed__3;
  wire [7 : 0] _unnamed__3$D_IN;
  wire _unnamed__3$EN;

  // register _unnamed__3_1
  reg [15 : 0] _unnamed__3_1;
  wire [15 : 0] _unnamed__3_1$D_IN;
  wire _unnamed__3_1$EN;

  // register _unnamed__3_2
  reg [23 : 0] _unnamed__3_2;
  wire [23 : 0] _unnamed__3_2$D_IN;
  wire _unnamed__3_2$EN;

  // register _unnamed__4
  reg [23 : 0] _unnamed__4;
  wire [23 : 0] _unnamed__4$D_IN;
  wire _unnamed__4$EN;

  // register _unnamed__5
  reg [23 : 0] _unnamed__5;
  wire [23 : 0] _unnamed__5$D_IN;
  wire _unnamed__5$EN;

  // register _unnamed__6
  reg [23 : 0] _unnamed__6;
  wire [23 : 0] _unnamed__6$D_IN;
  wire _unnamed__6$EN;

  // register _unnamed__7
  reg [23 : 0] _unnamed__7;
  wire [23 : 0] _unnamed__7$D_IN;
  wire _unnamed__7$EN;

  // register _unnamed__8
  reg [23 : 0] _unnamed__8;
  wire [23 : 0] _unnamed__8$D_IN;
  wire _unnamed__8$EN;

  // register _unnamed__9
  reg [23 : 0] _unnamed__9;
  wire [23 : 0] _unnamed__9$D_IN;
  wire _unnamed__9$EN;

  // register cx
  reg [11 : 0] cx;
  wire [11 : 0] cx$D_IN;
  wire cx$EN;

  // register cx2
  reg [11 : 0] cx2;
  wire [11 : 0] cx2$D_IN;
  wire cx2$EN;

  // register kernel
  reg [3 : 0] kernel;
  wire [3 : 0] kernel$D_IN;
  wire kernel$EN;

  // register mem_rCache
  reg [45 : 0] mem_rCache;
  wire [45 : 0] mem_rCache$D_IN;
  wire mem_rCache$EN;

  // register mem_rRdPtr
  reg [12 : 0] mem_rRdPtr;
  wire [12 : 0] mem_rRdPtr$D_IN;
  wire mem_rRdPtr$EN;

  // register mem_rWrPtr
  reg [12 : 0] mem_rWrPtr;
  wire [12 : 0] mem_rWrPtr$D_IN;
  wire mem_rWrPtr$EN;

  // register mx
  reg [7 : 0] mx;
  wire [7 : 0] mx$D_IN;
  wire mx$EN;

  // register p0_rv
  reg [1 : 0] p0_rv;
  wire [1 : 0] p0_rv$D_IN;
  wire p0_rv$EN;

  // register p1_rv
  reg [1 : 0] p1_rv;
  wire [1 : 0] p1_rv$D_IN;
  wire p1_rv$EN;

  // register p2_rv
  reg [1 : 0] p2_rv;
  wire [1 : 0] p2_rv$D_IN;
  wire p2_rv$EN;

  // register p3_rv
  reg [1 : 0] p3_rv;
  wire [1 : 0] p3_rv$D_IN;
  wire p3_rv$EN;

  // register width
  reg [11 : 0] width;
  wire [11 : 0] width$D_IN;
  wire width$EN;

  // ports of submodule inQ
  wire [31 : 0] inQ$D_IN, inQ$D_OUT;
  wire inQ$CLR, inQ$DEQ, inQ$EMPTY_N, inQ$ENQ, inQ$FULL_N;

  // ports of submodule mem_memory
  wire [31 : 0] mem_memory$DIA, mem_memory$DIB, mem_memory$DOB;
  wire [11 : 0] mem_memory$ADDRA, mem_memory$ADDRB;
  wire mem_memory$ENA, mem_memory$ENB, mem_memory$WEA, mem_memory$WEB;

  // rule scheduling signals
  wire WILL_FIRE_RL__activate1, WILL_FIRE_RL_initialLoad;

  // inputs to muxes for submodule ports
  wire [31 : 0] MUX_mem_wDataIn$wset_1__VAL_2;

  // remaining internal signals
  wire [31 : 0] IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90,
		d1__h5129,
		x3__h3334,
		x_wget__h3116;
  wire [23 : 0] x2__h4098, x2__h4396, x2__h4595, x__h4225, x__h4425, x__h4624;
  wire [12 : 0] x__h3417, x__h3506;
  wire NOT_mem_rRdPtr_read__7_EQ_mem_rWrPtr_read_6_7__ETC___d85,
       NOT_mem_rRdPtr_read__7_PLUS_2048_1_EQ_mem_rWrP_ETC___d53,
       cx2_1_ULT_width_2___d63;

  // action method put
  assign RDY_put = inQ$FULL_N ;

  // actionvalue method get
  assign get =
	     { _unnamed__9,
	       _unnamed__8,
	       _unnamed__7,
	       _unnamed__6,
	       _unnamed__5,
	       _unnamed__4 } ;
  assign RDY_get = p3_rv[1] ;

  // action method configure
  assign RDY_configure = 1'd1 ;

  // submodule inQ
  FIFO2 #(.width(32'd32), .guarded(1'd1)) inQ(.RST(RST_N),
					      .CLK(CLK),
					      .D_IN(inQ$D_IN),
					      .ENQ(inQ$ENQ),
					      .DEQ(inQ$DEQ),
					      .CLR(inQ$CLR),
					      .D_OUT(inQ$D_OUT),
					      .FULL_N(inQ$FULL_N),
					      .EMPTY_N(inQ$EMPTY_N));

  // submodule mem_memory
  BRAM2 #(.PIPELINED(1'd0),
	  .ADDR_WIDTH(32'd12),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(13'd4096)) mem_memory(.CLKA(CLK),
					 .CLKB(CLK),
					 .ADDRA(mem_memory$ADDRA),
					 .ADDRB(mem_memory$ADDRB),
					 .DIA(mem_memory$DIA),
					 .DIB(mem_memory$DIB),
					 .WEA(mem_memory$WEA),
					 .WEB(mem_memory$WEB),
					 .ENA(mem_memory$ENA),
					 .ENB(mem_memory$ENB),
					 .DOA(),
					 .DOB(mem_memory$DOB));

  // rule RL_initialLoad
  assign WILL_FIRE_RL_initialLoad =
	     NOT_mem_rRdPtr_read__7_PLUS_2048_1_EQ_mem_rWrP_ETC___d53 &&
	     inQ$EMPTY_N &&
	     cx2_1_ULT_width_2___d63 ;

  // rule RL__activate1
  assign WILL_FIRE_RL__activate1 =
	     NOT_mem_rRdPtr_read__7_PLUS_2048_1_EQ_mem_rWrP_ETC___d53 &&
	     p0_rv[1] &&
	     !p1_rv$port1__read[1] &&
	     !cx2_1_ULT_width_2___d63 ;

  // inputs to muxes for submodule ports
  assign MUX_mem_wDataIn$wset_1__VAL_2 = { 16'd0, _unnamed__16[31:16] } ;

  // inlined wires
  assign mem_pwDequeue$whas =
	     NOT_mem_rRdPtr_read__7_EQ_mem_rWrPtr_read_6_7__ETC___d85 &&
	     !cx2_1_ULT_width_2___d63 ;
  assign mem_pwEnqueue$whas =
	     WILL_FIRE_RL_initialLoad || WILL_FIRE_RL__activate1 ;
  assign p0_rv$port1__read = WILL_FIRE_RL__activate1 ? 2'd0 : p0_rv ;
  assign p0_rv$EN_port1__write =
	     NOT_mem_rRdPtr_read__7_EQ_mem_rWrPtr_read_6_7__ETC___d85 &&
	     !cx2_1_ULT_width_2___d63 ;
  assign p0_rv$port2__read =
	     p0_rv$EN_port1__write ? 2'd3 : p0_rv$port1__read ;
  assign p1_rv$EN_port0__write = p1_rv[1] && !p2_rv$port1__read[1] ;
  assign p1_rv$port1__read = p1_rv$EN_port0__write ? 2'd0 : p1_rv ;
  assign p1_rv$port2__read =
	     WILL_FIRE_RL__activate1 ? 2'd3 : p1_rv$port1__read ;
  assign p2_rv$EN_port0__write = p2_rv[1] && !p3_rv$port1__read[1] ;
  assign p2_rv$port1__read = p2_rv$EN_port0__write ? 2'd0 : p2_rv ;
  assign p2_rv$EN_port1__write = p1_rv[1] && !p2_rv$port1__read[1] ;
  assign p2_rv$port2__read =
	     p2_rv$EN_port1__write ? 2'd3 : p2_rv$port1__read ;
  assign p3_rv$port1__read = EN_get ? 2'd0 : p3_rv ;
  assign p3_rv$EN_port1__write =
	     p2_rv[1] && !p3_rv$port1__read[1] &&
	     cx >= { 8'd0, kernel - 4'd1 } ;
  assign p3_rv$port2__read =
	     p3_rv$EN_port1__write ? 2'd3 : p3_rv$port1__read ;

  // register _unnamed_
  assign _unnamed_$D_IN =
	     IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90[7:0] ;
  assign _unnamed_$EN = mem_pwDequeue$whas ;

  // register _unnamed__0_1
  assign _unnamed__0_1$D_IN = { _unnamed_, _unnamed__1 } ;
  assign _unnamed__0_1$EN = 1'd1 ;

  // register _unnamed__0_2
  assign _unnamed__0_2$D_IN = x__h4225 | x2__h4098 ;
  assign _unnamed__0_2$EN = 1'd1 ;

  // register _unnamed__1
  assign _unnamed__1$D_IN =
	     IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90[15:8] ;
  assign _unnamed__1$EN = mem_pwDequeue$whas ;

  // register _unnamed__10
  assign _unnamed__10$D_IN = { _unnamed__10[15:0], _unnamed__2_2[7:0] } ;
  assign _unnamed__10$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__11
  assign _unnamed__11$D_IN = { _unnamed__11[15:0], _unnamed__2_2[15:8] } ;
  assign _unnamed__11$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__12
  assign _unnamed__12$D_IN = { _unnamed__12[15:0], _unnamed__2_2[23:16] } ;
  assign _unnamed__12$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__13
  assign _unnamed__13$D_IN = { _unnamed__13[15:0], _unnamed__3_2[7:0] } ;
  assign _unnamed__13$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__14
  assign _unnamed__14$D_IN = { _unnamed__14[15:0], _unnamed__3_2[15:8] } ;
  assign _unnamed__14$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__15
  assign _unnamed__15$D_IN = { _unnamed__15[15:0], _unnamed__3_2[23:16] } ;
  assign _unnamed__15$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__16
  assign _unnamed__16$D_IN = 32'h0 ;
  assign _unnamed__16$EN = 1'b0 ;

  // register _unnamed__1_1
  assign _unnamed__1_1$D_IN = { _unnamed__1, _unnamed__2 } ;
  assign _unnamed__1_1$EN = 1'd1 ;

  // register _unnamed__1_2
  assign _unnamed__1_2$D_IN = x__h4425 | x2__h4396 ;
  assign _unnamed__1_2$EN = 1'd1 ;

  // register _unnamed__2
  assign _unnamed__2$D_IN =
	     IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90[23:16] ;
  assign _unnamed__2$EN = mem_pwDequeue$whas ;

  // register _unnamed__2_1
  assign _unnamed__2_1$D_IN = { _unnamed__2, _unnamed__3 } ;
  assign _unnamed__2_1$EN = 1'd1 ;

  // register _unnamed__2_2
  assign _unnamed__2_2$D_IN = x__h4624 | x2__h4595 ;
  assign _unnamed__2_2$EN = 1'd1 ;

  // register _unnamed__3
  assign _unnamed__3$D_IN =
	     IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90[31:24] ;
  assign _unnamed__3$EN = mem_pwDequeue$whas ;

  // register _unnamed__3_1
  assign _unnamed__3_1$D_IN = 16'h0 ;
  assign _unnamed__3_1$EN = 1'b0 ;

  // register _unnamed__3_2
  assign _unnamed__3_2$D_IN = 24'h0 ;
  assign _unnamed__3_2$EN = 1'b0 ;

  // register _unnamed__4
  assign _unnamed__4$D_IN = { _unnamed__4[15:0], _unnamed__0_2[7:0] } ;
  assign _unnamed__4$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__5
  assign _unnamed__5$D_IN = { _unnamed__5[15:0], _unnamed__0_2[15:8] } ;
  assign _unnamed__5$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__6
  assign _unnamed__6$D_IN = { _unnamed__6[15:0], _unnamed__0_2[23:16] } ;
  assign _unnamed__6$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__7
  assign _unnamed__7$D_IN = { _unnamed__7[15:0], _unnamed__1_2[7:0] } ;
  assign _unnamed__7$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__8
  assign _unnamed__8$D_IN = { _unnamed__8[15:0], _unnamed__1_2[15:8] } ;
  assign _unnamed__8$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register _unnamed__9
  assign _unnamed__9$D_IN = { _unnamed__9[15:0], _unnamed__1_2[23:16] } ;
  assign _unnamed__9$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register cx
  assign cx$D_IN = (cx == width - 12'd1) ? 12'd0 : cx + 12'd1 ;
  assign cx$EN = p2_rv[1] && !p3_rv$port1__read[1] ;

  // register cx2
  assign cx2$D_IN = cx2 + 12'd1 ;
  assign cx2$EN = WILL_FIRE_RL_initialLoad ;

  // register kernel
  assign kernel$D_IN = 4'd3 ;
  assign kernel$EN = EN_configure ;

  // register mem_rCache
  assign mem_rCache$D_IN = { 1'd1, mem_rWrPtr, x3__h3334 } ;
  assign mem_rCache$EN = mem_pwEnqueue$whas ;

  // register mem_rRdPtr
  assign mem_rRdPtr$D_IN = x__h3506 ;
  assign mem_rRdPtr$EN = mem_pwDequeue$whas ;

  // register mem_rWrPtr
  assign mem_rWrPtr$D_IN = x__h3417 ;
  assign mem_rWrPtr$EN = mem_pwEnqueue$whas ;

  // register mx
  assign mx$D_IN = configure_m ;
  assign mx$EN = EN_configure ;

  // register p0_rv
  assign p0_rv$D_IN = p0_rv$port2__read ;
  assign p0_rv$EN = 1'b1 ;

  // register p1_rv
  assign p1_rv$D_IN = p1_rv$port2__read ;
  assign p1_rv$EN = 1'b1 ;

  // register p2_rv
  assign p2_rv$D_IN = p2_rv$port2__read ;
  assign p2_rv$EN = 1'b1 ;

  // register p3_rv
  assign p3_rv$D_IN = p3_rv$port2__read ;
  assign p3_rv$EN = 1'b1 ;

  // register width
  assign width$D_IN = configure_wx ;
  assign width$EN = EN_configure ;

  // submodule inQ
  assign inQ$D_IN = put_datas ;
  assign inQ$ENQ = EN_put ;
  assign inQ$DEQ =
	     WILL_FIRE_RL_initialLoad ||
	     NOT_mem_rRdPtr_read__7_EQ_mem_rWrPtr_read_6_7__ETC___d85 &&
	     !cx2_1_ULT_width_2___d63 ;
  assign inQ$CLR = 1'b0 ;

  // submodule mem_memory
  assign mem_memory$ADDRA = mem_rWrPtr[11:0] ;
  assign mem_memory$ADDRB =
	     mem_pwDequeue$whas ? x__h3506[11:0] : mem_rRdPtr[11:0] ;
  assign mem_memory$DIA = x3__h3334 ;
  assign mem_memory$DIB = 32'hAAAAAAAA /* unspecified value */  ;
  assign mem_memory$WEA = mem_pwEnqueue$whas ;
  assign mem_memory$WEB = 1'd0 ;
  assign mem_memory$ENA = 1'b1 ;
  assign mem_memory$ENB = 1'b1 ;

  // remaining internal signals
  assign IF_mem_wDataOut_whas__9_THEN_mem_wDataOut_wget_ETC___d90 =
	     d1__h5129 | inQ$D_OUT ;
  assign NOT_mem_rRdPtr_read__7_EQ_mem_rWrPtr_read_6_7__ETC___d85 =
	     mem_rRdPtr != mem_rWrPtr && inQ$EMPTY_N &&
	     !p0_rv$port1__read[1] ;
  assign NOT_mem_rRdPtr_read__7_PLUS_2048_1_EQ_mem_rWrP_ETC___d53 =
	     mem_rRdPtr + 13'd2048 != mem_rWrPtr ;
  assign cx2_1_ULT_width_2___d63 = cx2 < width ;
  assign d1__h5129 =
	     (mem_rCache[45] && mem_rCache[44:32] == mem_rRdPtr) ?
	       mem_rCache[31:0] :
	       mem_memory$DOB ;
  assign x2__h4098 = { 8'd0, _unnamed__1_1 } ;
  assign x2__h4396 = { 8'd0, _unnamed__2_1 } ;
  assign x2__h4595 = { 8'd0, _unnamed__3_1 } ;
  assign x3__h3334 = mem_pwEnqueue$whas ? x_wget__h3116 : 32'd0 ;
  assign x__h3417 = mem_rWrPtr + 13'd1 ;
  assign x__h3506 = mem_rRdPtr + 13'd1 ;
  assign x__h4225 = { _unnamed__0_1, 8'd0 } ;
  assign x__h4425 = { _unnamed__1_1, 8'd0 } ;
  assign x__h4624 = { _unnamed__2_1, 8'd0 } ;
  assign x_wget__h3116 =
	     WILL_FIRE_RL_initialLoad ?
	       inQ$D_OUT :
	       MUX_mem_wDataIn$wset_1__VAL_2 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        _unnamed_ <= `BSV_ASSIGNMENT_DELAY 8'd0;
	_unnamed__0_1 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	_unnamed__0_2 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__1 <= `BSV_ASSIGNMENT_DELAY 8'd0;
	_unnamed__10 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__11 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__12 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__13 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__14 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__15 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__16 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	_unnamed__1_1 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	_unnamed__1_2 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__2 <= `BSV_ASSIGNMENT_DELAY 8'd0;
	_unnamed__2_1 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	_unnamed__2_2 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__3 <= `BSV_ASSIGNMENT_DELAY 8'd0;
	_unnamed__3_1 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	_unnamed__3_2 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__4 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__5 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__6 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__7 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__8 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	_unnamed__9 <= `BSV_ASSIGNMENT_DELAY 24'd0;
	cx <= `BSV_ASSIGNMENT_DELAY 12'd0;
	cx2 <= `BSV_ASSIGNMENT_DELAY 12'd0;
	kernel <= `BSV_ASSIGNMENT_DELAY 4'd0;
	mem_rCache <= `BSV_ASSIGNMENT_DELAY 46'h0AAAAAAAAAAA;
	mem_rRdPtr <= `BSV_ASSIGNMENT_DELAY 13'd0;
	mem_rWrPtr <= `BSV_ASSIGNMENT_DELAY 13'd0;
	mx <= `BSV_ASSIGNMENT_DELAY 8'd0;
	p0_rv <= `BSV_ASSIGNMENT_DELAY 2'd0;
	p1_rv <= `BSV_ASSIGNMENT_DELAY 2'd0;
	p2_rv <= `BSV_ASSIGNMENT_DELAY 2'd0;
	p3_rv <= `BSV_ASSIGNMENT_DELAY 2'd0;
	width <= `BSV_ASSIGNMENT_DELAY 12'd16;
      end
    else
      begin
        if (_unnamed_$EN) _unnamed_ <= `BSV_ASSIGNMENT_DELAY _unnamed_$D_IN;
	if (_unnamed__0_1$EN)
	  _unnamed__0_1 <= `BSV_ASSIGNMENT_DELAY _unnamed__0_1$D_IN;
	if (_unnamed__0_2$EN)
	  _unnamed__0_2 <= `BSV_ASSIGNMENT_DELAY _unnamed__0_2$D_IN;
	if (_unnamed__1$EN)
	  _unnamed__1 <= `BSV_ASSIGNMENT_DELAY _unnamed__1$D_IN;
	if (_unnamed__10$EN)
	  _unnamed__10 <= `BSV_ASSIGNMENT_DELAY _unnamed__10$D_IN;
	if (_unnamed__11$EN)
	  _unnamed__11 <= `BSV_ASSIGNMENT_DELAY _unnamed__11$D_IN;
	if (_unnamed__12$EN)
	  _unnamed__12 <= `BSV_ASSIGNMENT_DELAY _unnamed__12$D_IN;
	if (_unnamed__13$EN)
	  _unnamed__13 <= `BSV_ASSIGNMENT_DELAY _unnamed__13$D_IN;
	if (_unnamed__14$EN)
	  _unnamed__14 <= `BSV_ASSIGNMENT_DELAY _unnamed__14$D_IN;
	if (_unnamed__15$EN)
	  _unnamed__15 <= `BSV_ASSIGNMENT_DELAY _unnamed__15$D_IN;
	if (_unnamed__16$EN)
	  _unnamed__16 <= `BSV_ASSIGNMENT_DELAY _unnamed__16$D_IN;
	if (_unnamed__1_1$EN)
	  _unnamed__1_1 <= `BSV_ASSIGNMENT_DELAY _unnamed__1_1$D_IN;
	if (_unnamed__1_2$EN)
	  _unnamed__1_2 <= `BSV_ASSIGNMENT_DELAY _unnamed__1_2$D_IN;
	if (_unnamed__2$EN)
	  _unnamed__2 <= `BSV_ASSIGNMENT_DELAY _unnamed__2$D_IN;
	if (_unnamed__2_1$EN)
	  _unnamed__2_1 <= `BSV_ASSIGNMENT_DELAY _unnamed__2_1$D_IN;
	if (_unnamed__2_2$EN)
	  _unnamed__2_2 <= `BSV_ASSIGNMENT_DELAY _unnamed__2_2$D_IN;
	if (_unnamed__3$EN)
	  _unnamed__3 <= `BSV_ASSIGNMENT_DELAY _unnamed__3$D_IN;
	if (_unnamed__3_1$EN)
	  _unnamed__3_1 <= `BSV_ASSIGNMENT_DELAY _unnamed__3_1$D_IN;
	if (_unnamed__3_2$EN)
	  _unnamed__3_2 <= `BSV_ASSIGNMENT_DELAY _unnamed__3_2$D_IN;
	if (_unnamed__4$EN)
	  _unnamed__4 <= `BSV_ASSIGNMENT_DELAY _unnamed__4$D_IN;
	if (_unnamed__5$EN)
	  _unnamed__5 <= `BSV_ASSIGNMENT_DELAY _unnamed__5$D_IN;
	if (_unnamed__6$EN)
	  _unnamed__6 <= `BSV_ASSIGNMENT_DELAY _unnamed__6$D_IN;
	if (_unnamed__7$EN)
	  _unnamed__7 <= `BSV_ASSIGNMENT_DELAY _unnamed__7$D_IN;
	if (_unnamed__8$EN)
	  _unnamed__8 <= `BSV_ASSIGNMENT_DELAY _unnamed__8$D_IN;
	if (_unnamed__9$EN)
	  _unnamed__9 <= `BSV_ASSIGNMENT_DELAY _unnamed__9$D_IN;
	if (cx$EN) cx <= `BSV_ASSIGNMENT_DELAY cx$D_IN;
	if (cx2$EN) cx2 <= `BSV_ASSIGNMENT_DELAY cx2$D_IN;
	if (kernel$EN) kernel <= `BSV_ASSIGNMENT_DELAY kernel$D_IN;
	if (mem_rCache$EN)
	  mem_rCache <= `BSV_ASSIGNMENT_DELAY mem_rCache$D_IN;
	if (mem_rRdPtr$EN)
	  mem_rRdPtr <= `BSV_ASSIGNMENT_DELAY mem_rRdPtr$D_IN;
	if (mem_rWrPtr$EN)
	  mem_rWrPtr <= `BSV_ASSIGNMENT_DELAY mem_rWrPtr$D_IN;
	if (mx$EN) mx <= `BSV_ASSIGNMENT_DELAY mx$D_IN;
	if (p0_rv$EN) p0_rv <= `BSV_ASSIGNMENT_DELAY p0_rv$D_IN;
	if (p1_rv$EN) p1_rv <= `BSV_ASSIGNMENT_DELAY p1_rv$D_IN;
	if (p2_rv$EN) p2_rv <= `BSV_ASSIGNMENT_DELAY p2_rv$D_IN;
	if (p3_rv$EN) p3_rv <= `BSV_ASSIGNMENT_DELAY p3_rv$D_IN;
	if (width$EN) width <= `BSV_ASSIGNMENT_DELAY width$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    _unnamed_ = 8'hAA;
    _unnamed__0_1 = 16'hAAAA;
    _unnamed__0_2 = 24'hAAAAAA;
    _unnamed__1 = 8'hAA;
    _unnamed__10 = 24'hAAAAAA;
    _unnamed__11 = 24'hAAAAAA;
    _unnamed__12 = 24'hAAAAAA;
    _unnamed__13 = 24'hAAAAAA;
    _unnamed__14 = 24'hAAAAAA;
    _unnamed__15 = 24'hAAAAAA;
    _unnamed__16 = 32'hAAAAAAAA;
    _unnamed__1_1 = 16'hAAAA;
    _unnamed__1_2 = 24'hAAAAAA;
    _unnamed__2 = 8'hAA;
    _unnamed__2_1 = 16'hAAAA;
    _unnamed__2_2 = 24'hAAAAAA;
    _unnamed__3 = 8'hAA;
    _unnamed__3_1 = 16'hAAAA;
    _unnamed__3_2 = 24'hAAAAAA;
    _unnamed__4 = 24'hAAAAAA;
    _unnamed__5 = 24'hAAAAAA;
    _unnamed__6 = 24'hAAAAAA;
    _unnamed__7 = 24'hAAAAAA;
    _unnamed__8 = 24'hAAAAAA;
    _unnamed__9 = 24'hAAAAAA;
    cx = 12'hAAA;
    cx2 = 12'hAAA;
    kernel = 4'hA;
    mem_rCache = 46'h2AAAAAAAAAAA;
    mem_rRdPtr = 13'h0AAA;
    mem_rWrPtr = 13'h0AAA;
    mx = 8'hAA;
    p0_rv = 2'h2;
    p1_rv = 2'h2;
    p2_rv = 2'h2;
    p3_rv = 2'h2;
    width = 12'hAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMerge
