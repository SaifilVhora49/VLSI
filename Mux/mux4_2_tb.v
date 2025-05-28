module mux4_2_tb;
	reg[1:0] in1;
	reg[1:0] in2;
	wire out;
	reg s0,s1;
	mux4_2 uut(in1,in2,s1,s0,out);
	initial begin
	in1 = 2'b10;
        in2 = 2'b11;
	s1 = 0; s0 = 0; #10;
	s1 = 0; s0 = 1; #10;
	s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;
	#10 $finish;
	end
endmodule
