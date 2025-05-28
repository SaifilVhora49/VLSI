module count2bit(clk,count,rst);
	input rst,clk;
	output reg[1:0] count;
	always@(posedge clk or posedge rst) begin
	if(rst) count <= 2'b00;
	else count <= count + 1;
	end
endmodule

