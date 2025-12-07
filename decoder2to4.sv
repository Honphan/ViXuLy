module decoder2to4(
input logic [1:0] A,
output logic [3:0] B);
  
  always_comb
    case(A)
	   2'b00: B = 4'b0001;
		2'b01: B = 4'b0010;
		2'b10: B = 4'b0100;
		2'b11: B = 4'b1000;
	 
	 endcase

endmodule