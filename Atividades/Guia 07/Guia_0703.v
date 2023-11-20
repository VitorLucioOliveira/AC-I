module Guia_0703 (input a, input b, input select_group, input select_operation, output out);

  wire and_out, nand_out, or_out, nor_out;

  // Portas NATIVAS para implementar operações lógicas
  and AND1 (and_out, a, b);
  nand NAND1 (nand_out, a, b);
  or OR1 (or_out, a, b);
  nor NOR1 (nor_out, a, b);

  // Seleção da operação
  wire selected_group, selected_operation;
  assign selected_group = (select_operation) ? select_group : ~select_group;
  assign out = (selected_group) ? (selected_operation ? nand_out : and_out) : (selected_operation ? nor_out : or_out);

endmodule

module test_Guia_0703;

  reg a, b, select_group, select_operation;
  wire out;

  // Instanciar o módulo Guia_0703
  Guia_0703 uut (a, b, select_group, select_operation, out);

  initial begin
    $display(" a b sel_grp sel_op out");
    a = 1'b0; b = 1'b1; select_group = 1'b0; select_operation = 1'b0;

    // Projetar testes do módulo
    #1 $monitor("%b %b %b %b %b", a, b, select_group, select_operation, out);
    #1 select_group = 1'b1;
    #1 select_operation = 1'b1;
  end

endmodule