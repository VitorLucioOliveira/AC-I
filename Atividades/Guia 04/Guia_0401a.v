/*
 Guia_0401a.v
 810862 - Vitor Lucio de Oliveira
*/
module fxy (output s,
input x, y);
assign s = ~x & y | x & ~y;
endmodule // fxy

module SoP (output s,
input x, y);
// mintermos
assign s = ~x & y // 1
| x & ~y; // 2
endmodule // SoP


module PoS (output S,
input X, Y);
// MAXTERMOS
assign S = ( X | Y ) // 0
& ( X | ~Y ); // 3
endmodule // PoS


module fxyz (output s1,input x, y, z);
assign s1 = x & (~y | z);
endmodule // fxyz

module Guia04;
    reg x, y, z;
    wire s1, s2, s3;
// instancias
    fxyz FXYZ1(s1, x, y, z);
    SoP SOP1 (s2, x, y);
    PoS POS1 (s3, x, y);


initial begin : inicial
x = 1'bx;y = 1'bx;z = 1'bx;
end

initial begin: main
// Identificar
$display("Vitor Lucio de Oliveira - 810862");
$display("Expressao: x . ( y+z' )'");
$display(" x  y  z | x . ( y+z' )'");
$monitor("%2b %2b %2b | %2b", x, y, z, s1);

#1 x = 0; y = 0; z = 0;
#1 x = 0; y = 0; z = 1;
#1 x = 0; y = 1; z = 0;
#1 x = 0; y = 1; z = 1;
#1 x = 1; y = 0; z = 0;
#1 x = 1; y = 0; z = 1;
#1 x = 1; y = 1; z = 0;
#1 x = 1; y = 1; z = 1;

end
endmodule 