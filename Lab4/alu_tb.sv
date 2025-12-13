module alu_tb;

	logic [1:0] a;
	logic [1:0] b;
	logic ci;
	logic [2:0] op;
	logic [1:0] y;
	logic equal;

	alu dut (a, b, ci, op, y, equal);

	initial begin

	a = 2'b00; b = 2'b00; ci = 0; op = 3'b000; #10;
			  
	a = 2'b01; b = 2'b01; ci = 0; op = 3'b000; #10;
	
	a = 2'b10; b = 2'b01; ci = 0; op = 3'b001; #10;
			  
	a = 2'b11; b = 2'b01; ci = 0; op = 3'b010; #10;
			  
	a = 2'b10; b = 2'b11; ci = 0; op = 3'b011; #10;
			  
	a = 2'b11; b = 2'b00; ci = 0; op = 3'b100; #10;
			  
	a = 2'b11; b = 2'b11; ci = 0; op = 3'b101; #10;
        
	end
endmodule