module phase_accum(clk, clr, sw, set, fout, decVal);
	input [9:0]sw;
	input set, clk, clr;
	output reg [27:0] fout;
	output reg [15:0] decVal;
	reg [27:0] tuner;
	integer baseTune = 26843.5456;
	
	initial begin
		decVal = 0;
		tuner = 0;
	end

	//update when key[0] is pressed
	always@(posedge clk, posedge clr) 
	begin
		if(clr) begin
			decVal <= 0;
			tuner <= 0;
			fout <= 0;
		end
		else begin
			if(!set) begin
				decVal <= sw[0]*1 + sw[1]*2 + sw[2]*4 + sw[3]*8 + sw[4]*16 + sw[5]*32 + sw[6]*64 + sw[7]*128 + sw[8]*256 + sw[9]*512;
				tuner <= baseTune * decVal;
			end
			if(tuner == 0) begin //reset fout to zero when tuner is zero so adding zero to the output gives the desired 0 value
				fout <= 0;
			end
			else 
				fout <= fout + tuner;
		end
	end

endmodule


