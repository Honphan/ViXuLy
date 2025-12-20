module clk_divider(input logic clk_in,
	                output logic clk_out);
		
		logic [23:0] counter  = 24'd0;
		always_ff @ (posedge clk_in) begin
			if (counter == 24'd6000000) begin
				counter <= 24'd0;
				clk_out <= ~clk_out;
			end
			else 
				counter <= counter + 1;
		end

endmodule