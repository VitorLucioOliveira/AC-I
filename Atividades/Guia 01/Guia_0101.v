/*
 Guia_0101.v
810862 - Vitor Lucio de Oliveira
*/


module Guia_0101a;
// define data
 integer d = 26; // decimal
 reg [7:0] b = 0; // binary (bits - little endian)

// actions
 initial
 begin 
  $display ( "\n------------------------" );
    $display ("\nConversão base 10 para 2" );
    $display ("A) %0d ", d);
 $display ( "d = %0d (10)" , d );
 b = d;
 $display ( "b = %0b (2)", b );
 end // main
endmodule 

module Guia_0101b;
// define data
 integer d = 53; // decimal
 reg [7:0] b = 0; // binary (bits - little endian)

// actions
 initial
 begin 
  $display ( "\n------------------------" );
    $display ("\nConversão base 10 para 2" );
    $display ("B) %0d ", d);
    $display ( "d = %0d (10)" , d );
 b = d;
 $display ( "b = %0b (2)", b );
 end // main
endmodule 

module Guia_0101c;
// define data
 integer d = 723; // decimal
 reg [16:0] b = 0; // binary (bits - little endian)

// actions
 initial
 begin 
  $display ( "\n------------------------" );
    $display ("\nConversão base 10 para 2" );
    $display ("C) %0d ", d);
    $display ( "d = %0d (10)" , d );
 b = d;
 $display ( "b = %0b (2)", b );
 end // main
endmodule 

module Guia_0101d;
// define data
 integer d = 312; // decimal
 reg [16:0] b = 0; // binary (bits - little endian)

// actions
 initial
 begin 
  $display ( "\n------------------------" );
    $display ("\nConversão base 10 para 2" );
    $display ("D) %0d ", d);
    $display ( "d = %0d (10)" , d );
 b = d;
 $display ( "b = %0b (2)", b );
 end // main
endmodule 

module Guia_0101e;
// define data
 integer d = 365; // decimal
 reg [16:0] b = 0; // binary (bits - little endian)

// actions
 initial
 begin 
  $display ( "\n------------------------" );
    $display ("\nConversão base 10 para 2" );
    $display ("E) %0d ", d);
    $display ( "d = %0d (10)" , d );
 b = d;
 $display ( "b = %0b (2)", b );
 end // main
endmodule 


