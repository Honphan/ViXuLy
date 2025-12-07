module mux4to1_tb();

	logic d0, d1, d2, d3;
	logic s0, s1;
	logic y;
	
	mux4to1 dut (d0, d1, d2, d3, s0, s1, y);
	
	initial begin
	s1 = 0; s0 = 0; d3 = 0; d2 = 0; d1 = 0; d0 = 1; #10;
	
	s1 = 0; s0 = 1; d3 = 0; d2 = 0; d1 = 1; d0 = 0; #10;
	
	s1 = 1; s0 = 0; d3 = 0; d2 = 1; d1 = 0; d0 = 0; #10;
	
	s1 = 1; s0 = 1; d3 = 1; d2 = 0; d1 = 0; d0 = 0; #10;
	
	end
endmodule