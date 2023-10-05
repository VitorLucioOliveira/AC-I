/*
 Guia_0204.v
810862 - Vitor Lucio de Oliveira
*/

module Guia_0204a;
// define data
 // decimal
 reg [7:0] b = 8'b1101_1000; // bary
 integer q [3:0];
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
    $display ( "Conversão de Base(x) para Base(x)" );
    $display ( " " );
 q[3] = b[7:6];
 q[2] = b[5:4];
 q[1] = b[3:2];
 q[0] = b[1:0];
 $display ( "A) 0.%0d%0d%0d (4)", q[3] ,q[2] ,q[1] );
 $display ( " 0.%0b(2)", b );
 end // main
endmodule // Guia_0204

module Guia_0204b;
// define data
 reg [11:0] b = 12'h3e7;
 integer q [3:0];
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
    $display ( "Conversão de Base(x) para Base(x)" );
    $display ( " " );
 $display ( "B) 0.%x%x%x (16)", b [11:8], b[7:4],b[3:0], );
 q[3] = b[7:6];
 q[2] = b[5:4];
 q[1] = b[3:2];
 q[0] = b[1:0];
 $display ( "0.%0d%0d%0d%0d%0d (4)",b[11:8], q[3] ,q[2] ,q[1] ,q[0] );
 end // main
endmodule // Guia_0204

module Guia_0204c;
// define data
 
reg [9:0] c = 10'o751;
integer q [3:0];
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
    $display ( "Conversão de Base(x) para Base(x)" );
    $display ( " " );
 
 $display("C) 0.%0o (8)", c);
 $display(" 0.%b (2)", c[9:0]);
 end // main
endmodule // Guia_0204

module Guia_0204d;
// define data
 
reg [11:0] b = 12'o7231;  
 integer q [3:0];
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
    $display ( "Conversão de Base(x) para Base(x)" );
    $display ( " " );
 
 q[3] = b[7:6];
 q[2] = b[5:4];
 q[1] = b[3:2];
 q[0] = b[1:0];
 $display ( "D) = %o.%o%o%o (8)",b[11:9], b[8:6],b[5:3],b[2:0] );
 $display ( " %0d%0d.%0d%0d%0d%0d (4)",  b[11:10]   ,b[9:8]  ,b[7:6]  ,b[5:4]    ,b[3:2]    ,b[1:0] );
 end // main
endmodule // Guia_0204

module Guia_0204e;
// define data
reg [15:0] b = 16'hab52;
 integer q [3:0];
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
    $display ( "Conversão de Base(x) para Base(x)" );
    $display ( " " );
 $display ( "b = %x.%x%x%x (16)", b[15:12],b [11:8], b[7:4],b[3:0], );

 $display("e = %d%d.%d%d%d%d%d%d (4)", b[15:14],    b[13:12], b[11:10], b[9:8], b[7:6], b[5:4], b[3:2],b[1:0]);
 end // main
endmodule // Guia_0204
