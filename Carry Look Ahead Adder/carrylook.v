module carrylook(a,b,cin,sum,cout);
	input[3:0] a;
	input[3:0] b;
	input cin;
	output[3:0] sum;
	output cout;
	wire[3:0] G;
	wire[3:0] P;
	wire[3:0] c;

	assign G = a & b;
	assign P = a ^ b; 

	assign c[0] = cin;	
	assign c[1] = G[0] | (P[0]&c[0]);
	assign c[2] = G[1] | (P[1]&c[1]);
	assign c[3] = G[2] | (P[2]&c[2]);
	assign cout = G[3] | (P[3]&c[3]);

	assign sum[0] = P[0] ^ c[0];
	assign sum[1] = P[1] ^ c[1];
	assign sum[2] = P[2] ^ c[2];
	assign sum[3] = P[3] ^ c[3];
endmodule
