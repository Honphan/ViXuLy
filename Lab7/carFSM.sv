module carFSM (

	input logic clk,
	input logic reset,
	input logic left, right,
	output logic la, lb, lc, ra, rb, rc
	);

	typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5, S6, S7} statetype;
	statetype state, nextstate;
	
	always_ff @(posedge clk, posedge reset) begin
		if(reset) state <= S0;
		else state <= nextstate;
	end
	
	always_comb begin
		nextstate = state;
		case (state)
		S0: begin
			if(left == 1 & right == 0) nextstate = S1;
			else if(left == 0 & right == 1) nextstate = S4;
			else nextstate = S0;
		end
		S1: nextstate = S2;
		S2: nextstate = S3;
		S3: nextstate = S0;
		S4: nextstate = S5;
		S5: nextstate = S6;
		S6: nextstate = S0;
		endcase
	end
	
	always_comb begin
		case (state)
		S0: {la, lb, lc, ra, rb, rc} = 6'b000000;
		S1: {la, lb, lc, ra, rb, rc} = 6'b100000;
		S2: {la, lb, lc, ra, rb, rc} = 6'b110000;
		S3: {la, lb, lc, ra, rb, rc} = 6'b111000;
		S4: {la, lb, lc, ra, rb, rc} = 6'b000100;
		S5: {la, lb, lc, ra, rb, rc} = 6'b000110;
		S6: {la, lb, lc, ra, rb, rc} = 6'b000111;
		endcase
	end
endmodule