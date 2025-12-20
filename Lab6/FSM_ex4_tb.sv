module FSM_ex4_tb ();
    logic clk, reset;
    logic Ta, Tb;
    logic [1:0] La, Lb;

   FSM_ex4 dut (clk, reset, Ta, Tb, La, Lb);
   
	always begin
        clk = ~clk; 
		  #5;
    end

    initial begin
        reset = 1; Ta = 1; Tb = 1; clk = 0;
        #10 reset = 0; // Đang ở S0: La=GREEN, Lb=RED

        #20 Ta = 0;    // Hết xe đường A -> Chuyển sang S1 (Vàng)
        #10;           // Sau 1 chu kỳ clk, sang S4 (Cả hai Đỏ)
        #10;           // Sau 1 chu kỳ clk nữa, sang S2 (B bắt đầu Xanh)

        #20 Tb = 0;    // Hết xe đường B -> Chuyển sang S3 (Vàng)
        #10;           // Sau 1 chu kỳ clk, sang S5 (Cả hai Đỏ)
        #10;           // Sau 1 chu kỳ clk nữa, quay lại S0 (A bắt đầu Xanh)

    end

endmodule