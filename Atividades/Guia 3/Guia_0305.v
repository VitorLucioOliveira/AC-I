/*
 Guia_0305.v
  810862 - Vitor Lucio de Oliveira
*/
module Guia_0305a;
// define data
 reg [5:0] a = 101011 ; // binary
 reg [5:0] b = 001110 ; // binary
 reg [4:0] c = 0 ; // binary
// actions
 initial
 begin : main
  $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display("A) = %b(2) - %b(2) ", a, b);
 c= a-b;
 $display("Resposta = %0b ", c);
 
 end // main
endmodule // Guia_0305

module Guia_0305b;
// define data
 reg signed [7:0] a = 8'b0101; // inteiro
 reg signed [7:0] b = 8'o2 ; // inteiro

 reg signed [7:0] c = 8'b1011;// decimnal
  reg signed [7:0] e = 8'o4;//decimal


 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] f = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display ( "B) = %0b,%0b(2) - %0o,%0o(8) ", a,c,b,e );
 d = a-b;
 f = c-e;
 $display ( "Resultado = %0b,%0b " ,d,f );

 end // main
endmodule // Guia_0304

module Guia_0305c;
// define data
 reg [7:0] a = 8'h36 ; // binary
 reg [7:0] b = 8'hd ; // binary
 reg [7:0] c = 0 ; // binary
// actions
 initial
 begin : main
  $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display("C) = 312(4) - %0h(16) ", b);
 c= a-b;
 $display("Resposta = %0h ", c);
 
 end // main
endmodule // Guia_0305

module Guia_0305d;
// define data
 reg [7:0] a = 8'hc3 ; // binary
 reg [7:0] b = 8'b101100 ; // binary
 reg [7:0] c = 0 ; // binary
// actions
 initial
 begin : main
  $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display("D) = %0h(16) - %0b(2) ", a, b);
 c= a-b;
 $display("Resposta = %0b ", c);
 
 end // main
endmodule // Guia_0305

module Guia_0305e;
// define data
 reg [7:0] a = 51 ; // binary
 reg [7:0] b = 8'h2d; // binary
 reg [7:0] c = 0 ; // binary
// actions
 initial
 begin : main
  $display ( "----------------------" );
 $display ( "Subtrações" );
 $display ( "" );
 $display("D) = %d (10) - %0b(2) ", a, b);
 c= a-b;
 $display("Resposta = %0h ", c);
 
 end // main
endmodule // Guia_0305

