module count4bit_tb;
	wire[3:0] count;
	reg clk,rst;
	count4bit uut(clk,rst,count);
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	initial begin
		rst = 1;
		#4 rst = 0;
		#200 $finish;
	end
endmodule
		

