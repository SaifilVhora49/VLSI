module ringcounter(clk,rst,count);
	input clk,rst;
	output reg[3:0] count;
	integer i;
	always@(posedge clk or posedge rst) begin
		if(rst) count <= 4'b0001;
		else
			count <= {count[0], count[3:1]};
	end
endmodule
