module FSM_ex5(
    input logic clk,
    input logic reset,
    input logic up,       
    output logic [2:0] out 
);

    typedef enum logic [2:0] {
        S0 = 3'b000, 
        S1 = 3'b001, 
        S2 = 3'b011, 
        S3 = 3'b010, 
        S4 = 3'b110, 
        S5 = 3'b111, 
        S6 = 3'b101, 
        S7 = 3'b100
    } statetype;

    statetype state, nextstate;
	 
//	 logic clk_1Mhz;
//	 clk_divider dut (clk, clk_1Mhz);
	 

    always_ff @(posedge clk, posedge reset)
        if (reset) state <= S0;
        else state <= nextstate;

    always_comb
        case (state)
            S0: nextstate = (up) ? S1 : S7;
            S1: nextstate = (up) ? S2 : S0;
            S2: nextstate = (up) ? S3 : S1;
            S3: nextstate = (up) ? S4 : S2;
            S4: nextstate = (up) ? S5 : S3;
            S5: nextstate = (up) ? S6 : S4;
            S6: nextstate = (up) ? S7 : S5;
            S7: nextstate = (up) ? S0 : S6;
            default: nextstate = S0;
        endcase

    assign out = state; 

endmodule