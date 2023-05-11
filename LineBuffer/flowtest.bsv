package flowtest;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import merger::*;

import "BDPI" function Action fill_image();

#define REPL 1
#define IMG  25
#define KERNL 3

// REPL + KERNEL - 1
#define REPLPADD 3

(*synthesize*)
module mkFlowTest();
	Merge px 		<- mkMerge;
	Reg#(Bool) init 	<- mkReg(False);	
	Reg#(Bool) inL 		<- mkReg(True);	
	Reg#(UInt#(8)) value 	<- mkReg(1);
	Reg#(UInt#(8)) value2 	<- mkReg(1);
	Reg#(int) count		<- mkReg(0);	
	
	rule configure(init == False);
		Bit#(8) mx = 0;
		mx[0] = 1;
		mx[1] = 1;
		//mx[2] = 1;
		//mx[3] = 1;
		px.configure(KERNL,mx,IMG);
		fill_image();
		init <= True;
	endrule

	rule intialLoad (init == True && inL == True);
		Vector#(REPLPADD,DataType) d = replicate(0);
		for(UInt#(8) i=0 ;i < KERNL-1;i=i+1)
			d[i] = ((i+1)*value)%255;
				
		if (value == IMG) begin
			value <= 1;
			value2 <= 3;
			inL   <= False;
		end
		else
			value <= value + 1;

		px.put(d);
	endrule

	rule lateralLoad (init == True && inL == False);
		Vector#(REPLPADD,DataType) d = replicate(0);
		for(UInt#(8) i=0 ;i< REPLPADD-(KERNL-1);i=i+1)
			d[i+(KERNL-1)] = ((value2)*(value))%255;
		$display(" pushing %d ", ((value2)*value)%255 );
	
		if (value == IMG) begin
			value <= 1;
			value2 <= value2 + 1;
		end
		else
			value <= value + 1;
		px.put(d);
	endrule
	

	rule receive;
		let d <- px.get;

		Vector#(3,Vector#(3,DataType)) matrix = newVector;

		for(int i=0;i<3;i=i+1)
			for(int j=0;j<3;j=j+1)
				matrix[i][j] = d[i][j];

		matrix[0][0] = d[2][2];
		matrix[2][2] = d[0][0];
		matrix[0][1] = d[1][2];
		matrix[1][2] = d[0][1];
		matrix[1][0] = d[2][1];
		matrix[2][1] = d[1][0];
			
		for(int i=0;i<3;i=i+1) begin
			for(int j=0;j<3;j=j+1)
				$write("%4d", matrix[i][j]);
		$display();
		end
		
		$display("\n------------------------\n");	
							
		count <= count + 1;
		if (count == 23*23-1)
			$finish(0);
	endrule

endmodule
endpackage

