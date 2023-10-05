module Guia_0704 (input a, input b, input [1:0] select_operation, output reg out);

  wire xor_out, xnor_out, or_out, nor_out;

  // Portas NATIVAS para implementar operações lógicas
  xor XOR1 (xor_out, a, b);
  xnor XNOR1 (xnor_out, a, b);
  or OR1 (or_out, a, b);
  nor NOR1 (nor_out, a, b);

  // Seleção da operação
  always @*
  begin
    case(select_operation)
      2'b00: out = xor_out; // XOR
      2'b01: out = xnor_out; // XNOR
      2'b10: out = or_out; // OR
      2'b11: out = nor_out; // NOR
      default: out = 1'bx; // Caso inválido
    endcase
  end

endmodule

module test_Guia_0704;

  reg a, b;
  reg [1:0] select_operation;
  wire out;

  // Instanciar o módulo Guia_0704
  Guia_0704 uut (a, b, select_operation, out);

  initial begin
    $display(" a b sel_op out");
    a = 1'b0; b = 1'b1; select_operation = 2'b00; // Teste com XOR

    // Projetar testes do módulo
    #1 $monitor("%b %b %b %b", a, b, select_operation, out);
    #1 select_operation = 2'b01; // Teste com XNOR
    #1 select_operation = 2'b10; // Teste com OR
    #1 select_operation = 2'b11; // Teste com NOR
  end

endmodule