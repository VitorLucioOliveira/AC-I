module testbench_v04;
  reg [7:0] num_bin = 8'b01110101;
  wire [7:0] resultado;
  
  // Instanciando o módulo exercicio_04
  exercicio_04 uut (num_bin, resultado);
  
  // Exibindo os resultados
  initial begin
    $display("Número binário: %b", num_bin);
    $display("Resultado (4x): %b", resultado);
    $display("Resultado (/8): %b", resultado[6:0]); // Apenas os 7 bits menos significativos
    
    // Finalizando a simulação
    $finish;
  end
endmodule
