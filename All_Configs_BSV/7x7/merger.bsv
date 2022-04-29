package merger;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;


#define BWIDTH0 8
#define BWIDTH1 16
#define BWIDTH2 24
#define BWIDTH3 32
#define BWIDTH4 40
#define BWIDTH5 48
#define BWIDTH6 56
#define BWIDTH7 56

//scaling factor
#define REPL 4

// REPL * 8
#define MEMWORD 32

//REPLPADD(REPL + 6)
#define REPLPADD 10

//REPLPADD * 8
#define MEMWORD2 80	

#define KERNEL 7  
interface Merge;
        method Action put(Vector#(REPLPADD, DataType) datas);
        method ActionValue#(Vector#(REPL, Vector#(KERNEL,Bit#(BWIDTH7)))) get;
	method Action configure(UInt#(4) a, Bit#(8) m, UInt#(12) wx);	
endinterface

(*synthesize*)
module mkMerge(Merge);
Reg#(UInt#(4))  kernel   <- mkReg(0);
Reg#(Bit#(8))   mx       <- mkReg(0);
Reg#(UInt#(12))  cx       <- mkReg(0);
Reg#(UInt#(12))  cx2      <- mkReg(0);
Reg#(UInt#(12))  width    <- mkReg(16);

Reg#(Bit#(BWIDTH0))  _L1[REPLPADD];
Reg#(Bit#(BWIDTH1))  _L2[REPLPADD];
Reg#(Bit#(BWIDTH2))  _L3[REPLPADD];
Reg#(Bit#(BWIDTH3))  _L4[REPLPADD];
Reg#(Bit#(BWIDTH4))  _L5[REPLPADD];
Reg#(Bit#(BWIDTH5))  _L6[REPLPADD];
Reg#(Bit#(BWIDTH6))  _L7[REPLPADD];
Reg#(Bit#(BWIDTH7))  _L9[KERNEL*REPLPADD];


for(int i=0;i<REPLPADD;i=i+1) begin
	_L1[i]   <- mkReg(0);
	_L2[i]   <- mkReg(0);
	_L3[i]   <- mkReg(0);
	_L4[i]   <- mkReg(0);
	_L5[i]   <- mkReg(0);
	_L6[i]   <- mkReg(0);
	_L7[i]   <- mkReg(0);
end

for(int i=0;i<KERNEL*REPLPADD;i=i+1) 
	_L9[i]   <- mkReg(0);


FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p4 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p5 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p6 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p7 <- mkPipelineFIFOF;

FIFOF#(Bit#(MEMWORD2)) mem <- mkSizedBRAMFIFOF(2048);
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
		_L4[i] <= y;	
        endrule
	
	rule _Q4;
		Bit#(BWIDTH4) x1    = extend(_L4[i]);
		Bit#(BWIDTH4) x2    = extend(_L4[i+1]);
		Bit#(BWIDTH4) y     = (x1 << 8) | x2;
		_L5[i] <= y;	
        endrule
	
	rule _Q5;
		Bit#(BWIDTH5) x1    = extend(_L5[i]);
		Bit#(BWIDTH5) x2    = extend(_L5[i+1]);
		Bit#(BWIDTH5) y     = (x1 << 8) | x2;
		_L6[i] <= y;	
        endrule
	
	rule _Q6;
		Bit#(BWIDTH6) x1    = extend(_L6[i]);
		Bit#(BWIDTH6) x2    = extend(_L6[i+1]);
		Bit#(BWIDTH6) y     = (x1 << 8) | x2;
		_L7[i] <= extend(_L6[i]);
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
	//################################################
	

	rule lateralLoad (cx2 >= width);
			let d1 = mem.first; mem.deq;
			let d2 = inQ.first; inQ.deq;
			let d3 = d1 | d2;
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
		p6.deq;
		for(int i=0;i<REPLPADD; i = i + 1) begin
			Vector#(KERNEL,DataType) mx = unpack(_L7[i]);
			for(int j=0;j<KERNEL;j=j+1)
                	_L9[i*KERNEL+j]          <= (_L9[i*KERNEL+j] << 8) | zeroExtend(pack(mx[j]));
		end
		if (cx >= zeroExtend(kernel-1))
			p7.enq(1);

		if (cx == width-1)
                        cx <= 0;
                else
                        cx <= cx + 1;
	endrule
		
        method Action put(Vector#(REPLPADD, DataType) datas);
		inQ.enq(pack(datas));
	endmethod
	
        method ActionValue#(Vector#(REPL, Vector#(KERNEL,Bit#(BWIDTH7)))) get;
		p7.deq;
		Vector#(REPL, Vector#(KERNEL,Bit#(BWIDTH7))) out = newVector;
		for(int i=0;i<REPL; i = i + 1)
			for(int j=0;j<KERNEL;j=j+1)
			out[i][j] = _L9[i*KERNEL+j];
		return out;
	endmethod
	
	method Action configure(UInt#(4) a, Bit#(8) m, UInt#(12) wx);	
			kernel  <= a;
			mx 	<= m;
			width   <= wx;
	endmethod
	
endmodule
endpackage
