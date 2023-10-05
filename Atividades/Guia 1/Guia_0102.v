/*
 Guia_0102.v
810862 - Vitor Lucio de Oliveira
*/
module Guia_0102a;
// define data
 integer d= 0; // decimal
 reg [4:0] b = 5'b10110; // binary (bits - little endian)
// actions
 initial
 begin : main
  $display ( "\n------------------------" );
 $display ( "\nConversão base 2 para 10" );
 $display ( "A) %b" , b);

 d= b;
  $display ( "b = %b (2)" , b);
  $display ( "d = %0d (10)" , d);

 end // main
endmodule // Guia_0102

module Guia_0102b;
// define data
 integer d= 0; // decimal
 reg [4:0] b = 5'b11011; // binary (bits - little endian)
// actions
 initial
 begin : main
  $display ( "\n------------------------" );
 $display ( "\nConversão base 2 para 10" );
 $display ( "B) %b" , b);

 d= b;
  $display ( "b = %b (2)" , b);
  $display ( "d = %0d (10)" , d);

 end // main
endmodule // Guia_0102

module Guia_0102c;
// define data
 integer d= 0; // decimal
 reg [5:0] b = 6'b100100; // binary (bits - little endian)
// actions
 initial
 begin : main
  $display ( "\n------------------------" );
 $display ( "\nConversão base 2 para 10" );
 $display ( "C) %b" , b);

 d= b;
  $display ( "b = %b (2)" , b);
  $display ( "d = %0d (10)" , d);

 end // main
endmodule // Guia_0102

module Guia_0102d;
// define data
 integer d= 0; // decimal
 reg [5:0] b = 6'b101001; // binary (bits - little endian)
// actions
 initial
 begin : main
  $display ( "\n------------------------" );
 $display ( "\nConversão base 2 para 10" );
 $display ( "D) %b" , b);

 d= b;
  $display ( "b = %b (2)" , b);
  $display ( "d = %0d (10)" , d);

 end // main
endmodule // Guia_0102

module Guia_0102e;
// define data
 integer d= 0; // decimal
 reg [5:0] b = 6'b110111; // binary (bits - little endian)
// actions
 initial
 begin : main
 $display ( "\n------------------------" );
 $display ( "\nConversão base 2 para 10" );
 $display ( "E) %b" , b);

 d= b;
  $display ( "b = %b (2)" , b);
  $display ( "d = %0d (10)" , d);

 end // main
endmodule // Guia_0102

