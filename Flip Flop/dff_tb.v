module dff_tb;
	wire q,qbar;	
	reg d,clk,rst;
	dff uut(d,q,qbar,rst,clk);
	initial begin
		clk <= 0;
		forever #5 clk <= ~clk;
	end
	initial begin
		rst = 1; d = 0;
		#10 rst = 0;
		#7 d = 1;
		#10 $finish;
	end
endmodule
