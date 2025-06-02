module inverter_tb;
	reg in;
	wire out;
	inverter uut(in,out);
	initial begin
		in = 0;
		#10 in = 1;
		#10 $finish;
	end
endmodule
