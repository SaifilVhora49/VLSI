module mod6_tb;
	wire[2:0] count;
	reg clk,rst;
	mod6 uut(clk,rst,count);
	initial begin
		clk = 0;
		forever #5 clk=~clk;
	end
	initial begin
		rst = 1;
		#10 rst = 0;
		#100 $finish;
	end
endmodule
