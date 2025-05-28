module mux2x1(in,s,out);
	input[1:0] in;
	input s;
	output reg out;
	always@(*) begin
		if(s) out=in[1];
		else out=in[0];
	end
endmodule
