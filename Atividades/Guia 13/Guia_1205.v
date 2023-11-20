module contador_modulo9 (
  input wire clk,         
  output wire [3:0] out 
);

  reg [3:0] contador;     

  always @(posedge clk) begin
    
    if (contador == 4'b1001) begin
      contador <= 4'b0000; 
    end else begin
      contador <= contador + 1;
    end
  end

 
  assign out = contador;

endmodule
