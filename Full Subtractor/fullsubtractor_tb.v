module fullsubtractor_tb;
	wire diff,bout;
	reg a,b,c;
	fullsubtractor uut(a,b,c,diff,bout);
	initial begin
	#10  a = 0; b = 0; c = 0;
	#10  a = 0; b = 0; c = 1;
	#10  a = 0; b = 1; c = 0;
	#10  a = 0; b = 1; c = 1;
	#10  a = 1; b = 0; c = 0;
	#10  a = 1; b = 0; c = 1;
	#10  a = 1; b = 1; c = 0;
	#10  a = 1; b = 1; c = 1;
	#10 $finish;
	end
endmodule

