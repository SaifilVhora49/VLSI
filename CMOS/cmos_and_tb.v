module cmos_and_tb;
	wire out;
	reg in1,in2;
	cmos_and uut(in1,in2,out);
	initial begin
	in1 = 1'b0; in2 = 1'b0;
	#10 in1 = 1'b1; in2 = 1'b0;
	#10 in1 = 1'b0; in2 = 1'b1;
	#10 in1 = 1'b1; in2 = 1'b1;
	#10 $finish;
	end
endmodule
