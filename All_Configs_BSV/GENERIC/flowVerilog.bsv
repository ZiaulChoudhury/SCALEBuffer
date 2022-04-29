package flowVerilog;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import merger::*;
import conv::*;

#define REPL 128
interface STDIN;
        method ActionValue#(Bit#(32)) get;
        method Action put(Bit#(8) datas);
	method Action configure(UInt#(4) a, Bit#(8) m, UInt#(12) wx, UInt#(19) wxx);	
endinterface

(*synthesize*)
module mkFlowTest(STDIN);
	Merge px 		 <- mkMerge;
	Reg#(Bool)      init 	 <- mkReg(False);	
	Reg#(UInt#(8))   value 	 <- mkReg(1);
	Reg#(UInt#(8))   seed     <- mkReg(1);
	Reg#(UInt#(19)) index    <- mkReg(0);
	Reg#(Vector#(REPL, Vector#(8,Vector#(8,DataType)))) out <- mkRegU;
	Reg#(int) count 	 <- mkReg(0);
	Conv cx[REPL];
	Reg#(Bool)	fetch 	  <- mkReg(True);
	
	for(int i=0;i<REPL; i = i + 1)
		cx[i] <- mkConv;

	FIFOF#(DataType) outQ <- mkFIFOF;
		
	rule send(init == True);
		Vector#(136,DataType) d = newVector;
		for(UInt#(8) i=0 ;i< 136;i=i+1)
			d[i] = (i*value + seed);
		value <= value + 1;
		px.put(d);
	endrule

	rule receive (fetch == True);
		let d <- px.get;					
		out <= unpack(pack(d));
		fetch <= False;
	endrule



	rule _startConv;
		cx[0].put(out[0],0);
	endrule
		
	for(int i=1;i<REPL;i=i+1)
		rule _CONV;
			let d <- cx[i-1].result;
			cx[i].put(out[i],d);
		endrule


	rule _getFinal;
		let d <- cx[REPL-1].result;
		outQ.enq(d);
		fetch <= True;
	endrule
			
	method Action configure(UInt#(4) a, Bit#(8) m, UInt#(12) wx, UInt#(19) wxx);	
		px.configure(a,m,wx);
		init <= True;
		index <= wxx;
	endmethod
        
	method Action put(Bit#(8) datas);
		seed <= unpack(extend(datas));
	endmethod 
        
	method ActionValue#(Bit#(32)) get;
		outQ.deq;
		return extend(pack(outQ.first));
	endmethod
endmodule
endpackage

