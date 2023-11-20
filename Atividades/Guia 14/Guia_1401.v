module dff (
    output q,
    output qnot,
    input  d,
    input  clk,
    input  preset,
    input  clear
);

  reg q, qnot;
  always @(posedge clk) begin
    if (clear) begin
      q <= 0;
      qnot <= 1;
    end else if (preset) begin
      q <= 1;
      qnot <= 0;
    end else begin
      q <= d;
      qnot <= ~d;
    end
  end
endmodule  // dff

module left_shift (
    output [5:0] number,
    input bit1,
    input load,
    input clk,
    input clr
);

  wire ld = load & bit1;

  dff d1 (
      number[0],,
      1'b0,
      clk,
      ld,
      clr
  );
  dff d2 (
      number[1],,
      number[0],
      clk,
      1'b0,
      clr
  );
  dff d3 (
      number[2],,
      number[1],
      clk,
      1'b0,
      clr
  );
  dff d4 (
      number[3],,
      number[2],
      clk,
      1'b0,
      clr
  );
  dff d5 (
      number[4],,
      number[3],
      clk,
      1'b0,
      clr
  );
  dff d6 (
      number[5],,
      number[4],
      clk,
      1'b0,
      clr
  );


endmodule  // left_shift	


module lefet_shift_tb;

  reg clk = 0;
  reg clear = 0;
  reg bit1 = 0;
  reg load = 0;
  wire [5:0] number;

  left_shift tbu (
      number,
      bit1,
      load,
      clk,
      clear
  );

  always #5 clk = ~clk;

  // Test sequence
  initial begin
    // Reset sequence
    clear = 1;
    #10;
    clear = 0;
    bit1  = 1;
    load  = 1;
    #10;
    load = 0;
    #100;

    $finish;
  end

  // Monitor changes and display them
  initial begin
    $monitor("Time = %0t, Output: %b", $time, number);
  end
endmodule
