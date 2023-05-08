package flowtest2;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import bitonic::*;

#define VLEN 16


(*synthesize*)
module mkFlowTest2();
	Bitonic  px 		<- mkBitonic;	
	Reg#(int) count 	<- mkReg(0);
	rule put;
		Vector#(VLEN,DataType) d = newVector;
		for(UInt#(8) i=0; i< VLEN; i = i + 1)
			d[i] = i + 1;
		px.put(d);
	endrule	

	rule receive;
		let d <- px.get;					
		for(int i=0 ;i<VLEN; i = i + 1)
			$display("%d", d[i]);
		//if(count == 1)
		$finish(0);
		//count <= count + 1;	
	endrule

endmodule
endpackage

