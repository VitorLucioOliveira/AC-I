/*
 Guia_0302.v
810862 - Vitor Lucio de Oliveira
*/
module Guia_0302a;
// define data
 reg [5:0] c = 8'b11_01_10 ; // decimal
 reg [5:0] f = 0 ; // binary
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
 $display ( "A) = %0d%0d%0d -> C1(c) = %6b",c[5:4], c[3:2],c[1:0], ~c, );
 end // main
endmodule // Guia_0302

module Guia_0302b;
// define data
 reg [7:0] a = 8'h5f ; // hexadecimal
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );

 $display ( "B) = %h -> C1(a) = %8b", a, ~a );

 end // main
endmodule // Guia_0302

module Guia_0302c;
// define data
 reg [5:0] c = 8'b01_10_11 ; // decimal
 reg [5:0] f = 0 ; // binary
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
f=~c+1;
 $display ( "C) = %0d%0d%0d -> C1(c) = %6b",c[5:4], c[3:2],c[1:0], f, );
 end // main
endmodule // Guia_0302

module Guia_0302d;
// define data
 reg [7:0] a = 8'o147 ; // hexadecimal
 reg [7:0] d;
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
d=~a+1;
 $display ( "D) = %o -> C2(a) = %8b", a, d );

 end // main
endmodule // Guia_0302

module Guia_0302e;
// define data
 reg [7:0] a = 8'hd5 ; // hexadecimal
 reg [7:0] d;
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Complemento de (x)" );
$display ( "" );
d=~a+1;
 $display ( "E) = %h -> C2(a) = %8b", a, d );

 end // main
endmodule // Guia_0302