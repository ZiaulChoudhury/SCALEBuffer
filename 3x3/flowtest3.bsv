package flowtest3;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import coalescer3::*;

#define VLEN 8


(*synthesize*)
module mkFlowTest3();
	Coalesce3  px 		<- mkCoalesce3;	
	Reg#(int) count 	<- mkReg(0);
	Reg#(Bool) init		<- mkReg(False);
	Reg#(UInt#(8)) 	value 	<- mkReg(1);

	rule initialize(init == False);
		px.configure(5,5);
		init <= True;
	endrule
	
	rule put (init == True);
		Vector#(VLEN,DataType) d = replicate(0);
		for(UInt#(8) i=0; i< 5; i = i + 1)
			d[i] = (i+1)*value;
		value <= value + 1;
		px.put(d);
	endrule	

	rule receive;
		let d <- px.get;				
		for(int i=0 ;i<5; i = i + 1) begin
			for(int j = 0; j<5; j = j +1)
				$write("%d", d[i][j]);
			$display();
		end
		$display();
		count <= count + 1;
		if(count == 1)
			$finish(0);
	endrule

endmodule
endpackage

