module problem_7(a, b, c, F);
  input a;
  input b;
  input c;
  output reg F;

  always @ (a, b, c) begin
    F = b + c * ~ b;
  end
endmodule