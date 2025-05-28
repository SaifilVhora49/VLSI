module jkff_tb;
	wire q,qbar;
	reg j,k;
	reg clk;
	jkff uut(j,k,q,qbar,clk);
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
    	end
	initial begin
		j=1'b0; k=1'b0;
		#10 j=1'b0; k=1'b1;
		#10 j=1'b1; k=1'b0;
		#10 j=1'b1; k=1'b1;
		#10 $finish;
	end
endmodule
