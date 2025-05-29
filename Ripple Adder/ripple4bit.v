module ripple4bit(a,b,cin,sum,cout);
	input[3:0] a;
	input[3:0] b;
	input cin;
	output[3:0] sum;
	output cout;
	wire x,y,z;
	fulladder fa1(a[0],b[0],cin,sum[0],x);
	fulladder fa2(a[1],b[1],x,sum[1],y);
	fulladder fa3(a[2],b[2],y,sum[2],z);
	fulladder fa4(a[3],b[3],z,sum[3],cout);
endmodule
module fulladder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	assign sum = a^b^cin;
	assign cout = (a&b) | (b&cin) | (cin&a);
endmodule
