module f(output s, input a, input b, input c);
  wire w1, w2, w3, w4;
  not NOT_1 (w1, b);
  not NOT_2 (w2, c);
  and AND_1 (w3, a, w2);
  and AND_2 (w4, a, w1, c);
  or OR_1 (s, w3, w4);
endmodule
