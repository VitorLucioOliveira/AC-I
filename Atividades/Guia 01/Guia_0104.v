/*
 Guia_0104.v
 810862 - Vitor Lucio de Oliveira
*/
module Guia_0104a;
// define data
 reg [4:0] b = 10101; // binary
// actions
 initial
 begin : main
 $display ( "\n----------------------------------------" );
 $display ( "\nConversões de Binario para a base indicada" );
 $display("\nA) %0b", b);
 $display ( "binario = %0b(2)", b );
 $display ( "Base 4 = %d%d%d(4)", b[4:4], b[3:2], b[1:0]);//separando os bit para converter
 end // main
endmodule // Guia_0104


module Guia_0104b;
// define data
 reg [7:0] b = 5'b11010; // binary
// actions
 initial
 begin : main
 $display ( "\n----------------------------------------" );
 $display ( "\nConversões de Binario para a base indicada" );
 $display("\nA) %0b", b);
 $display ( "binario = %0b(2)", b );
 $display ( "Base 8 = %0o(8)", b);//separando os bit para converter
 end // main
endmodule // Guia_0104

module Guia_0104c;
// define data
 reg [5:0] b = 6'b100111; // binary
// actions
 initial
 begin : main
 $display ( "\n----------------------------------------" );
 $display ( "\nConversões de Binario para a base indicada" );
 $display("\nA) %0b", b);
 $display ( "binario = %0b(2)", b );
 $display ( "Base 16 = %0x(16)", b);//separando os bit para converter
 end // main
endmodule // Guia_0104

module Guia_0104d;
// define data
 reg [5:0] b = 6'b101001; // binary
// actions
 initial
 begin : main
 $display ( "\n----------------------------------------" );
 $display ( "\nConversões de Binario para a base indicada" );
 $display("\nA) %0b", b);
 $display ( "binario = %0b(2)", b );
 $display ( "Base 8 = %0o(16)", b);//separando os bit para converter
 end // main
endmodule // Guia_0104

module Guia_0104e;
// define data
 reg [5:0] b = 6'b101101; // binary
// actions
 initial
 begin : main
 $display ( "\n----------------------------------------" );
 $display ( "\nConversões de Binario para a base indicada" );
 $display("\nA) %0b", b);
 $display ( "binario = %0b(2)", b );
 $display ( "Base 4 = %0d%0d%0d(4)", b[5:4], b[3:2], b[1:0]);//separando os bit para converter
 end // main
endmodule // Guia_0104