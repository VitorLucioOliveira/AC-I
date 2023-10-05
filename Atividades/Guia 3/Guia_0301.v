/*
 Guia_0301.v
 810862 - Vitor Lucio de Oliveira
*/
module Guia_0301a;
// define data
 reg [5:0] a = 8'b00_1001 ; // binary

// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );

 $display ( "A) %b -> C1(a) = %0b", a, ~a,  );
 end // main
endmodule // Guia_0301

module Guia_0301b;
// define data
 reg [7:0] a = 8'b0000_1100 ; // binary

// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );

 $display ( "B)  %b -> C1(a) = %0b", a, ~a,  );
 end // main
endmodule // Guia_0301

module Guia_0301c;
// define data
 reg [5:0] a = 8'b00_101101 ; // binary
 reg [5:0] b;

// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
b=~a+1;

 $display ( "C)  %b -> C2(a) = %b", a, b,  );
 end // main
endmodule // Guia_0301

module Guia_0301d;
// define data
 reg [6:0] a = 8'b0_100111 ; // binary
 reg [6:0] b;

// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
b=~a+1;

 $display ( "D)  %b -> C2(a) = %b", a, b,  );
 end // main
endmodule // Guia_0301

module Guia_0301e;
// define data
 reg [7:0] a = 8'b0_110001 ; // binary
 reg [7:0] b;

// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
b=~a+1;

 $display ( "E)  %b -> C2(a) = %b", a, b,  );
 end // main
endmodule // Guia_0301