/*
 Guia_0105.v
 810862 - Vitor Lucio de Oliveira
*/
module Guia_0105a;
// define data
 reg [7:0] b ; // binary
 reg [0:2][23:0] i = "PUC-Minas"; // char array[3] (3x8 bits - little Endian)

// actions
 initial
 begin : main
 $display ( "\n------------------------" );
$display ("\nA)Conversão (16_ASCII)" );
 $display ( "Entrada = %0s" , i   );
 $display ( "Tradução = %h " , i );
 
 
 end // main
endmodule // Guia_0105

module Guia_0105b;
// define data
 reg [7:0] b ; // binary
 reg [0:2][23:0] i = "2023-02"; 

// actions
 initial
 begin : main
 $display ( "\n------------------------" );
$display ("\nB)Conversão (16_ASCII)" );
 $display ( "Entrada = %0s" , i   );// string a ser traduzida
 $display ( "Tradução = %0h " , i );//tradução em binario
 
 
 end // main
endmodule // Guia_0105

module Guia_0105c;
// define data
 reg [111:0] b ; // binary
 reg [111:0] i = "Belo Horizonte"; 

// actions
 initial
 begin : main
 $display ( "\n------------------------" );
$display ("\nC)Conversão (2_ASCII)" );
 $display ( "Entrada = %0s" , i   );// string a ser traduzida
 b=i;
 $display ( "Tradução = %b " , b );//tradução em binario
 
 
 end // main
endmodule // Guia_0105

module Guia_0105d;
// define data
 reg [80:0] b= {8'o116, 8'o157, 8'o151, 8'o164, 8'o145} ; // binary
 reg [80:0] i ; 

// actions
 initial
 begin : main
 $display ( "\n------------------------" );
$display ("\nD)Conversão (8_ASCII)" );
 $display ( "Entrada = %0o %0o %0o %0o %0o" ,b[39:32],b[31:24],b[23:16], b[15:8], b[8:0] );// string a ser traduzida
 i=b;
 $display ( "Tradução = %0s " , b );//tradução em binario
 
 
 end // main
endmodule // Guia_0105

module Guia_0105e;
// define data
 reg [80:0] b= {8'h4D, 8'h2E, 8'h20, 8'h47, 8'h2E} ; // binary
 reg [80:0] i ; 

// actions
 initial
 begin : main
 $display ( "\n------------------------" );
$display ("\nE)Conversão (16_ASCII)" );
 $display ( "Entrada = %0h %0h %0h %0h %0h" ,b[39:32],b[31:24],b[23:16], b[15:8], b[8:0] );// string a ser traduzida
 i=b;
 $display ( "Tradução = %0s " , b );//tradução em binario
 
 
 end // main
endmodule // Guia_0105



