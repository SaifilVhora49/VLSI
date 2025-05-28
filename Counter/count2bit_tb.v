module count2bit_tb;
	wire[1:0] count;
	reg clk,rst;
	count2bit uut(clk,count,rst);	
	initial begin
		clk = 0;
		forever #5 clk = ~clk; 
	end
	initial begin
		rst = 1;
		#10 rst = 0;
		#20 rst = 1;
		#50 $finish;
	end
endmodule
