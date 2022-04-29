package conv;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import sumTree::*;

#define KERNL 5
#define KERNLMUL 25
interface Conv;
        method Action put(Vector#(KERNL, Vector#(KERNL,DataType)) datas, DataType sumPrev);
        method ActionValue#(DataType) result;
endinterface

(*synthesize*)
module mkConv(Conv);
SumTree s[KERNL];
SumTree s2 <- mkSumTree;
Reg#(Vector#(KERNLMUL,DataType)) sIn <- mkRegU;

for(int i=0;i<KERNL;i=i+1)
		s[i]   <- mkSumTree;



for(int i=0;i<KERNL;i=i+1)
rule sum;
	Vector#(KERNL,DataType) mx = newVector;
	for(int j=0;j<KERNL;j=j+1)
		mx[i] = sIn[KERNL*i+j];
	s[i].put(mx);
endrule

rule sumOut;
	Vector#(KERNL,DataType) d = newVector;
	for(int i=0;i<KERNL;i=i+1)
		d[i] <- s[i].result;

	s2.put(d);
endrule

method Action put(Vector#(KERNL, Vector#(KERNL,DataType)) datas, DataType sumPrev);
		Vector#(KERNLMUL,DataType) mx = unpack(pack(datas));	
		Vector#(KERNLMUL,DataType) mx2 = newVector;
		for(int i=0;i<KERNLMUL; i = i + 1)
			mx2[i] = mx[i] + sumPrev;
		sIn <= mx2;
endmethod
	
method ActionValue#(DataType) result;
	let d <- s2.result;
	return d;
endmethod
	
endmodule
endpackage
