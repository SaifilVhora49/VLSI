module frequencydivider_tb;
	wire freq,freqby2,freqby4;
	reg clk,rst;
	frequencydivider uut(clk,rst,freq,freqby2,freqby4);
	initial begin
		rst = 1;
		#10 rst = 0;
		#100 $finish;
	end
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
endmodule
