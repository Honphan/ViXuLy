module mux4to1 (
	input  logic d0, d1, d2, d3,
	input  logic s0, s1,
	output logic y
	);
	
	logic y0, y1;
	
	mux2to1 muxA(d0, d1, s0, y0);
	mux2to1 muxB(d2, d3, s0, y1);

	mux2to1 muxC(y0, y1, s1, y);

endmodule
