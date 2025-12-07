module decoder2to4_tb;
  logic [1:0] A;
  logic [3:0] B;
  
  decoder2to4  dut(A,B);
  
  
  initial begin
  
        A = 2'b00; #10;
        assert(B == 4'b0001) else $error("Test 1 failed");
		 
        A = 2'b01; #10;
        assert(B == 4'b0010) else $error("Test 2 failed");

        A = 2'b10; #10;
        assert(B == 4'b0100) else $error("Test 3 failed");

        A = 2'b11; #10;
        assert(B == 4'b1000) else $error("Test 4 failed");
  end

endmodule

 