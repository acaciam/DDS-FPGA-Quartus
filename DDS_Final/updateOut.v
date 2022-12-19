module updateOut(lut, f1, clk, out);
	input[9:0] f1, lut;		//f1 is input from the phase accumulator counter : lut input is the output from the LUT
	input clk;					//10MHz clock signal
	output reg[9:0] out;		//updated output for LUTs
	
	always@(posedge clk)
	begin
		if(f1 >= 0 && f1 < 512) out = lut; 	//if phase accumulator (f1) 0-511 output data from lut unaltered
		else if (f1 >= 512 && f1 < 1024) out = 1023 - lut;	//if phase accumulator (f1) 512-1023 flip lut data about x = 512
	end
	
endmodule
