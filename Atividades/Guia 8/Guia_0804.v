/*
 Guia_0804.v
 810862 - Vitor Lucio de Oliveira
*/

module Guia_0804 (input [5:0] a, input [5:0] b, output [5:0] s);
    // Descrição por portas e/ou módulos
    assign s = (a ^ b);
endmodule // Guia_0804

module Guia_0804_tb;
    // Definir dados
    reg [5:0] x;
    reg [5:0] y;
    wire [5:0] result;

    // Instanciar a unidade lógica
    Guia_0804 LU (x, y, result);

    // Parte principal
    initial begin
        
        // Teste 1
        x = 6'b000000;
        y = 6'b000000;
        #10 $display("x = %b, y = %b, s = %b", x, y, result);

        // Teste 2
        x = 6'b101010;
        y = 6'b010101;
        #10 $display("x = %b, y = %b, s = %b", x, y, result);

        // Adicione mais casos de teste conforme necessário

        // Finalizar simulação
        $finish;
    end
endmodule // Guia_0804_tb
