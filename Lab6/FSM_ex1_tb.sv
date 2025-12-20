module FSM_ex1_tb ();
    logic clk, reset, a;
    logic y;
    
    FSM_ex1 dut (clk, reset, a, y);
	 
    always begin
		clk = ~clk;
		#5;
	  end

    initial begin
        clk = 0; reset = 1; a = 0;
        #10 reset = 0;      
        #10 a = 0;          // Ở S0, a=0 sẽ sang S1
        #10 a = 1;          // Ở S1, a=1 sẽ sang S2 (Lúc này y = 1)
        #10 a = 1;          // Ở S2, a=1 sẽ về S0 (Lúc này y = 0)
        

    end
endmodule