/*
 Guia_0805.v
 810862 - Vitor Lucio de Oliveira
*/



module Guia_0805 (input [5:0] a, output reg [5:0] twos_complement);

    // Submódulo para calcular o complemento de 1
    module OnesComplement (input [5:0] a, output reg [5:0] ones_comp);
        assign ones_comp = ~a;
    endmodule

    // Submódulo para somar 1 ao complemento de 1
    module AddOne (input [5:0] a, output reg [5:0] sum);
        always @* begin
            sum = a + 1;
        end
    endmodule

    reg [5:0] ones_comp;
    reg [5:0] add_one_result;

    // Instanciar módulo para calcular o complemento de 1
    OnesComplement OC (.a(a), .ones_comp(ones_comp));

    // Instanciar módulo para somar 1 ao complemento de 1
    AddOne AO (.a(ones_comp), .sum(add_one_result));
    assign twos_complement = add_one_result;

endmodule // Guia_0805

module OnesComplement (input [5:0] a, output reg [5:0] ones_comp);
    assign ones_comp = ~a;
endmodule

module AddOne (input [5:0] a, output reg [5:0] sum);
    always @* begin
        sum = a + 1;
    end
endmodule

module Guia_0805_tb;
    // Definir dados
    reg [5:0] a;
    wire [5:0] twos_comp_result;

    // Instanciar a unidade lógica
    Guia_0805 LU (.a(a), .twos_complement(twos_comp_result));

    // Parte principal
    initial begin

        // Teste 1
        a = 6'b000000;
        #10 $display("a = %b, twos_complement = %b", a, twos_comp_result);

        // Teste 2
        a = 6'b011111;
        #10 $display("a = %b, twos_complement = %b", a, twos_comp_result);

        // Adicione mais casos de teste conforme necessário

        // Finalizar simulação
        $finish;
    end
endmodule // Guia_0805_tb