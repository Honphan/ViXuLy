module D_latch (
    input logic clk, 
    input logic d,  
    output logic q  
);

   
    always_latch begin
        if (clk == 1) begin
            q <= d;
        end
    end

endmodule