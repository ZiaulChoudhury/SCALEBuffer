package coalescer;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;


#define VLEN 16


interface Coalesce;
        method Action put(Vector#(VLEN, DataType) datas);
        method ActionValue#(Vector#(VLEN, DataType)) get;
endinterface

(*synthesize*)
module mkCoalesce(Coalesce);

Reg#(DataType)  _L1[VLEN];
Reg#(DataType)  _L2[VLEN];
Reg#(DataType)  _L3[VLEN];
Reg#(DataType)  _L4[VLEN];

for(int i=0;i<VLEN;i=i+1) begin
	_L1[i]   <- mkReg(0);
	_L2[i]   <- mkReg(0);
	_L3[i]   <- mkReg(0);
	_L4[i]   <- mkReg(0);
end

FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;

FIFOF#(Vector#(VLEN,DataType)) inQ <- mkFIFOF;


	//#################################################

	for(int i=0;i< VLEN-1; i = i + 1) begin 
	rule _Q1;
		if(i == 0)
		_L2[i] <= 0;
		_L2[i+1] <= _L1[i];
	endrule


	
	rule _Q2;
		if(i == 0)
		_L3[i] <= 0;
		_L3[i+1] <= _L2[i];
        endrule
	
	rule _Q3;
		if(i == 0)
		_L4[i] <= 0;
		_L4[i+1] <= _L3[i];
        endrule
	end
		
	//################################################

    	rule _activate1;
		let d =  inQ.first; inQ.deq;
		for(int i=0 ;i< VLEN; i=i+1) begin
			_L1[i] <= d[i];
		end
		p0.enq(1);
	endrule
		
    	rule _activate2;
		p0.deq;
		p1.enq(1);
    	endrule

   	rule _activate3;
		p1.deq;
		p2.enq(1);
    	endrule
   	
	rule _activate4;
		p2.deq;
		p3.enq(1);
    	endrule
	
	//################################################
	
		
        method Action put(Vector#(VLEN, DataType) datas);
		inQ.enq(datas);
	endmethod
	
        method ActionValue#(Vector#(VLEN, DataType)) get;
		p3.deq;
		Vector#(VLEN,DataType) d = newVector;
		for(int i = 0 ;i<VLEN; i = i + 1)
			d[i] = _L4[i];
		return d;
	endmethod
	
endmodule
endpackage
