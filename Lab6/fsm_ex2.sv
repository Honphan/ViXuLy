module fsm_ex2 (
	input logic clk,
	input logic reset,
	input logic a,
	output logic y
	);
	
	typedef enum logic {S0, S1}statetype;
	statetype state, nextstate;
	
	always_ff @(posedge clk)
	if(reset) state <= S0;
	else state <= nextstate;
	
	always_comb begin
		nextstate = state;
		y = 0;
		case (state)
		  S0: begin
		  nextstate = (a == 0) ? S1 : S0;
		  y = 0;
		  end
		  
		  S1: begin
		  nextstate = (a == 0) ? S1 : S0;
		  y = (a == 0) ? 0 : 1;
		  end

		endcase
	end
endmodule