package conv;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import sumTree::*;

interface Conv;
        method Action put(Vector#(8, Vector#(8,DataType)) datas, DataType sumPrev);
        method ActionValue#(DataType) result;
endinterface

(*synthesize*)
module mkConv(Conv);
SumTree s[8];
SumTree s2 <- mkSumTree;
Reg#(Vector#(64,DataType)) sIn <- mkRegU;

for(int i=0;i<8;i=i+1)
		s[i]   <- mkSumTree;



for(int i=0;i<8;i=i+1)
rule sum;
	Vector#(8,DataType) mx = newVector;
	for(int j=0;j<8;j=j+1)
		mx[i] = sIn[8*i+j];
	s[i].put(mx);
endrule

rule sumOut;
	Vector#(8,DataType) d = newVector;
	for(int i=0;i<8;i=i+1)
		d[i] <- s[i].result;

	s2.put(d);
endrule

method Action put(Vector#(8, Vector#(8,DataType)) datas, DataType sumPrev);
		Vector#(64,DataType) mx = unpack(pack(datas));	
		Vector#(64,DataType) mx2 = newVector;
		for(int i=0;i<64; i = i + 1)
			mx2[i] = mx[i] + sumPrev;
		sIn <= mx2;
endmethod
	
method ActionValue#(DataType) result;
	let d <- s2.result;
	return d;
endmethod
	
endmodule
endpackage
