module phase_accum(clk, clr, sw, set, fout, decVal, out1hz);
	input [9:0]sw;								//switch inputs for selecting frequency
	input set, clk, clr;						
	output reg [27:0] fout, out1hz;		//phase accumulator counter output and output for 1hz counter
	output reg [15:0] decVal;				//decimal value to output to 7-seg displays
	reg [27:0] tuner;							//tuning word
	integer baseTune = 26843.5456;		//base 1khz tuning word value
	integer tune1hz = 26.8435456;			//tuning word for 1hz
	
	//initialize decimal value and tuner to zero on startup to avoid error
	initial begin
		decVal = 0;
		tuner = 0;
	end

	//run code on trogger from clock or KEY[1](clr) input
	always@(posedge clk, posedge clr) 
	begin
		if(clr) begin
			decVal <= 0;
			tuner <= 0;
			fout <= 0;
			out1hz <= 0;
		end
		
		//only run this code for posedge clk trigger
		else begin
		
			out1hz <= out1hz + tune1hz; //increment 1hz phase accumulator
		
			//update frequency and tuning word when key[0] is pressed
			if(!set) begin
				decVal <= sw[0]*1 + sw[1]*2 + sw[2]*4 + sw[3]*8 + sw[4]*16 + sw[5]*32 + sw[6]*64 + sw[7]*128 + sw[8]*256 + sw[9]*512;
				tuner <= baseTune * decVal;
			end
			
			if(tuner == 0) begin //reset fout to zero when tuner is zero so adding zero to the output gives the desired 0 value
				fout <= 0;
			end
			
			else begin
				fout <= fout + tuner; //increment phhase accumulator counter by tuning word
			end
		end
	end

endmodule

