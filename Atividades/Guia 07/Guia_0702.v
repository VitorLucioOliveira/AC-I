module Guia_0702 (input a, input b, input select, output out);

  wire or_out, nor_out;

  // Portas NATIVAS para implementar operações lógicas
  or OR1 (or_out, a, b);
  nor NOR1 (nor_out, a, b);

  // Seleção da saída
  assign out = (select) ? nor_out : or_out;

endmodule

module test_Guia_0702;

  reg a, b, select;
  wire out;

  Guia_0702 uut (a, b, select, out);

  initial begin
    $display(" a b sel out");
    a = 1'b0; b = 1'b1; select = 1'b0;

    // Projetar testes do módulo
    #1 $monitor("%b %b %b %b", a, b, select, out);
    #1 select = 1'b1;
  end

endmodule