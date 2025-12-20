module FSM_ex4 (
    input logic clk,
    input logic reset,
    input logic Ta,
    input logic Tb,
    output logic [1:0] La,
    output logic [1:0] Lb
);

    typedef enum logic [2:0] {
        S0 = 3'b000,
        S1 = 3'b001,
		  S2 = 3'b010,
        S3 = 3'b011,
        S4 = 3'b100,
        S5 = 3'b101
    } statetype;

    statetype state, nextstate;

    typedef enum logic [1:0] {
        GREEN = 2'b00,
        YELLOW = 2'b01,
        RED = 2'b10
    } colortype;
	 
	 //logic clk_1Mhz;
	 //clk_divider dut (clk, clk_1Mhz );

    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= S0;
        end else begin
            state <= nextstate;
        end
    end

    always_comb begin
        case (state)
            S0: begin
                if (Ta == 1'b0) 
							nextstate = S1;
                else            
							nextstate = S0;
            end
            
            S1: begin
                nextstate = S4;
            end

            S4: begin
                nextstate = S2;
            end
            
            S2: begin
                if (Tb == 1'b0) 
							nextstate = S3;
                else            
							nextstate = S2;
            end
            
            S3: begin
                nextstate = S5;
            end

            S5: begin
                nextstate = S0;
            end
            
            default: nextstate = S0;
        endcase
    end

    always_comb begin
        case (state)
            S0: begin
                La = GREEN;
                Lb = RED;
            end
            
            S1: begin
                La = YELLOW;
                Lb = RED;
            end

            S4: begin
                La = RED;
                Lb = RED;
            end
            
            S2: begin
                La = RED;
                Lb = GREEN;
            end
            
            S3: begin
                La = RED;
                Lb = YELLOW;
            end

            S5: begin
                La = RED;
                Lb = RED;
            end
            
            default: begin
                La = RED;
                Lb = RED;
            end
        endcase
    end
endmodule