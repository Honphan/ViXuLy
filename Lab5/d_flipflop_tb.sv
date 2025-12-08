module d_flipflop_tb();

    logic clk;
    logic reset;
    logic enable;
    logic d;
    logic q;

    d_flipflop dut (clk, reset, enable, d, q);

    always begin
        clk = 0; #5;
        clk = 1; #5;
    end

    initial begin
        reset = 1;
        enable = 0;
        d = 0;
        #20;

        reset = 0;

        enable = 1;
        d = 1;
        #20;

        d = 0;
        #20;

        enable = 0;
        d = 1;
        #20;

        reset = 1;
        #20;

    end

endmodule
