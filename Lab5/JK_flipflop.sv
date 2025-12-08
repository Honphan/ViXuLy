module JK_flipflop (
    input logic clk,
    input logic j,
    input logic k,
    output logic q
);

    always_ff @(posedge clk) begin
        if (j == 0 && k == 0) begin
        end
        else if (j == 0 && k == 1) begin
            q <= 0;
        end
        else if (j == 1 && k == 0) begin
            q <= 1; 
        end
        else if (j == 1 && k == 1) begin
            q <= ~q; 
        end
    end
endmodule