module alu4bit_tb;
	wire[3:0] out;
	reg[3:0] a,b;
	reg[2:0] sel;
	alu4bit uut(a,b,sel,out);
	initial begin
		a=4'b1010; b=4'b0110; sel=3'b000;
		#10 sel = 3'b001; 
		#10 sel = 3'b010;
		#10 sel = 3'b011;
		#10 sel = 3'b100; a=4'b1111; b=4'b0001;
		#10 sel = 3'b101;
		#10 sel = 3'b110;
		#10 sel = 3'b111;
		#10 $finish;
	end
endmodule
