module contador_assincrono_crescente (
  input wire clk,         
  input wire reset,       
  output wire [4:0] out  
);

  reg [4:0] contador;     

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      contador <= 5'b00000; 
    end else begin
      
      case (contador)
        5'b11111: contador <= 5'b00000;
        default: contador <= contador + 1;
      endcase
    end
  end

  
  assign out = contador;

endmodule
