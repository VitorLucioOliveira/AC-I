`include "clock.v"

module pulse1 (input clock, output reg signal);
  always @(posedge clock) begin
    signal <= 1'b1;
    #4 signal <= 1'b0;
    #4 signal <= 1'b1;
    #4 signal <= 1'b0;
    #4 signal <= 1'b1;
    #4 signal <= 1'b0;
  end
endmodule

module pulse2 (input clock, output reg signal);
  always @(posedge clock) begin
    signal <= 1'b1;
    #5 signal <= 1'b0;
  end
endmodule

module pulse3 (input clock, output reg signal);
  always @(negedge clock) begin
    signal <= 1'b1;
    #15 signal <= 1'b0;
    #15 signal <= 1'b1;
  end
endmodule

module pulse4 (input clock, output reg signal);
  always @(negedge clock) begin
    signal <= 1'b1;
    #20 signal <= 1'b0;
    #20 signal <= 1'b1;
    #20 signal <= 1'b0;
  end
endmodule

module Guia_0902;
  wire clock;
  clock clk (clock);
  wire p1, p2, p3, p4;
  pulse1 pls1 (.clock(clock), .signal(p1));
  pulse2 pls2 (.clock(clock), .signal(p2));
  pulse3 pls3 (.clock(clock), .signal(p3));
  pulse4 pls4 (.clock(clock), .signal(p4));

  initial begin
    $dumpfile("Guia_0902.vcd");
    $dumpvars(1, clock, p1, p2, p3, p4);
    #480 $finish;
  end
endmodule
