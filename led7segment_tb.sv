module led7segment_tb;

    logic [3:0] num;
    logic [6:0] seg;
    logic dig;

    
    led7segment dut (num,seg,dig);

    initial begin

        // Test 0
        num = 4'd0; #5;
        assert(seg == 7'b1111110) else $error("Test 0 failed");
		  
        // Test 1
        num = 4'd1; #5;
        assert(seg == 7'b0110000) else $error("Test 1 failed");

        // Test 2
        num = 4'd2; #5;
        assert(seg == 7'b1101101) else $error("Test 2 failed");

        // Test số 3
        num = 4'd3; #5;
        assert(seg == 7'b1111001) else $error("Test 3 failed");

        // Test số 4
        num = 4'd4; #5;
        assert(seg == 7'b0110011) else $error("Test 4 failed");

        // Test 5
        num = 4'd5; #5;
        assert(seg == 7'b1011011) else $error("Test 5 failed");

        // Test 6
        num = 4'd6; #5;
        assert(seg == 7'b1011111) else $error("Test 6 failed");

        // Test 7
        num = 4'd7; #5;
        assert(seg == 7'b1110000) else $error("Test 7 failed");

        // Test 8
        num = 4'd8; #5;
        assert(seg == 7'b1111111) else $error("Test 8 failed");

        // Test 9
        num = 4'd9; #5;
        assert(seg == 7'b1110011) else $error("Test 9 failed");

       
    end

endmodule
