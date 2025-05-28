module mux4x1(in,s,out);
	input[3:0] in;
	input[1:0] s;
	output reg out;
	always@(*) begin
		if(s[0]==0 & s[1]==0) out=in[0];
		else if(s[0]==1 & s[1]==0) out=in[1];
		else if(s[0]==0 & s[1]==1) out=in[2];
		else out=in[3];
	end
endmodule
