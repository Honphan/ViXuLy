module traffic_fsm_tb;

	logic clk;
	logic reset;
	logic ta;
	logic tb;
	logic [1:0] la;
	logic [1:0] lb;
	
	traffic_fsm dut (clk, reset, ta, tb, la, lb);
	
	always begin
		clk = ~clk; #5;
	end
	
	initial begin
	
	clk = 0; reset = 1;
	ta = 0; tb = 0;
	#10 reset = 0;
	
	ta = 0; #10;
	
	ta = 1; #10;
	
	#10;
	
	tb = 0; #10;
	
	tb = 1; #10;
	
	#10;
	
	end
endmodule