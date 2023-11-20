/*
 Guia_0504.v
 810862 - Vitor Lucio de Oliveira
*/

module f9 (output s, input a, input b);
  // Definir dados locais
  wire not_a, and_out, not_and_out;

  // Descrever por portas NAND
  nand NAND1 (not_a, a, a);
  nand NAND2 (and_out, not_a, b);
  nand NAND3 (not_and_out, and_out, and_out);
  nand NAND4 (s, not_and_out, not_and_out);
  
endmodule // f9

module test_f9;
  // Definir dados
  reg x;
  reg y;
  wire a, b;
  wire s;

  // Instanciar o módulo
  f9 modulo (s, x, y);

  // Parte principal
  initial begin : main
    $display("Guia_0504 - Vitor Lucio de Oliveira - 810862");
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
endmodule // test_f9
