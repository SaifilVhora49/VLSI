module priorityencoder_tb;
	wire[2:0] out;
	reg[7:0] in;	
	priorityencoder uut(in,out);
	initial begin
	in = 8'b00000000;
	#10 in = 8'b00010001;
	#10 in = 8'b00010001;
	#10 in = 8'b00100001;
	#10 in = 8'b10010001;
	#10 in = 8'b00000001;
	#10 $finish;
	end
endmodule

