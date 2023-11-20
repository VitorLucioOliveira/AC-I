`include "clock.v"

module pulse (input clock, output reg signal);
  reg [1:0] counter;

  always @(posedge clock) begin
    if (counter == 3'd5) begin
      signal <= ~signal;
      counter <= 3'd0;
    end
    else begin
      counter <= counter + 3'd1;
    end
  end
endmodule

module Guia_0903;
  wire clock;
  clock clk (clock);
  wire p;
  pulse pls (clock, p);

  initial begin
    $dumpfile("Guia_0903.vcd");
    $dumpvars(1, clock, p);
    #480 $finish;
  end
endmodule
