package coalescer2;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;


#define VLEN 64

// 8 x 8 x 8 
#define BITWIDTH 512

interface Coalesce2;
        method Action put(Vector#(VLEN, DataType) datas);
	method Action configure(UInt#(10) shift, UInt#(4) ker);
        method ActionValue#(Vector#(VLEN, DataType)) get;
endinterface

(*synthesize*)
module mkCoalesce2(Coalesce2);

Reg#(Bit#(BITWIDTH))  _L1    <- mkReg(0);
Reg#(Bit#(BITWIDTH))  _L2    <- mkReg(0);
Reg#(Bit#(BITWIDTH))  _L3    <- mkReg(0);
Reg#(Bit#(BITWIDTH))  _L4    <- mkReg(0);
Reg#(UInt#(10)) shift_amount <- mkReg(0);
Reg#(UInt#(4)) kernel 	     <- mkReg(0);
Reg#(UInt#(4)) count 	     <- mkReg(0);

FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;

FIFOF#(Bit#(BITWIDTH)) inQ <- mkFIFOF;


	//#################################################
	rule _Q1;
		p0.deq;
		Vector#(VLEN,DataType) x = unpack(_L1);
		for(int i=0 ;i<10; i = i + 1)
			$write(" %d ", x[i]);
		$display(" ---------------- %d -------------- ", count);
		_L2 <= _L1 | _L2;
		count <= count + 1;
		if(count == kernel-1)
			p1.enq(1);
		p2.enq(1);
	endrule
	
	rule _Q2;
		p2.deq;
		_L2 <= _L2 << (shift_amount*8);
        endrule
    	
	rule _activate1;
		let d =  inQ.first; inQ.deq;
		_L1 <= d;
		p0.enq(1);
	endrule
		
	//################################################

		
        method Action put(Vector#(VLEN, DataType) datas);
		inQ.enq(pack(datas));
	endmethod
	
	method Action configure(UInt#(10) shift, UInt#(4) ker);
		shift_amount <= shift;
		kernel <= ker;
	endmethod
	
        method ActionValue#(Vector#(VLEN, DataType)) get;
		p1.deq;
		return unpack(_L2);
	endmethod
	
endmodule
endpackage
