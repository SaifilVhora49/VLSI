module mux4_2(in1,in2,s1,s0,out);
	input[1:0] in1;
	input[1:0] in2;
	input s1,s0;
	wire out1,out0;
	wire[1:0] outtemp;
	output out;
	wire mux_out;
    mux2x1 mux1 (.in(in1), .s(s1), .out(out0));
    mux2x1 mux2 (.in(in2), .s(s1), .out(out1));
    assign outtemp = {out1, out};
    mux2x1 mux3 (.in(outtemp), .s(s0), .out(mux_out));
    assign out = mux_out;
endmodule

module mux2x1(in,s,out);
	input[1:0] in;
	input s;
	output reg out;
	always@(*) begin
	case(s)
		1'b0: out=in[0];
		1'b1: out=in[1];
		default: out=1'bz;
	endcase
	end
endmodule
