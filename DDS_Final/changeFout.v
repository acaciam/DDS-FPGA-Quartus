module changeFout(fin, clk, fout);
	input [9:0] fin;			//input os original output from the phase accumulator
	input clk;					//10MHz clock signal
	output reg [7:0] fout;  //output to be fed into LUTs(must range 0-255)
	
	always @(posedge clk)
	begin
		if(fin >= 0 && fin < 256) fout =  fin;					 //from 0-255 output original value
		else if(fin >= 256 && fin < 512) fout =  511 - fin; //256-511 traverse LUT backwards within range of 0-255
		else if(fin >= 512 && fin < 768) fout = fin - 512;  //512-767 traverse LUT forwards within range of 0-255
		else if(fin >= 768 && fin < 1024) fout =  1023 - fin;//768-1023 traverse LUT backwards within range of 0-255
	end
	
endmodule
