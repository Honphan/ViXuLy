module fsm_ex2_tb;
	
	logic clk;
	logic reset;
	logic a;
	logic y;
	
	fsm_ex2 dut (clk, reset, a, y);
	
	always begin
		clk = ~clk; #5;
	end
	
	initial begin
	
	clk = 0;
	reset = 1;
	a = 0;
	
	#10 reset = 0;
	
	a = 0; #10;
	
	a = 1; #10;
	
	a = 0; #10;
	
	a = 1; #10;
	
	end
endmodule