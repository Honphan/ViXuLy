module adder (

	input logic [1:0] a,
	input logic [1:0] b,
	input logic ci,
	output logic [1:0] sum
	
	);

	logic c1;
	logic c2;


	assign {sum[0], c1} = a[0] + b[0] + ci;

	assign {sum[1], c2} = a[1] + b[1] + c1;

endmodule