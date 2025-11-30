module multiplexer_gate_4_1_tb();

	logic d0, d1, d2, d3;
	logic s0, s1;
	logic y;
	
	multiplexer_gate_4_1 utt (
	d0, d1, d2, d3, s0, s1, y
	);
	
	initial begin
	
	s1 = 0; s0 = 0; d3 = 0; d2 = 0; d1 = 0; d0 = 1; #10;
	assert (y == d0) else $error("s1 = 0, s0 = 0, d3 = 0, d2 = 0, d1 = 0, d0 = 1 failed");
	
	s1 = 0; s0 = 1; d3 = 0; d2 = 0; d1 = 1; d0 = 0; #10;
	assert (y == d1) else $error("s1 = 0, s0 = 0, d3 = 0, d2 = 0, d1 = 1, d0 = 0 failed");
	
	s1 = 1; s0 = 0; d3 = 0; d2 = 1; d1 = 0; d0 = 0; #10;
	assert (y == d2) else $error("s1 = 0, s0 = 0, d3 = 0, d2 = 1, d1 = 0, d0 = 0 failed");
	
	s1 = 1; s0 = 1; d3 = 1; d2 = 0; d1 = 0; d0 = 0; #10;
	assert (y == d3) else $error("s1 = 0, s0 = 0, d3 = 1, d2 = 0, d1 = 0, d0 = 0 failed");
	
	end
endmodule
	