module FSM_ex5_tb();

    logic clk;
    logic reset;
    logic up;
    logic [2:0] out;

    FSM_ex5 dut (clk, reset, up, out);

    always begin  
		clk = ~clk;
		#5;
		end

    initial begin
        clk = 0;
        reset = 1;
        up = 1;
		  // đếm tiên	
        #20 reset = 0;
		  #50;
       
        // Chuyển sang đếm lùi
        #10 up = 0;
		  #50;
        
        // Reset lại hệ thống
        #10 reset = 1;
        #20 reset = 0;
    end

endmodule