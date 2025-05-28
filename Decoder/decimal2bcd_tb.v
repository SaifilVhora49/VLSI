module decimal2bcd_tb;
	wire[3:0] out;
	reg[9:0] in;
	decimal2bcd uut(in,out);
	initial begin
	in = 10'b0000000001;
	#10 in = 10'b0000100000;
	#10 in = 10'b0000100000;
	#10 in = 10'b1000000000;
	#10 in = 10'b0000000001;
	#10 in = 10'b0010000000;
	#10 $finish;
	end
endmodule
