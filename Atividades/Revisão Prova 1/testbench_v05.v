module testbench_v05;
  reg [7:0] hex = 8'hC4;
  reg [7:0] quaternario = 8'b1232;
  wire [7:0] diferenca;
  
  // Instanciando o módulo exercicio_05
  exercicio_05 uut (hex, quaternario, diferenca);
  
  // Exibindo os resultados
  initial begin
    $display("Hexadecimal: %h", hex);
    $display("Quaternário: %b", quaternario);
    $display("Diferença em binário: %b", diferenca);
    
    // Finalizando a simulação
    $finish;
  end
endmodule
