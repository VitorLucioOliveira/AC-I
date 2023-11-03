module Guia_1201 (
  input wire clock,           // Clock de entrada
  input wire reset,           // Sinal de reset
  input wire write_enable,    // Habilita a escrita
  input wire [0:0] address,   // Endereço de 1 bit
  input wire [3:0] data_in,   // Dados de entrada de 4 bits
  output wire [3:0] data_out  // Dados de saída de 4 bits
);

  reg [3:0] memory [0:0];     // Array de registros de 4 bits
  reg [3:0] output_data;      // Dados de saída temporários

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      // Em caso de reset, redefina os dados da memória
      memory[0] <= 4'b0000;
    end else if (write_enable) begin
      // Se a escrita estiver habilitada na borda de subida do clock
      // e o endereço estiver selecionado, escreva os dados
      memory[0] <= data_in;
    end
  end

  always @(negedge clock) begin
    // Na borda de descida do clock, leia os dados do endereço especificado
    output_data <= memory[address];
  end

  //printando na tela
  initial begin
    $display("Guia_1201");
    $display("clock reset write_enable address data_in data_out");
    $monitor("%b %b %b %b %b %b", clock, reset, write_enable, address, data_in, data_out);
  end
  assign data_out = output_data; // Saída dos dados

endmodule
