/*
 Guia_0202.v
 810862 - Vitor Lucio de Oliveira
*/
module Guia_0202a;
// define data
 real x = 0.75; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
$display ( "Conversão de Decimal para Binario" );
$display ( " " );
 $display ( "A)  %f" , x );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 
 y=y-1;
 end // end while
$display ( "b = 0.%8b", b );
 end // main
endmodule // Guia_0202

module Guia_0202b;
// define data
 integer i = 1;//inteiro
 real x = 0.375; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
 $display ( "Conversão de Decimal para Binario" );
 $display ( " " );
 $display ( "B)  %f" , x );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 
 y=y-1;
 end // end while
$display ( "b = %0b.%8b", i ,b );
 end // main
endmodule // Guia_0202

module Guia_0202c;
// define data
 integer i = 2;//inteiro
 real x = 0.62500; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
 $display ( "Conversão de Decimal para Binario" );
 $display ( " " );
 $display ( "C)  %f" , x );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 
 y=y-1;
 end // end while
$display ( "b = %0b.%8b", i ,b );
 end // main
endmodule // Guia_0202

module Guia_0202d;
// define data
 integer i = 6;//inteiro
 real x = 0.87500; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
 $display ( "Conversão de Decimal para Binario" );
 $display ( " " );
 $display ( "D)  %f" , x );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 
 y=y-1;
 end // end while
$display ( "b = %0b.%8b", i ,b );
 end // main
endmodule // Guia_0202


module Guia_0202e;
// define data
 integer i = 11;//inteiro
 real x = 0.03125; // decimal
 integer y = 7 ; // counter
 reg [7:0] b = 0 ; // binary
// actions
 initial
 begin : main
 $display ( "-----------------------------------" );
 $display ( "Conversão de Decimal para Binario" );
 $display ( " " );
 $display ( "E)  %f" , x );
 while ( x > 0 && y >= 0 )
 begin
 if ( x*2 >= 1 )
 begin
 b[y] = 1;
 x = x*2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x*2.0;
 end // end if
 
 y=y-1;
 end // end while
$display ( "b = %0b.%8b", i ,b );
 end // main
endmodule // Guia_0202