`include "Guia_0901.v"

module pulse (input clk, output reg signal);
  always @(posedge clk) begin
    #2 signal <= 1'b1;
    #2 signal <= 1'b0;
  end
endmodule

module Guia_0905;
  wire clock;
  clock clk (clock);
  wire p;
  pulse pls (clock, p);

  initial begin
    $dumpfile("Guia_0905.vcd");
    $dumpvars(1, clock, p);
    #480 $finish;
  end
endmodule
