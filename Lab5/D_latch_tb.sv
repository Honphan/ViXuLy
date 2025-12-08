module D_latch_tb;
    
    
    logic clk, d, q;
    D_latch dut(clk, d, q); 

    always begin
        clk = ~clk; 
        #5;
    end
    
    always begin
        d = ~d; 
        #3;
    end

    initial begin
        clk = 0;
        d = 0;
    end
    
endmodule