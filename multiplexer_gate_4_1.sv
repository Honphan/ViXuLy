module multiplexer_gate_4_1 (

	input logic d0,
	input logic d1,
	input logic d2,
	input logic d3,
	input logic s0,
	input logic s1,
	output logic y
	
);

assign y = 
				(s1 == 0 && s0 == 0) ? d0 :
				(s1 == 0 && s0 == 1) ? d1 :
				(s1 == 1 && s0 == 0) ? d2 :
				d3;
				
endmodule
