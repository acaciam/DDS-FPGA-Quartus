module decOutput(dec, clk, lights);
	input [3:0]dec;
	input clk;
	output reg [6:0] lights;

	always@(posedge clk)

	//convert to output dec to 7-seg display
		case(dec)
				4'h0 : lights = 7'b1000000;
				4'h1 : lights = 7'b1111001;
				4'h2 : lights = 7'b0100100;
				4'h3 : lights = 7'b0110000;		
				4'h4 : lights = 7'b0011001;
				4'h5 : lights = 7'b0010010;			
				4'h6 : lights = 7'b0000010;
				4'h7 : lights = 7'b1111000;			
				4'h8 : lights = 7'b0000000;
				4'h9 : lights = 7'b0011000;	
		endcase
	
endmodule
