module ripple4bit_tb;
	reg[3:0] a;
	reg[3:0] b;
	reg cin;
	wire[3:0] sum;
	wire cout;
	ripple4bit uut(a,b,cin,sum,cout);
	initial begin
		a=4'b0000;
		b=4'b0000;
		cin=1'b0;
		#10 a=4'b1010; b=4'b0110;
		#10 a=4'b0101; b=4'b1000;
		#10 $finish;
	end
endmodule
		
