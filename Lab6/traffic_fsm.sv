module traffic_fsm (
	input  logic clk,
	input  logic reset,
	input  logic ta,
	input  logic tb,
	output logic [1:0] la,
	output logic [1:0] lb
	
	);

	typedef enum logic [1:0] {S0, S1, S2, S3} statetype;
	statetype state, nextstate;

	always_ff @(posedge clk, posedge reset) begin
		if (reset) state <= S0;
		else state <= nextstate;
	end

	always_comb begin
		nextstate = state;

		case (state)
			S0: begin
				if (ta == 0) nextstate = S1;
			end

			S1: nextstate = S2;

			S2: begin
				if (tb == 0) nextstate = S3;
			end

			S3: nextstate = S0;
		endcase
	end

	always_comb begin
		la = 2'b00;
		lb = 2'b00;

		case (state)
		S0: begin la = 2'b00; lb = 2'b10;
		end

		S1: begin la = 2'b01; lb = 2'b10;
		end

		S2: begin la = 2'b10; lb = 2'b00;
		end

		S3: begin la = 2'b10; lb = 2'b01;
		end
		endcase
	end
	
endmodule