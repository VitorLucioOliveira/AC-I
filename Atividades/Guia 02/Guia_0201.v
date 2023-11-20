/*
 Guia_0201.v
810862 - Vitor Lucio de Oliveira
*/
module Guia_0201a;
// define data
 real x = 0 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] f = 8'b01101000; // binary (only fraction part, Big Endian)
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Conversão de Binario para Decimal" );
$display ( " " );
$display ( "A) 0.%0b(2)", f );
 
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 if ( f[y] == 1 )
 begin
 x = x + power2;
 end
  y=y-1;
 end // end while
 $display ( "   d = %f(10)", x );
 
 end // main
endmodule // Guia_0201

module Guia_0201b;
// define data
 real x = 0 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] f = 8'b10011000; // binary (only fraction part, Big Endian)
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Conversão de Binario para Decimal" );
$display ( " " );
$display ( "B) 0.%0b(2)", f );
 
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 if ( f[y] == 1 )
 begin
 x = x + power2;
 end
  y=y-1;
 end // end while
 $display ( "   d = %f(10)", x );
 
 end // main
endmodule // Guia_0201

module Guia_0201c;
// define data
 real x = 0 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] f = 8'b10101000; // binary (only fraction part, Big Endian)
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Conversão de Binario para Decimal" );
$display ( " " );
$display ( "C) 0.%0b(2)", f );
 
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 if ( f[y] == 1 )
 begin
 x = x + power2;
 end
  y=y-1;
 end // end while
 $display ( "   d = %f(10)", x );
 
 end // main
endmodule // Guia_0201

module Guia_0201d;
// define data
 real x = 1 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] f = 8'b11001000; // binary (only fraction part, Big Endian)
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Conversão de Binario para Decimal" );
$display ( " " );
$display ( "D) 0.%0b(2)", f );
 
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 if ( f[y] == 1 )
 begin
 x = x + power2;
 end
  y=y-1;
 end // end while
 $display ( "   d = %f(10)", x );
 
 end // main
endmodule // Guia_0201


module Guia_0201e;
// define data
 real x = 3 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] f = 8'b11011000; // binary (only fraction part, Big Endian)
// actions
 initial
 begin : main
$display ( "-----------------------------------" );
$display ( "Conversão de Binario para Decimal" );
$display ( " " );
$display ( "E) 0.%0b(2)", f );
 
 while ( y >= 0 )
 begin
 power2 = power2 / 2.0;
 if ( f[y] == 1 )
 begin
 x = x + power2;
 end
  y=y-1;
 end // end while
 $display ( "   d = %f(10)", x );
 
 end // main
endmodule // Guia_0201