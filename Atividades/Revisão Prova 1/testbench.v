module testbench;
  reg a, b, c;
  wire s;
  
  // Instanciando o módulo f
  f uut (s, a, b, c);
  
  // Testando todas as combinações de entrada
  initial begin
    $dumpfile("tabela_verdade.vcd");
    $dumpvars(0, testbench);
    
    // Gerando tabela-verdade
    for (a = 0; a <= 1; a = a + 1) begin
      for (b = 0; b <= 1; b = b + 1) begin
        for (c = 0; c <= 1; c = c + 1) begin
          #1;
          $display("%b %b %b | %b", a, b, c, s);
        end
      end
    end
    
    $finish;
  end
endmodule
