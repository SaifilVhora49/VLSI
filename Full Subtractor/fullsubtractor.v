module fullsubtractor(a,b,c,diff,bout);
	input a,b,c;
	output diff,bout;
	assign diff = a^b^c;
	assign bout = ((~a)&b) | ((~a)&c) | (c&b);
endmodule
