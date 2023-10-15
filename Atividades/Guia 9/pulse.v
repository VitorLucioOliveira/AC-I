module pulse (input clock, output reg signal);
    always @(posedge clock)
    begin
        signal <= 1'b1;
        #3 signal <= 1'b0;
        #3 signal <= 1'b1;
        #3 signal <= 1'b0;
    end
endmodule
