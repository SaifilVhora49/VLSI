module cmos_xor_tb;
	wire out;
	reg in1,in2;
	cmos_xor uut(in1,in2,out);
	initial begin
	in1 = 1'b0; in2 = 1'b0;
	#10 in1 = 1'b1; in2 = 1'b0;
	#10 in1 = 1'b0; in2 = 1'b1;
	#10 in1 = 1'b1; in2 = 1'b1;
	#10 $finish;
	end
endmodule
