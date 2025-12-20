module FSM_ex1 (
    input logic clk,
    input logic reset,
    input logic a,
    output logic y
);
					
	typedef enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S2 = 2'b10} statetype;
	statetype state, nextstate;

	always_ff@(posedge clk, posedge reset)
		if (reset) state <= S0;
		else state <= nextstate;

	always_comb 
        case(state)
        S0:
           if (a == 0) nextstate = S1;
           else nextstate = S0;
        S1:
           if (a == 0) nextstate = S1;
           else nextstate = S2;
        S2:
           if (a == 0) nextstate = S1;
           else nextstate = S0;
        default: nextstate = S0;
        endcase
	assign y = (state == S2);
    
endmodule 