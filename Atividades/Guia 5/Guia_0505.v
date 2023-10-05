/*
 Guia_0505.v
 810862 - Vitor Lucio de Oliveira
*/

module xnor_gate (output s, input a, input b);
  // Definir dados locais
  wire not_a, not_b, and1_out, and2_out, or_out;

  // Descrever por portas NOR
  nor NOR1 (not_a, a, a);
  nor NOR2 (not_b, b, b);

  // Descrever por portas AND
  and AND1 (and1_out, not_a, b);
  and AND2 (and2_out, a, not_b);

  // Descrever por porta OR
  or OR1 (or_out, and1_out, and2_out);

  // A saída é a negação da porta OR
  nor NOR3 (s, or_out, or_out);
endmodule // xnor_gate

module test_xnor_gate;
  // Definir dados
  reg x;
  reg y;
  wire a, b;
  wire s;

  // Instanciar o módulo xnor_gate
  xnor_gate xnor_module (s, x, y);

  // Parte principal
  initial begin : main
    $display("Guia_0505 - Vitor Lucio de Oliveira - 810862");
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
endmodule // test_xnor_gate
