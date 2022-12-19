module updateOut(lut, f1, clk, out);
	input[9:0] f1, lut;
	input clk;
	output reg[9:0] out;
	
	always@(lut)
	begin
		if(f1 >= 0 && f1 < 512) out = lut;
		else if (f1 >= 512 && f1 < 1024) out = 1023 - lut;
	end
	
endmodule
