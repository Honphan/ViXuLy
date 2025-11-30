module mux2to1_tb();
  logic a, b, s;
  logic y;

  mux2to1 dut(a,b,s,y);
 
  initial begin
        a = 0; b = 0; s = 0; #10;
        assert (y == 0) else $error("test 1 error");

        a = 0; b = 1; s = 0; #10;
        assert (y == 0) else $error("test 2 error");

        a = 0; b = 0; s = 1; #10;
        assert (y == 0) else $error("test 3 error");

        a = 0; b = 1; s = 1; #10;
        assert (y == 1) else $error("test 4 error");

    end
endmodule 