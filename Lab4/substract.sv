module substract(

	input logic [1:0] a,
	input logic [1:0] b,
	input logic bi,
	output logic [1:0] diff
	
	);

	logic b1;
	logic b2;


	assign {diff[0], b1} = a[0] - b[0] - bi;

	assign {diff[1], b2} = a[1] - b[1] - b1;

endmodule