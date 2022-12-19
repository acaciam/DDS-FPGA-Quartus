module changeFout(fin, clk, fout);
	input [9:0] fin;
	input clk;
	output reg [7:0] fout;
	
	always @(fin)
	begin
		if(fin >= 0 && fin < 256) fout =  fin;
		else if(fin >= 256 && fin < 512) fout =  511 - fin;
		else if(fin >= 512 && fin < 768) fout = fin - 512;
		else if(fin >= 768 && fin < 1024) fout =  1023 - fin;
	end
	
endmodule
