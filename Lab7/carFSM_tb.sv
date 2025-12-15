module carFSM_tb;

	logic clk;
	logic reset;
	logic left, right;
	logic la, lb, lc, ra, rb, rc;
	
	carFSM dut(clk, reset, left, right, la, lb, lc, ra, rb, rc);
	
	always begin
		clk = ~clk; #5;
	end
	
	initial begin
	
	reset = 1; left = 0; right = 0;
	
	#10 reset = 0;
	
	left = 0; right = 0; #10;
	
	left = 1; right = 0; #10;
	
	left = 1; right = 0; #10;
	
	left = 1; right = 0; #10;
	
	left = 1; right = 0; #10;
	
	left = 1; right = 0; #10;
	
	left = 0; right = 0; #10;
	
	left = 0; right = 1; #10;
	
	left = 0; right = 1; #10;
	
	left = 0; right = 1; #10;
	
	left = 0; right = 0; #10;
	
	left = 0; right = 0; #10;
	
	left = 0; right = 0; #10;
	end
endmodule