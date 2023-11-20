module trigger (input on, input clock, output reg signal);
    always @(posedge clock or posedge on)
    begin
        if (on)
        begin
            #60 signal <= 1'b1;
            #60 signal <= 1'b0;
        end
    end
endmodule
