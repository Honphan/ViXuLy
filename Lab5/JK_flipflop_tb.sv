module JK_flipflop_tb();

    logic clk;
    logic j;
    logic k;
    logic q; 

    JK_flipflop dut (clk, j, k, q);

    initial begin
        clk = 0;
        j = 0;
        k = 0;
        
        #10;
        
        j = 1; k = 0;
        #10;

        j = 0; k = 0;
        #10;

        j = 0; k = 1;
        #10;
        
        j = 1; k = 1;
        #10;

    end

    always begin
        #5 clk = ~clk;
    end
    
endmodule