module alu(

	input logic [1:0] a,
	input logic [1:0] b,
	input logic ci, 
	input logic [2:0] op, 
	output logic [1:0] y, 
	output logic equal
	
	);

	logic [1:0] sum;
	logic [1:0] diff;

	adder add (
	.a(a),
	.b(b),
	.ci(ci),
	.sum(sum)
	);

	substract sub (
	.a(a),
	.b(b),
	.bi(ci),
	.diff(diff)
	);

	always_comb begin
	
		equal = 0;
		case(op)
		3'b000: begin
			y = sum;
		end
	
		3'b001: begin
			y = diff;
		end
		
		3'b010: begin
			y = a & b;
		end
		
		3'b011: begin
			y = a | b;
		end
		
		3'b100: begin
			y = a ^ b;
		end
		
		3'b101: begin
			y = 2'b00;
			equal = (a == b);
		end
		
		default: begin
			y = 2'b00;
			equal = 0;
		end
		
		endcase
	end
endmodule