module halfadder_tb;
	wire sum,cout;
	reg a,b;
	halfadder uut(a,b,sum,cout);
	initial begin
	#10 a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;
	end
endmodule
