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

module left_shift_fulldata (
    output [5:0] number,
    input [5:0] dataInput,
    input load,
    input clk,
    input clr
);

  reg [5:0] data;

  always @(posedge clk) begin
    if (load) begin
      data = dataInput;
    end else begin
      data = 6'b0;
    end
  end

  dff d1 (
      number[0],,
      1'b0,
      clk,
      data[0],
      clr
  );
  dff d2 (
      number[1],,
      number[0],
      clk,
      data[1],
      clr
  );
  dff d3 (
      number[2],,
      number[1],
      clk,
      data[2],
      clr
  );
  dff d4 (
      number[3],,
      number[2],
      clk,
      data[3],
      clr
  );
  dff d5 (
      number[4],,
      number[3],
      clk,
      data[4],
      clr
  );
  dff d6 (
      number[5],,
      number[4],
      clk,
      data[5],
      clr
  );


endmodule  // left_shift	


module lefet_shift_tb;

  reg clk = 0;
  reg clear = 0;
  reg load = 0;
  reg [5:0] data;
  wire [5:0] number;

  left_shift_fulldata tbu (
      number,
      data,
      load,
      clk,
      clear
  );

  always #5 clk = ~clk;

  // Test sequence
  initial begin
    // Reset sequence
    #5;
    clear = 1;
    #10;
    clear = 0;
    load  = 1;
    data  = 6'b010101;
    #5;
    load = 0;
    #100;
    $finish;
  end

  // Monitor changes and display them
  initial begin
    $monitor("Time = %0t, Output: %b", $time, number);
  end
endmodule
