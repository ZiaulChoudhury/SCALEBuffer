package flowtest;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import merger::*;

#define REPL 16
#define IMG  16
#define KERNL 5

// REPL + 4
#define REPLPADD 20

(*synthesize*)
	module mkFlowTest();
		Merge px 		<- mkMerge;
		Reg#(Bool) init 	<- mkReg(False);	
		Reg#(Bool) inL 		<- mkReg(True);	
		Reg#(UInt#(8)) value 	<- mkReg(1);
		Reg#(int) count		<- mkReg(0);	

		rule configure(init == False);
			Bit#(8) mx = 0;
			mx[0] = 1;
			mx[1] = 1;
			px.configure(KERNL,mx,16);
			init <= True;
		endrule

		rule intialLoad (init == True && inL == True);
			Vector#(REPLPADD,DataType) d = replicate(0);
			for(UInt#(8) i=0 ;i < KERNL-1;i=i+1)
				d[i] = ((i+1)*value);

			if (value == IMG) begin
				value <= 1;
				inL   <= False;
			end
			else
				value <= value + 1;
			px.put(d);
		endrule

		rule lateralLoad (init == True && inL == False);
			Vector#(REPLPADD,DataType) d = replicate(0);
			for(UInt#(8) i=0 ;i< REPLPADD-(KERNL-1);i=i+1)
				d[i+(KERNL-1)] = ((i+KERNL)*(value));

			if (value == IMG) begin
				value <= 1;
				inL <= True;
			end
			else
				value <= value + 1;
			px.put(d);
		endrule


		rule receive;
			let d <- px.get;					
			for(int i=0;i<REPL-4; i = i + 1) begin//
				Vector#(KERNL,Vector#(KERNL,DataType)) x = unpack(pack(d[i]));
				for (int j=0;j<KERNL; j = j + 1) begin
					for (int k=0;k<KERNL; k = k + 1) begin
						$write("%d",x[j][k]);
						$write(" ");
					end
				end
				$display();
			end
			$display("---------------------------------------------------------------------");
			count <= count + 1;
		if (count == 11)
			$finish(0);
		endrule

	endmodule
	endpackage

