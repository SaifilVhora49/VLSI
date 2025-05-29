module frequencydivider(clk,rst,freq,freqby2,freqby4);
    input clk,rst;
    output reg freq,freqby2,freqby4;
    reg [2:0] count;
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 3'b000;
        else
            count <= count + 1;
    end
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            freq <= 0;
            freqby2 <= 0;
            freqby4 <= 0;
        end 
	else begin
            freq <= count[0];     // clk divided by 2
            freqby2 <= count[1];  // clk divided by 4
            freqby4 <= count[2];  // clk divided by 8
        end
    end
endmodule
