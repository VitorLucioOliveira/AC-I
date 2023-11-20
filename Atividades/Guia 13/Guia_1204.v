module contador_decadico_decrescente (
  input wire clk,         
  input wire reset,       
  output wire [3:0] out  
);

  reg [3:0] contador;    

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      contador <= 4'b1001; 
    end else begin
      
      case (contador)
        4'b0000: contador <= 4'b1001;
        default: contador <= contador - 1;
      endcase
    end
  end

  
  assign out = contador;

endmodule
