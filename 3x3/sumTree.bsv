package sumTree;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;

#define L0 3

#define KERNL 3
interface SumTree;
        method Action put(Vector#(KERNL, DataType) datas);
        method ActionValue#(DataType) result;
endinterface

(*synthesize*)
module mkSumTree(SumTree);
Reg#(DataType) s0[L0];
Reg#(DataType) s1 <- mkReg(0);


for(int i =0; i<L0; i = i + 1)
		s0[i] <- mkReg(0);

FIFOF#(DataType) sum <- mkFIFOF;

	rule _Q1;
			s1 <= s0[0] + s0[1] + s0[2];
	endrule

	rule _Q2;
			sum.enq(s1);
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
