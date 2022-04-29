package sumTree;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;

#define L0 9
#define L1 4
#define L2 2
#define KERNL 9

interface SumTree;
        method Action put(Vector#(KERNL, DataType) datas);
        method ActionValue#(DataType) result;
endinterface

(*synthesize*)
module mkSumTree(SumTree);
Reg#(UInt#(4)) alpha <- mkReg(5);

Reg#(DataType) s0[L0];
Reg#(DataType) s1[L0];
Reg#(DataType) s2[L0];


for(int i =0; i<L0; i = i + 1)
		s0[i] <- mkReg(0);
for(int i =0; i<L1; i = i + 1)
		s1[i] <- mkReg(0);
for(int i =0; i<L2; i = i + 1)
		s2[i] <- mkReg(0);

FIFOF#(DataType) sum <- mkFIFOF;

	for(int i=0; i < L1; i = i + 1) 
	rule _Q1;
			s1[i] <= s0[i] + s0[2*i+1];
	endrule

	for(int i=0; i < L2; i = i + 1) 
	rule _Q1;
			s2[i] <= s1[i] + s1[2*i+1];
	endrule

	rule _Q3;
			sum.enq(s2[0] + s2[1]);
	endrule

		
        method Action put(Vector#(KERNL, DataType) datas);
		for(int i=0;i<KERNL;i=i+1)
			s0[i] <= datas[i];
	endmethod
	
        method ActionValue#(DataType) result;
			sum.deq;
			return sum.first;
	endmethod

endmodule
endpackage
