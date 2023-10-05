module Guia_0701 (output and_out, output nand_out,
                  input a, input b, input select );

    // Portas NATIVAS para implementar operações lógicas
    and AND1 (and_out, a, b);
    nand NAND1 (nand_out, a, b);

endmodule 

module test_Guia_0701;

    reg a;
    reg b;
    reg select;
    wire and_out;
    wire nand_out;

    Guia_0701 UUT (and_out, nand_out, a, b, select);

    initial
    begin : main
        $display(" a b sel and_out nand_out");
        a = 1'b0; b = 1'b1; select = 1'b0;

        // Projetar testes do módulo
        #1 $monitor("%b %b %b %b %b", a, b, select, and_out, nand_out);
        #1 select = 1'b1;
    end
endmodule // test_Guia_0701