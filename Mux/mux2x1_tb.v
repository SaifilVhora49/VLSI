module mux2x1_tb;
	wire out;
	reg[1:0] in;
	reg s;
	mux2x1 uut(in,s,out);
	initial begin
	in[0]=0; in[1]=0; s=0;
	#10 in[0]=1;
	#10 in[1]=1; s=1;
	#10 $finish;
	end
endmodule
