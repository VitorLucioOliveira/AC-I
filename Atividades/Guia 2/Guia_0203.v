/*
 Guia_0203.v
810862 - Vitor Lucio de Oliveira
*/

module Guia_0203a;
// define data
 reg [7:0] b = 8'b0100_1000 ; // binary
// actions
 initial
 begin : main
  $display ( "-----------------------------------" );
    $display ( "Conversão de Binario para Base(x)" );
    $display ( " " );
 $display ( "A)  %0b" , b );
 $display ( "base 4 = 0,%d%d%d(4)", b[4:3], b[7], b[6:5] );
 end // main
endmodule // Guia_0203

module Guia_0203b;
// define data
 reg [7:0] b = 8'b100101 ; // binary
// actions
 initial
 begin : main
  $display ( "-----------------------------------" );
    $display ( "Conversão de Binario para Base(x)" );
    $display ( " " );
 $display ( "B)  %0b" , b );
 $display ( "base 8 = 0,%o%o(8)", b[5:3], b[2:0] );
 end // main
endmodule // Guia_0203

module Guia_0203c;
// define data
 reg [7:0] b = 8'b1010_1100 ; // binary
// actions
 initial
 begin : main
  $display ( "-----------------------------------" );
    $display ( "Conversão de Binario para Base(x)" );
    $display ( " " );
 $display ( "B)  %0b" , b );
 $display ( "base 16 = 0,%x%x(16)", b[7:4], b[3:0] );
 end // main
endmodule // Guia_0203

module Guia_0203d;
// define data
 reg [7:0] b = 8'b110001 ; // binary
// actions
 initial
 begin : main
  $display ( "-----------------------------------" );
    $display ( "Conversão de Binario para Base(x)" );
    $display ( " " );
 $display ( "D)  %0b" , b );
 $display ( "base 8 = 1,%o%o(8)", b[5:3], b[2:0] );
 end // main
endmodule // Guia_0203

module Guia_0203e;
// define data
 reg [7:0] b = 4'b1110 ; // binary
reg [7:0] C = 4'b1001 ; // binary
// actions
 initial
 begin : main
  $display ( "-----------------------------------" );
    $display ( "Conversão de Binario para Base(x)" );
    $display ( " " );
 $display ( "E)  %0b" , b );
 $display ( "base 16 = %0x,%0x(16)", b,C );
 end // main
endmodule // Guia_0203