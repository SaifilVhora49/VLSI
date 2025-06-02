module alu4bit(a,b,sel,out);
	input[3:0] a;
	input[3:0] b;
	input [2:0] sel;
	output reg[3:0] out;
	always@(*) begin
		case(sel)
		3'b000: out = a+b;
		3'b001: out = a-b;
		3'b010: out = a&b;
		3'b011: out = a|b;
		3'b100: out = a^b;
		3'b101: out = ~a;
		default: out = 4'b0000;
	endcase
	end
endmodule
		
