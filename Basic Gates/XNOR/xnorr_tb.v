module xnorr_tb;
	wire out;
	reg a,b;
	xnorr uut(a,b,out);
	initial begin
	#10 a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;
	end
endmodule
