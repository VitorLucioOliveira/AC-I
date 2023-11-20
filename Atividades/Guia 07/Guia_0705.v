module Guia_0705 (
    input a,
    input b,
    input [2:0] select_operation,
    output reg out
);

  // Declaração de fios internos
  wire not_a, not_b;
  wire and_out, nand_out, xor_out, xnor_out, or_out, nor_out;

  // Implementação das portas lógicas
  not (not_a, a);
  not (not_b, b);
  and (and_out, a, b);
  nand (nand_out, a, b);
  xor (xor_out, a, b);
  xnor (xnor_out, a, b);
  or (or_out, a, b);
  nor (nor_out, a, b);

  // Seleção da operação
  always @*
  begin
    case(select_operation)
      3'b000: out = not_a; // NOT A
      3'b001: out = not_b; // NOT B
      3'b010: out = and_out; // AND
      3'b011: out = nand_out; // NAND
      3'b100: out = xor_out; // XOR
      3'b101: out = xnor_out; // XNOR
      3'b110: out = or_out; // OR
      3'b111: out = nor_out; // NOR
      default: out = 1'bx; // Caso inválido
    endcase
  end

endmodule

module test_Guia_0705;

  reg a, b;
  reg [2:0] select_operation;
  wire out;

  // Instanciar o módulo Guia_0705
  Guia_0705 uut (a, b, select_operation, out);

  initial begin
    $display(" a b sel_op out");
    a = 1'b0; b = 1'b1; select_operation = 3'b010; // Teste com AND

    // Projetar testes do módulo
    #1 $monitor("%b %b %b %b", a, b, select_operation, out);
    #1 select_operation = 3'b100; // Teste com XOR
    #1 select_operation = 3'b111; // Teste com NOR
    #1 select_operation = 3'b000; // Teste com NOT A
    #1 select_operation = 3'b001; // Teste com NOT B
  end

endmodule