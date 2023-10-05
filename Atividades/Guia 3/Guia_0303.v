/*
 Guia_0303.v
 810862 - Vitor Lucio de Oliveira
*/
module Guia_0303a;
// define data
 reg signed [4:0] a = 5'b10101; // binary
 reg signed [6:0] b = 8'b1111_101 ; // binary
 reg signed [5:0] c = 8'b1111_10 ; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Positivo de (x)" );
$display ( "" );
 d = ~a+1;
 e = ~(a-1);
 $display ( " A) = %8b -> C1(a) = %0b = %d ", a, ~a, e);
 $display ( " A) = %8b -> C2(a) = %0b = %d ", a, d, d);
 
 end // main end // main
endmodule // Guia_0303

module Guia_0303b;
// define data
 reg signed [5:0] a = 6'b110011; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Positivo de (x)" );
$display ( "" );
 d = ~a+1;
 e = ~(a-1);
 $display ( " B) = %8b -> C1(a) = %0b = %d ", a, ~a, e);
 $display ( " B) = %8b -> C2(a) = %0b = %d ", a, d, d);
 
 end // main end // main
endmodule // Guia_0303

module Guia_0303c;
// define data
 reg signed [5:0] a = 6'b100111; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Positivo de (x)" );
$display ( "" );
 d = ~a+1;
 e = ~(a-1);
 $display ( " C) = %8b -> C1(a) = %0b = %d ", a, ~a, e);
 $display ( " C) = %8b -> C2(a) = %0b = %d ", a, d, d);
 
 end // main end // main
endmodule // Guia_0303

module Guia_0303d;
// define data
 reg signed [6:0] a = 7'b1011011; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Positivo de (x)" );
$display ( "" );
 d = ~a+1;
 e = ~(a-1);
 $display ( " D) = %8b -> C1(a) = %0b = %d ", a, ~a, e);
 $display ( " D) = %8b -> C2(a) = %0b = %d ", a, d, d);
 
 end // main end // main
endmodule // Guia_0303

module Guia_0303e;
// define data
 reg signed [6:0] a = 7'b1010001; // binary
 reg signed [7:0] d = 0 ; // binary
 reg signed [6:0] e = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Positivo de (x)" );
$display ( "" );
 d = ~a+1;
 e = ~(a-1);
 $display ( " E) = %8b -> C1(a) = %0b = %h ", a, ~a, e);
 $display ( " E) = %8b -> C2(a) = %0b = %h ", a, d, d);
 
 end // main end // main
endmodule // Guia_0303