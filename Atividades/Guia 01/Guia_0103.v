/*
 Guia_0103.v
810862 - Vitor Lucio de Oliveira
*/
module Guia_0103a;
// define data
 integer x = 61; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
  $display ( "\n----------------------------------------" );
 $display ( "\nConversões de decimal para a base indicada" );
 $display("\nA) %0d", x);
  b = x;
 $display ( "x = %0d(10)" , x );
 $display ( "Base 4 = %d%d%d(4)", b[7:4], b[3:2], b[1:0]);//separando os bit para converter

 end // main
endmodule // Guia_0103

module Guia_0103b;
// define data
 integer d = 54; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
  $display ( "\n----------------------------------------" );
 $display ( "\nConversões de decimal para a base indicada" );
 $display("\nB) %0d", d);
 $display ( "x = %0d(10)" , d );
 b = d;
 $display ( "Base 8 = %0o ", b);//conversão para base indicada
 end // main
endmodule // Guia_0103

module Guia_0103c;
// define data
 integer d = 77; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
  $display ( "\n----------------------------------------" );
 $display ( "\nConversões de decimal para a base indicada" );
 $display("\nC) %0d", d);
 $display ( "x = %0d(10)" , d );

 b = d;
 $display ( "Base 16 = %0x ", b);//conversão para base indicada
 end // main
endmodule // Guia_0103

module Guia_0103d;
// define data
 integer d = 151; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
  $display ( "\n----------------------------------------" );
 $display ( "\nConversões de decimal para a base indicada" );
 $display("\nD) %0d", d);
 $display ( "x = %0d(10)" , d );
 b = d;
 $display ( "Base 16 = %0x ", b);//conversão para base indicada
 end // main
endmodule // Guia_0103

module Guia_0103e;
// define data
 integer d = 738; // decimal
 reg [16:0] b = 0; // binary
// actions
 initial
 begin : main
  $display ( "\n----------------------------------------" );
 $display ( "\nConversões de decimal para a base indicada" );
 $display("\nE) %0d", d);
 $display ( "x = %0d(10)" , d );
 b = d;
 $display ( "Base 16 = %0x ", b);//conversão para base indicada
 end // main
endmodule // Guia_0103