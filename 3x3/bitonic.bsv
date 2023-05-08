package bitonic;
import FixedPoint::*;
import FIFO::*;
import FIFOF::*;
import datatypes::*;
import SpecialFIFOs:: * ;
import Real::*;
import Vector::*;
import BRAMFIFO::*;


#define VLEN 16


interface Bitonic;
        method Action put(Vector#(VLEN, DataType) datas);
        method ActionValue#(Vector#(VLEN, DataType)) get;
endinterface

(*synthesize*)
module mkBitonic(Bitonic);

Reg#(DataType)  _L1[VLEN];
Reg#(DataType)  _L2[VLEN];
Reg#(DataType)  _L3[VLEN];
Reg#(DataType)  _L4[VLEN];
Reg#(DataType)  _L5[VLEN];
Reg#(DataType)  _L6[VLEN];
Reg#(DataType)  _L7[VLEN];

for(int i=0;i<VLEN;i=i+1) begin
	_L1[i]   <- mkReg(0);
	_L2[i]   <- mkReg(0);
	_L3[i]   <- mkReg(0);
	_L4[i]   <- mkReg(0);
	_L5[i]   <- mkReg(0);
	_L6[i]   <- mkReg(0);
	_L7[i]   <- mkReg(0);
end

FIFOF#(Bit#(1)) p0 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p1 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p2 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p3 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p4 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p5 <- mkPipelineFIFOF;
FIFOF#(Bit#(1)) p6 <- mkPipelineFIFOF;

FIFOF#(Vector#(VLEN,DataType)) inQ <- mkFIFOF;


	//#################################################

	for(int i=0;i< VLEN/2; i = i + 1) begin 
	rule _Q1;
		if (i%2 == 0) begin
			_L2[2*i]     <= min(_L1[2*i], _L1[2*i + 1]);
			_L2[2*i+1]   <= max(_L1[2*i], _L1[2*i + 1]);
		end
		else begin	
			_L2[2*i]     <= max(_L1[2*i], _L1[2*i + 1]);
			_L2[2*i+1]   <= min(_L1[2*i], _L1[2*i + 1]);
		end
	endrule
	end
	
	for(int i=0;i< VLEN/4; i = i + 1) begin 
	rule _Q2;
		if (i%2 == 0) begin
			_L3[4*i]     <= min(_L2[4*i],   _L2[4*i + 2]);
			_L3[4*i+2]   <= max(_L2[4*i],   _L2[4*i + 2]);
			_L3[4*i+1]   <= min(_L2[4*i+1], _L2[4*i + 3]);
			_L3[4*i+3]   <= max(_L2[4*i+1], _L2[4*i + 3]);
		end		
		else   begin
			_L3[4*i]     <= max(_L2[4*i],   _L2[4*i + 2]);
			_L3[4*i+2]   <= min(_L2[4*i],   _L2[4*i + 2]);
			_L3[4*i+1]   <= max(_L2[4*i+1], _L2[4*i + 3]);
			_L3[4*i+3]   <= min(_L2[4*i+1], _L2[4*i + 3]);
		end		
	endrule
	end
	
	for(int i=0;i< VLEN/2; i = i + 1) begin 
	rule _Q3;
		if (i%2 == 0) begin
			_L4[2*i]     <= min(_L3[2*i], _L3[2*i + 1]);
			_L4[2*i+1]   <= max(_L3[2*i], _L3[2*i + 1]);
		end
		else begin	
			_L4[2*i]     <= max(_L3[2*i], _L3[2*i + 1]);
			_L4[2*i+1]   <= min(_L3[2*i], _L3[2*i + 1]);
		end
	endrule
	end



	for(int i=0;i< VLEN/8; i = i + 1) begin
        rule _Q4;
                if (i%2 == 0) begin
		for(int j=0;j<4;j = j + 1) begin
                        _L5[8*i+j]     <= min(_L4[8*i+j], _L4[8*i+j+4]);
                        _L5[8*i+4+j]   <= max(_L4[8*i+j], _L4[8*i+j+4]);
		end
                end
                else   begin
		for(int j=0;j<4;j = j + 1) begin
                        _L5[8*i+j]     <= max(_L4[8*i+j], _L4[8*i+j+4]);
                        _L5[8*i+4+j]   <= min(_L4[8*i+j], _L4[8*i+j+4]);
		end
                end
        endrule
        end


	for(int i=0;i< VLEN/4; i = i + 1) begin
        rule _Q5;
                if (i%2 == 0) begin
                        _L6[4*i]     <= min(_L5[4*i],   _L5[4*i + 2]);
                        _L6[4*i+2]   <= max(_L5[4*i],   _L5[4*i + 2]);
                        _L6[4*i+1]   <= min(_L5[4*i+1], _L5[4*i + 3]);
                        _L6[4*i+3]   <= max(_L5[4*i+1], _L5[4*i + 3]);
                end
                else   begin
                        _L6[4*i]     <= max(_L5[4*i],   _L5[4*i + 2]);
                        _L6[4*i+2]   <= min(_L5[4*i],   _L5[4*i + 2]);
                        _L6[4*i+1]   <= max(_L5[4*i+1], _L5[4*i + 3]);
                        _L6[4*i+3]   <= min(_L5[4*i+1], _L5[4*i + 3]);
                end
        endrule
        end

        for(int i=0;i< VLEN/2; i = i + 1) begin
        rule _Q6;
                if (i%2 == 0) begin
                        _L7[2*i]     <= min(_L6[2*i], _L6[2*i + 1]);
                        _L7[2*i+1]   <= max(_L6[2*i], _L6[2*i + 1]);
                end
                else begin
                        _L7[2*i]     <= max(_L6[2*i], _L6[2*i + 1]);
                        _L7[2*i+1]   <= min(_L6[2*i], _L6[2*i + 1]);
                end
        endrule
        end

		
	//################################################

    	rule _activate1;
		let d =  inQ.first; inQ.deq;
		for(int i=0 ;i< VLEN; i=i+1) begin
			_L1[i] <= d[i];
		end
		p0.enq(1);
	endrule
		
    	rule _activate2;
		p0.deq;
		p1.enq(1);
    	endrule

   	rule _activate3;
		p1.deq;
		p2.enq(1);
    	endrule
   		
	rule _activate4;
		p2.deq;
		p3.enq(1);
    	endrule
	
	rule _activate5;
		p3.deq;
		p4.enq(1);
	endrule
	
	rule _activate6;
		p4.deq;
		p5.enq(1);
	endrule
	
	rule _activate7;
		p5.deq;
		p6.enq(1);
	endrule
	
	//################################################
	
		
        method Action put(Vector#(VLEN, DataType) datas);
		inQ.enq(datas);
	endmethod
	
        method ActionValue#(Vector#(VLEN, DataType)) get;
		p6.deq;
		Vector#(VLEN,DataType) d = newVector;
		for(int i = 0 ;i<VLEN; i = i + 1)
			d[i] = _L7[i];
		return d;
	endmethod
	
endmodule
endpackage
