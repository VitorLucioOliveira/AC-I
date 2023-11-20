/*
 Guia_0506.v
 810862 - Vitor Lucio de Oliveira
*/

module not_xor_gate (output s, input a, input b);
  // Definir dados locais
  wire xor_out;

  // Descrever por portas NAND
  nand NAND1 (xor_out, a, b);
  nand NAND2 (s, xor_out, xor_out);
endmodule // not_xor_gate

module test_not_xor_gate;
  // Definir dados
  reg x;
  reg y;
  wire a, b;
  wire s;

  // Instanciar o módulo not_xor_gate
  not_xor_gate not_xor_module (s, x, y);

  // Parte principal
  initial begin : main
    $display("Guia_0506 - Vitor Lucio de Oliveira - 810862");
    $display("Test module");
    $display(" x y a b s");
    
    // Projetar testes do módulo
    $monitor("%4b %4b %4b %4b %4b", x, y, a, b, s);
    
    // Teste 1: a = 0, b = 0
    x = 1'b0; y = 1'b0;
    #1 a = 1'b0; b = 1'b0;
    
    // Teste 2: a = 0, b = 1
    x = 1'b0; y = 1'b1;
    #1 a = 1'b0; b = 1'b1;
    
    // Teste 3: a = 1, b = 0
    x = 1'b1; y = 1'b0;
    #1 a = 1'b1; b = 1'b0;
    
    // Teste 4: a = 1, b = 1
    x = 1'b1; y = 1'b1;
    #1 a = 1'b1; b = 1'b1;
  end
endmodule // test_not_xor_gate
