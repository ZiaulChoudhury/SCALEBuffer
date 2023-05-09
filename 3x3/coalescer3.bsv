package coalescer3;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;


#define VLEN 8

//8 x 8  
#define BITWIDTH 64

interface Coalesce3;
        method Action put(Vector#(VLEN, DataType) datas);
	method Action configure(UInt#(10) shift, UInt#(4) ker);
        method ActionValue#(Vector#(VLEN, Vector#(VLEN, DataType))) get;
endinterface

(*synthesize*)
module mkCoalesce3(Coalesce3);

Reg#(Bit#(BITWIDTH))  _L1[VLEN];
Reg#(Bit#(BITWIDTH))  _L2[VLEN];
Reg#(DataType)        window[VLEN][VLEN];
Reg#(DataType)        window2[VLEN][VLEN];


for(int i=0; i<VLEN; i = i + 1) begin
	_L1[i] <- mkReg(0);
	_L2[i] <- mkReg(0);
end


for(int i=0 ;i< VLEN; i = i + 1)
	for(int j=0; j< VLEN; j = j + 1) begin
		window[i][j] <- mkReg(0);
		window2[i][j] <- mkReg(0);
end

Reg#(UInt#(10)) shift_amount <- mkReg(0);
Reg#(UInt#(4)) kernel 	     <- mkReg(0);
Reg#(UInt#(4)) count 	     <- mkReg(0);

FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;

FIFOF#(Vector#(VLEN,DataType)) inQ <- mkFIFOF;


	//#################################################
	rule _Q1;
		for(int i=0;i<VLEN; i = i + 1)
		_L2[i] <= (_L1[i]) | (_L2[i]<<8);
	endrule
	
	rule _activate1;
		let d =  inQ.first; inQ.deq;
		for(int i=0; i<VLEN; i = i + 1)
			_L1[i] <= zeroExtend(pack(d[i]));
		p0.enq(1);
	endrule
	
	rule _activate2;
		p0.deq;
		count <= count + 1;
		if(count >= kernel-1)
			p1.enq(1);	
	endrule

	rule fill_window;
		p1.deq;
		for(int i=0; i < VLEN; i = i + 1) begin
			Vector#(VLEN, DataType) xx = unpack(_L2[i]);
			for(int j = 0; j<VLEN; j = j + 1)
				window[j][i] <= xx[j];
		end
		p2.enq(1);
	endrule
	
	//################################################

		
        method Action put(Vector#(VLEN, DataType) datas);
		inQ.enq(datas);
	endmethod
	
        method ActionValue#(Vector#(VLEN, Vector#(VLEN, DataType))) get;
		p2.deq;
		Vector#(VLEN, Vector#(VLEN,DataType)) x = newVector;
		for(int i=0;i <VLEN; i = i + 1)
			for(int j=0; j<VLEN; j= j + 1)
				x[i][j] = window[i][j];
		return x;
	endmethod
	
	method Action configure(UInt#(10) shift, UInt#(4) ker);
		shift_amount <= shift;
		kernel <= ker;
	endmethod	
endmodule
endpackage
