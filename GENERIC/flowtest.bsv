package flowtest;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import merger::*;

#define REPL 16
#define KERNL 5

(*synthesize*)
module mkFlowTest();
	Merge px 		<- mkMerge;
	Reg#(Bool) init 	<- mkReg(False);	
	Reg#(UInt#(8)) value 	<- mkReg(1);
	Reg#(int) count		<- mkReg(0);	
	rule configure(init == False);
		Bit#(8) mx = 0;
		mx[0] = 1;
		mx[1] = 1;
		mx[2] = 1;
		mx[3] = 1;
		px.configure(KERNL,mx,16);
		init <= True;
	endrule

	rule send(init == True);
		Vector#(REPL,DataType) d = newVector;
		for(UInt#(8) i=0 ;i< REPL;i=i+1)
			d[i] = ((i+1)*value);
		if (value == REPL)
			value <= 1;
		else
			value <= value + 1;
		px.put(d);
	endrule

	rule receive;
		let d <- px.get;					
									//for(int i=0;i<REPL; i = i + 1) begin
									Vector#(8,Vector#(8,DataType)) x = unpack(pack(d[0]));
									for (int j=0;j<KERNL; j = j + 1) begin
										for (int k=0;k<KERNL; k = k + 1) begin
											$write("%d",x[j][k]);
											$write(" ");
									end
									end
									$display();
									//end
		//$display("---------------------------------------------------------------------");
		count <= count + 1;
		if (count == 20)
			$finish(0);
	endrule

endmodule
endpackage

