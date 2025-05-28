module mux4x1_tb;
	wire out;
	reg[3:0] in;
	reg[1:0] s;
	mux4x1 uut(in,s,out);
	initial begin
	in[0]=0; in[1]=0; in[2]=0; in[3]=0; s[0]=0; s[1]=0;
	#10 in[0]=1;
	#10 in[0]=0; in[1]=1;
	#10 s[0]=1;
	#10 in[1]=0; s[0]=0; s[1]=1;
	#10 in[2]=1;
	#10 in[2]=0;
	#10 s[0]=1; s[1]=1;
	#10 in[3]=1;
	#10 $finish;
	end
endmodule

