package flowtest;
import FixedPoint:: *;
import SpecialFIFOs:: * ;
import Vector:: *;
import FIFO:: *;
import FIFOF:: *;
import datatypes::*;
import merger::*;

import "BDPI" function Action fill_image();
import "BDPI" function  ActionValue#(Int#(32)) initial_load();
import "BDPI" function  ActionValue#(Int#(32)) lateral_load();

#define REPL 3
#define IMG  16
#define KERNL 3

// REPL + KERNEL - 1
#define REPLPADD 8

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
		for(int i=0; i<KERNL-1; i = i + 1) 
		begin
			Int#(32) v0 <- initial_load();
			UInt#(8) v1 = unpack(truncate(pack(v0)));
			d[i] = v1;
		end
				
		if (value == IMG) begin
			inL   <= False;
		end
		else
			value <= value + 1;

		px.put(d);
	endrule

	rule lateralLoad (init == True && inL == False);
		Vector#(REPLPADD,DataType) d = replicate(0);
		for(UInt#(8) i=0 ;i< REPL;i=i+1) begin
			Int#(32) v0 <- lateral_load();
                        UInt#(8) v1 = unpack(truncate(pack(v0)));
			d[i+(KERNL-1)] = v1;
		end
		px.put(d);
	endrule
	

	rule receive3 (KERNL == 3);
		let d1 <- px.get_0;
		let d2 <- px.get_1;
		let d  <- px.get_2;

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
				$write(" %d", matrix[i][j]);
		$display();
		end
		
		$display("------------------------");	
							
		count <= count + 1;
		if (count == 30) //(IMG-2)*(IMG-2)-1)
			$finish(0);
	endrule


 	rule receive5 (KERNL == 5);
                let d1 <- px.get_0;
                let d <- px.get_1;

                Vector#(5,Vector#(5,DataType)) matrix = newVector;

                for(int i=0;i<5;i=i+1)
                        for(int j=0;j<5;j=j+1)
                                matrix[i][j] = d[i][j];

                matrix[0][0] = d[4][4];
                matrix[4][4] = d[0][0];
		matrix[1][1] = d[3][3];
                matrix[3][3] = d[1][1];
		

		matrix[1][0] = d[4][3];
                matrix[4][3] = d[1][0];
		matrix[2][1] = d[3][2];
                matrix[3][2] = d[2][1];


		
		matrix[2][0] = d[4][2];
		matrix[4][2] = d[2][0];
		
		
		matrix[3][0] = d[4][1];
		matrix[4][1] = d[3][0];


		matrix[0][1] = d[3][4];
                matrix[3][4] = d[0][1];
                matrix[1][2] = d[2][3];
                matrix[2][3] = d[1][2];

		
		matrix[0][2] = d[2][4];
                matrix[2][4] = d[0][2];


                matrix[0][3] = d[1][4];
                matrix[1][4] = d[0][3];


				

                for(int i=0;i<5;i=i+1) begin
                        for(int j=0;j<5;j=j+1)
                                $write(" %d", matrix[i][j]);
                $display();
                end

                $display("------------------------");

                count <= count + 1;
                if (count == 30) //(IMG-4)*(IMG-4)-1) 
                        $finish(0);
        endrule

endmodule
endpackage

