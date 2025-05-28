module mod6(clk,rst,count);
	input clk,rst;
	output reg[2:0] count;
	always@(posedge clk or posedge rst) begin
		if(rst) count <= 3'b000;
		else if(count == 5) count <= 3'b000;
		else count <= count + 1;
	end
endmodule
