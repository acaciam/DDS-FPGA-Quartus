module updateOut(lut, clk, out);
	input[9:0] lut;
	input clk;
	output reg[9:0] out;
	
	always@(posedge clk)
	begin
		if(lut >= 0 && lut < 512) out = lut;
		else if (lut >= 512 && lut < 1024) out = 512 - lut;
	end
	
endmodule
