module exercicio_05(input [7:0] hex, input [7:0] quaternario, output reg [7:0] diferenca);
  always @* begin
    diferenca = hex - quaternario;
  end
endmodule
