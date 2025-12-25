module vendingmachine_tb;

	logic clk;
	logic reset;
	logic coin1, coin2;
	logic dispense, busy;
	
	vendingmachine dut (clk, reset, coin1, coin2, dispense, busy);
	
	always begin
		clk = ~clk; #5;
	end
	
	initial begin
	clk = 0; reset = 0; coin1 = 0; coin2 = 0;
	
	#10; reset = 1; // Bắt đầu ở S0.
	// Nhận đầu vào 2 đồng 1 xu và 2 đồng 2 xu.
	#10; coin1 = 1; coin2 = 0;
	#10; coin1 = 1; coin2 = 0;
	#10; coin2 = 1; coin1 = 0;
	#10; coin2 = 1; coin1 = 0;
	end

endmodule