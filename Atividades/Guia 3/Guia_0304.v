/*
 Guia_0304.v
 810862 - Vitor Lucio de Oliveira
*/

module Guia_0304a;
// define data
 reg signed [6:0] a = 8'b11100; // binary
 reg signed [6:0] b = 8'b01101 ; // binary
 reg signed [7:0] d = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "A) = %0b - %0b ", a,b );
 d = a-b;
 $display ( "Resultado = %0b " ,d );

 end // main
endmodule // Guia_0304

module Guia_0304b;
// define data
 reg signed [3:0] a = 4'b0101; // inteiro
 reg signed [3:0] b = 4'b0010 ; // inteiro

 reg signed [3:0] c = 4'b0111;// decimnal
  reg signed [3:0] e = 4'b1100;//decimal


 reg signed [7:0] d = 0 ; // binary
 reg signed [7:0] f = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "B) = %0b,%b - %0b,%2b ", a, c,b,e );
 d = a-b;
 f = c-e;
 $display ( "Resultado = %0b,%0b " ,d,f );

 end // main
endmodule // Guia_0304

module Guia_0304c;
// define data
 reg signed [5:0] a = 8'b10_11_01; // binary
 reg signed [5:0] b = 8'b01_11_10 ; // binary
 reg signed [4:0] d ; // binary
// actions
 initial
 begin : main
  $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "C) = %0d%0d%0d - %0d%0d%0d ", a[5:4], a[3:2], a[1:0], b[5:4], b[3:2], b[1:0] );
 d = a-(b);
  $display ( "Resultado = %0d%0d " , d[3:2], d[1:0] );

 end // main
endmodule // Guia_0304

module Guia_0304d;
// define data
 reg signed [7:0] a = 16'o513; // inteiro
 reg signed [7:0] b = 16'o173 ; // inteiro


 reg signed [7:0] d = 0 ; // binary
 reg signed [7:0] f = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "D) = %0o - %0o ", a,b );
 d = a-b;

 $display ( "Resultado = %0o " ,d );

 end // main
endmodule // Guia_0304

module Guia_0304e;
// define data
 reg signed [16:0] a = 16'h8b3; // inteiro
 reg signed [16:0] b = 16'hc4f ; // inteiro


 reg signed [15:0] d ; // binary
// actions
 initial
 begin : main
 $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "E) = %0h - %0h ", a,b );
 d = b-a;

 $display ( "Resultado = -%0h " ,d );

 end // main
endmodule // Guia_0304