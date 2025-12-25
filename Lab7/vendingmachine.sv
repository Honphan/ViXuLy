module vendingmachine (

	input logic clk,
	input logic reset,
	input logic coin1, coin2,
	output logic dispense, busy
	);
	
	typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5} statetype;
	statetype state, nextstate;
	
	always_ff @(posedge clk, negedge reset) begin
		if(!reset) state <= S0;
		else state <= nextstate;
	end
	
	always_comb begin
		nextstate = state;
		case (state)
		S0: begin
			if (coin1) nextstate = S1;
			else if (coin2) nextstate = S2;
		end
		S1: begin
			if (coin1) nextstate = S2;
			else if (coin2) nextstate = S3;
		end
		S2: begin
			if (coin1) nextstate = S3;
			else if (coin2) nextstate = S4;
		end
		S3: begin
			if (coin1) nextstate = S4;
			else if (coin2) nextstate = S5;
		end
		S4: nextstate = S5;
		S5: nextstate = S0;
		endcase
	end
	
	always_comb begin
		dispense = 1'b0;
		busy = 1'b1;
		case (state)
		S0: begin
			dispense = 1'b0;
			busy = 1'b0;
		end
		S5: begin
			dispense = 1'b1;
			busy = 1'b1;
		end
		endcase
	end
	
endmodule