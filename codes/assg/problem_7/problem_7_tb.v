`timescale 1 ns / 100 ps
module problem_7_tb();
  reg a;
  reg b;
  reg c;
  wire F;
  integer ii;

  problem_7 UUT ( .a(a), .b(b), .c(c), .F(F));

  reg [20*8-1:0] str;

  initial begin
    if ($value$plusargs("DUMPFILE=%s", str)) begin
      $dumpfile(str);
      $dumpvars(0, UUT);
    end

    for (ii=0; ii<8; ii=ii+1) begin
      {a, b, c} = ii; #10;
      $display("a=%b, b=%b, c=%b, F=%b\n", a, b, c, F);
    end

    $display("Test done.\n");
  end
endmodule
