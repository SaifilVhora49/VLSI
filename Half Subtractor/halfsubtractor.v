module halfsubtractor(a,b,diff,bout);
	input a,b;
	output diff,bout;
	assign diff = a ^ b;
  	assign bout = ~a & b;
endmodule
