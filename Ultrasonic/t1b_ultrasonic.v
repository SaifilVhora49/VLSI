/*
Module HC_SR04 Ultrasonic Sensor

This module will detect objects present in front of the range, and give the distance in mm.

Input:  clk_50M - 50 MHz clock
        reset   - reset input signal (Use negative reset)
        echo_rx - receive echo from the sensor

Output: trig    - trigger sensor for the sensor
        op     -  output signal to indicate object is present.
        distance_out - distance in mm, if object is present.
*/

// module Declaration
module t1b_ultrasonic(
    input clk_50M, reset, echo_rx,
    output reg trig,
    output op,
    output wire [15:0] distance_out
);

initial begin
    trig = 0;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////
	 reg [19:0] count = 0;
    reg [19:0] temp = 0;
    reg [19:0] echo_pulse = 0;
    reg [19:0] echo_pulse_2 = 0;
    // Assign outputs from internal registers
    parameter SCALE = 68;
    parameter SCALE_DIVISOR = 10000;
    assign distance_out = ((SCALE * echo_pulse_2) / SCALE_DIVISOR) / 2;
    
    assign op = (echo_pulse_2 != 0) ? 1'b0 : 1'b1;
    
    always @(posedge clk_50M or negedge reset) begin
        if (!reset) begin
            trig <= 0;
            count <= 0;
            echo_pulse <= 0;
            echo_pulse_2 <= 0;
        end 
        else begin
        	if(count >= 20'd50) begin
            		if(count > 20'd50 && count <= 20'd550)
                		trig <= 1'b1;
            		else
            			trig <= 1'b0;
            			if(!echo_rx) 
            				count <= 20'd51;
            	end
            	
                if(echo_rx) begin
                	echo_pulse <= echo_pulse + 1'b1;
                end
                else
                	echo_pulse <= 16'd0;
		echo_pulse_2 <= temp;
            	if (count == 20'd600553)
                	count <= 0;
            	else
            		count <= count + 1'b1;
       end
    end
    always@(negedge echo_rx) begin
    	temp <= echo_pulse;
    end

//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule
