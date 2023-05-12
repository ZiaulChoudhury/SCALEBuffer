package merger;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;
import coalescer::*;

#define REPL 1


#define BWIDTH0 8
#define BWIDTH1 16
#define BWIDTH2 24
#define BWIDTH3 32
#define BWIDTH4 40
#define BWIDTH5 48
#define BWIDTH6 56
#define BWIDTH7 64


// REPL * 8
#define MEMWORD 8

//REPLPADD * 8
#define MEMWORD2 40

// REPL + KERNEL - 1
#define REPLPADD 5
 
interface Merge;
        method Action put(Vector#(REPLPADD, DataType) datas);
        method ActionValue#(Vector#(8, Vector#(8, DataType))) get;
	method Action configure(UInt#(6) a, Bit#(8) m, UInt#(12) wx);	
endinterface

(*synthesize*)
module mkMerge(Merge);
Reg#(UInt#(6))  kernel   <- mkReg(0);
Reg#(Bit#(8))   mx       <- mkReg(0);
Reg#(UInt#(12))  cx       <- mkReg(0);
Reg#(UInt#(12))  cx2      <- mkReg(0);
Reg#(UInt#(12))  width    <- mkReg(32);

Reg#(Bit#(BWIDTH0))  _L1[REPLPADD];
Reg#(Bit#(BWIDTH1))  _L2[REPLPADD];
Reg#(Bit#(BWIDTH2))  _L3[REPLPADD];
Reg#(Bit#(BWIDTH3))  _L4[REPLPADD];
Reg#(Bit#(BWIDTH4))  _L5[REPLPADD];
Reg#(Bit#(BWIDTH5))  _L6[REPLPADD];
Reg#(Bit#(BWIDTH6))  _L7[REPLPADD];
Reg#(Bit#(BWIDTH7))  _L8[REPLPADD];
Reg#(int) _clk 		<- mkReg(0);

rule inCLK;
	_clk <= _clk + 1;
endrule
	
Coalesce coax <- mkCoalesce;

for(int i=0;i<REPLPADD;i=i+1) begin
	_L1[i]   <- mkReg(0);
	_L2[i]   <- mkReg(0);
	_L3[i]   <- mkReg(0);
	_L4[i]   <- mkReg(0);
	_L5[i]   <- mkReg(0);
	_L6[i]   <- mkReg(0);
	_L7[i]   <- mkReg(0);
	_L8[i]   <- mkReg(0);
end


FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p4 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p5 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p6 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p7 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p8 <- mkPipelineFIFOF;

FIFOF#(Bit#(MEMWORD2)) mem <- mkSizedBRAMFIFOF(100000);
FIFOF#(Bit#(MEMWORD2)) inQ <- mkFIFOF;
Reg#(Bit#(MEMWORD2))  _L0  <- mkReg(0);
	//###########################################################


	for(int i=0;i< REPLPADD-1; i = i + 1) begin 
	rule _Q1;
		Bit#(BWIDTH1) x1    = extend(_L1[i]);
		Bit#(BWIDTH1) x2    = extend(_L1[i+1]);
		Bit#(BWIDTH1) y     = (x1 << 8) | x2;
		_L2[i] <= y;	
	endrule

	
	rule _Q2;
		Bit#(BWIDTH2) x1    = extend(_L2[i]);
		Bit#(BWIDTH2) x2    = extend(_L2[i+1]);
		Bit#(BWIDTH2) y     = (x1 << 8) | x2;
		_L3[i] <= y;	
        endrule

	rule _Q3;
		Bit#(BWIDTH3) x1    = extend(_L3[i]);
		Bit#(BWIDTH3) x2    = extend(_L3[i+1]);
		Bit#(BWIDTH3) y     = (x1 << 8) | x2;
		if ( mx[2] == 1)
			_L4[i] <= y;	
		else
			_L4[i] <= extend(_L3[i]);
        endrule
	
	rule _Q4;
		Bit#(BWIDTH4) x1    = extend(_L4[i]);
		Bit#(BWIDTH4) x2    = extend(_L4[i+1]);
		Bit#(BWIDTH4) y     = (x1 << 8) | x2;
		if ( mx[3] == 1)
			_L5[i] <= y;	
		else
			_L5[i] <= extend(_L4[i]);
        endrule
	
	rule _Q5;
		Bit#(BWIDTH5) x1    = extend(_L5[i]);
		Bit#(BWIDTH5) x2    = extend(_L5[i+1]);
		Bit#(BWIDTH5) y     = (x1 << 8) | x2;
		if ( mx[4] == 1)
			_L6[i] <= y;	
		else
			_L6[i] <= extend(_L5[i]);
        endrule
	
	rule _Q6;
		Bit#(BWIDTH6) x1    = extend(_L6[i]);
		Bit#(BWIDTH6) x2    = extend(_L6[i+1]);
		Bit#(BWIDTH6) y     = (x1 << 8) | x2;
		if ( mx[5] == 1)
			_L7[i] <= y;	
		else
			_L7[i] <= extend(_L6[i]);
        endrule
	
	rule _Q7;
		Bit#(BWIDTH7) x1    = extend(_L7[i]);
		Bit#(BWIDTH7) x2    = extend(_L7[i+1]);
		Bit#(BWIDTH7) y     = (x1 << 8) | x2;
		if ( mx[6] == 1)
			_L8[i] <= y;	
		else
			_L8[i] <= extend(_L7[i]);
        endrule
	end	
	//################################################
	
    	rule _activate1 (cx2 >= width);
		p0.deq;
		Bit#(MEMWORD2) d = (_L0 >> MEMWORD);
		mem.enq(d);
		p1.enq(1);
    	endrule

   	rule _activate2;
		p1.deq;
		p2.enq(1);
    	endrule
   	
	rule _activate3;
		p2.deq;
		p3.enq(1);
    	endrule
	
	rule _activate4;
		p3.deq;
		p4.enq(1);
    	endrule
	
	rule _activate5;
		p4.deq;
		p5.enq(1);
    	endrule

	rule _activate6;
		p5.deq;
		p6.enq(1);
    	endrule
	
	rule _activate67;
		p6.deq;
		p7.enq(1);
    	endrule
	//################################################
	

	rule lateralLoad (cx2 >= width);
			let d1 = mem.first; mem.deq;
			
			let d2 = inQ.first; inQ.deq;
			Vector#(REPLPADD, DataType) datas2 = unpack(d1);
			Vector#(REPLPADD, DataType) datas3 = unpack(d2);
			//for(int i=0; i<REPLPADD; i = i + 1)
			//$display(" MEM = %d IN = %d @CLK = %d ", datas2[i], datas3[i], _clk); 	
			let d3 = d1 | d2;
			_L0 <= d3;
			Vector#(REPLPADD, DataType) datas = unpack(d3);
			for(int i = 0; i <REPLPADD; i = i + 1)
				_L1[i] <= pack(datas[i]);

			p0.enq(1);	
	endrule

	rule initialLoad (cx2 < width);
			let d = inQ.first; inQ.deq;
			mem.enq(d);
			cx2 <= cx2 + 1;
	endrule
	
	
	rule coalesce;
		p7.deq;
			//Vector#(3,DataType) d = unpack(truncate(_L8[0]));
			//$write("[%d %d %d]", d[0], d[1], d[2]);
			//$display("\n------------------------- ");	

		coax.put(unpack(zeroExtend(pack(_L8[0]))));	

	endrule
		
        method Action put(Vector#(REPLPADD, DataType) datas);
		inQ.enq(pack(datas));
	endmethod
	
        method ActionValue#(Vector#(8, Vector#(8, DataType))) get;
		let out <- coax.get;
		return out;
	endmethod
	
	method Action configure(UInt#(6) a, Bit#(8) m, UInt#(12) wx);	
			kernel  <= a;
			mx 	<= m;
			width   <= wx;
			coax.configure(a,wx);
	endmethod
	
endmodule
endpackage
