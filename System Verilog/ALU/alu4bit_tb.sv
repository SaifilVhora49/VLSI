module alu4bit_tb;
  inf i();
  class alu;
    rand logic[2:0] operand;
    constraint oper{operand < 3'd4;}
  endclass
  alu4bit uut(i);
  initial begin
    alu temp = new();
    temp.randomize();
    i.a = 4'b1010; 
    i.b = 4'b0110;
    repeat (5) begin
      if (temp.randomize()) begin
        i.operand = temp.operand;
        $display("a %0d b %0d",i.a,i.b);
        $display("Operand is %0d",i.operand);
        #10;
      end 
      else begin
        $display("Randomization failed.");
      end
    #100 $finish;
  end
  end
endmodule
