module mux8x1(in,s,out);
	input[7:0] in;
	input[2:0] s;
	output reg out;
	always@(*) begin
	if (s[0] == 0 && s[1] == 0 && s[2] == 0)       out = in[0];
        else if (s[0] == 1 && s[1] == 0 && s[2] == 0)  out = in[1];
        else if (s[0] == 0 && s[1] == 1 && s[2] == 0)  out = in[2];
        else if (s[0] == 1 && s[1] == 1 && s[2] == 0)  out = in[3];
        else if (s[0] == 0 && s[1] == 0 && s[2] == 1)  out = in[4];
        else if (s[0] == 1 && s[1] == 0 && s[2] == 1)  out = in[5];
        else if (s[0] == 0 && s[1] == 1 && s[2] == 1)  out = in[6];
	else  out=in[7];
	end
endmodule
