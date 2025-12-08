module d_flipflop(
	input logic clk,
	input logic reset,
	input logic enable,
	input logic d,
	output logic q
);

	always_ff @(posedge clk) begin
	
		if(reset)
			q <= 1'b0;
		else if(enable)
			q <= d;
		else
			q <= q;
		
	end
endmodule