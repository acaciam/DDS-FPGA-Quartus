module phase_accum(tuner, mclk, clr, fout);
	input [27:0] tuner;
	input mclk, clr;
	output reg [27:0] fout;

	always@(posedge mclk)
	begin
		if(clr) begin
			fout <= 0;
		end
		
		else begin
			if(tuner == 0) begin //reset fout to zero when tuner is zero so adding zero to the output gives the desired 0 value
				fout <= 0;
			end
			fout <= fout + tuner;
		end
	end
endmodule

	
