module halfsubtractor_tb;
	wire diff,bout;
	reg a,b;
	halfsubtractor uut(a,b,diff,bout);
	initial begin
	#10 a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;
	end
endmodule
