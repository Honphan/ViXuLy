module fulladder_tb;
  
  logic a,b,Cin;
  logic Cout,s;
  
  fulladder dut(a,b,Cin,Cout,s);
  
  initial begin 
  
	 
	  // Test 1: 0 + 0 + 0 = s=0, Cout=0
        a=0; b=0; Cin=0; #5;
        assert (s==0 && Cout==0) else $error("Test 1 FAILED");
        // Test 2: 0 + 0 + 1 = s=1, Cout=0
        a=0; b=0; Cin=1; #5;
        assert (s==1 && Cout==0) else $error("Test 2 FAILED ");

        // Test 3: 0 + 1 + 0 = s=1, Cout=0
        a=0; b=1; Cin=0; #5;
        assert (s==1 && Cout==0) else $error("Test 3 FAILED");
        // Test 4: 0 + 1 + 1 = s=0, Cout=1
        a=0; b=1; Cin=1; #5;
        assert (s==0 && Cout==1) else $error("Test 4 FAILED");
  end
  
endmodule