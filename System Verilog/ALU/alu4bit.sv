interface inf();
    logic[3:0] a;
    logic[3:0] b;
    logic[3:0] ans;
     logic[2:0] operand;
  modport mod(input a,b,operand,output ans);
endinterface
module alu4bit(inf.mod i);
  always_comb begin
    casez(i.operand)
      3'b000: i.ans = i.a & i.b;
      3'b001: i.ans = i.a | i.b;
      3'b010: i.ans = i.a ^ i.b;
      3'b011: i.ans = i.a + i.b;
      3'b100: i.ans = i.a - i.b;
      default: i.ans = 4'bzzzz;
    endcase
  end
endmodule
