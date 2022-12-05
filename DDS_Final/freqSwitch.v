module freqSwitch(clk, clr, sw, set, tuner, splitDec);
	input [9:0]sw;
	input set, clk, clr;
	output reg [27:0] tuner;
	output reg [15:0] splitDec;
	integer decVal;
	integer baseTune = 26843.5456;

	//update when key[0] is pressed
	always@(posedge clk)
	begin
	if(!set) begin
		decVal <= sw[0]*1 + sw[1]*2 + sw[2]*4 + sw[3]*8 + sw[4]*16 + sw[5]*32 + sw[6]*64 + sw[7]*128 + sw[8]*256 + sw[9]*512;
		tuner = baseTune * decVal;
		splitDec[3:0] = (decVal % 10);
		splitDec[7:4] = ((decVal/10) % 10);
		splitDec[11:8] = ((decVal/100) % 10);
		splitDec[15:12] = ((decVal/1000) % 10);
	end
	end	

endmodule


