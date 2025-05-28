module ringcounter_tb;
	wire[3:0] count;
	reg clk,rst;
	ringcounter uut(clk,rst,count);
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	initial begin
		rst = 1;
		#10 rst = 0;
		#100 $finish;
	end
endmodule
		
