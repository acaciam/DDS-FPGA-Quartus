module decOutput(dec, clr, clk, lights);
	input [15:0]dec;
	input clr;
	input clk;
	output reg [47:0] lights;
	
	
	always@(posedge clk) begin
		if(clr) begin
			lights[47:0] <= 48'hffffffffffff;
		end
		else if(!clr) begin
			//output 100th's place
			lights[7:0] = 8'b11000000;
			//output 10th's place
			lights[15:8] = 8'b11000000;
			//output 1's place
			case(dec % 10)
					4'h0 : lights[23:16] = 8'b01000000;
					4'h1 : lights[23:16] = 8'b01111001;
					4'h2 : lights[23:16] = 8'b00100100;
					4'h3 : lights[23:16] = 8'b00110000;		
					4'h4 : lights[23:16] = 8'b00011001;
					4'h5 : lights[23:16] = 8'b00010010;			
					4'h6 : lights[23:16] = 8'b00000010;
					4'h7 : lights[23:16] = 8'b01111000;			
					4'h8 : lights[23:16] = 8'b00000000;
					4'h9 : lights[23:16] = 8'b00011000;	
			endcase
			//output 10's place
			case((dec/10) % 10)
					4'h0 : lights[31:24] = 8'b11000000;
					4'h1 : lights[31:24] = 8'b11111001;
					4'h2 : lights[31:24] = 8'b10100100;
					4'h3 : lights[31:24] = 8'b10110000;		
					4'h4 : lights[31:24] = 8'b10011001;
					4'h5 : lights[31:24] = 8'b10010010;			
					4'h6 : lights[31:24] = 8'b10000010;
					4'h7 : lights[31:24] = 8'b11111000;			
					4'h8 : lights[31:24] = 8'b10000000;
					4'h9 : lights[31:24] = 8'b10011000;	
			endcase
			//output 100's place
			case((dec/100) % 10)
					4'h0 : lights[39:32] = 8'b11000000;
					4'h1 : lights[39:32] = 8'b11111001;
					4'h2 : lights[39:32] = 8'b10100100;
					4'h3 : lights[39:32] = 8'b10110000;		
					4'h4 : lights[39:32] = 8'b10011001;
					4'h5 : lights[39:32] = 8'b10010010;			
					4'h6 : lights[39:32] = 8'b10000010;
					4'h7 : lights[39:32] = 8'b11111000;			
					4'h8 : lights[39:32] = 8'b10000000;
					4'h9 : lights[39:32] = 8'b10011000;	
			endcase
			//output 1000's place
			case((dec/1000) % 10)
					4'h0 : lights[39:32] = 8'b11000000;
					4'h1 : lights[39:32] = 8'b11111001;
					4'h2 : lights[39:32] = 8'b10100100;
					4'h3 : lights[39:32] = 8'b10110000;		
					4'h4 : lights[39:32] = 8'b10011001;
					4'h5 : lights[39:32] = 8'b10010010;			
					4'h6 : lights[39:32] = 8'b10000010;
					4'h7 : lights[39:32] = 8'b11111000;			
					4'h8 : lights[39:32] = 8'b10000000;
					4'h9 : lights[39:32] = 8'b10011000;	
			endcase
		end
		end
	
endmodule
