module Guia_0901;

  reg clock;
  reg on;

  wire p, t;

  pulse pulse1 (.clock(clock), .signal(p));
  trigger trigger1 (.on(on), .clock(clock), .signal(t));

  initial begin
    clock = 1'b0;
    on = 1'b0;

    #10 on = 1'b1; // Ligar o gatilho
    #200 $finish;
  end

  initial begin
    $dumpfile("Guia_0901.vcd");
    $dumpvars(1, Guia_0901);
    #10 $finish;
  end

endmodule
