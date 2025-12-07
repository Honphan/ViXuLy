module fulladder(
input logic a,
input logic b,
input logic Cin,
output logic Cout,
output logic S
);
  assign P = a ^ b;
  assign G = a & b;
  
  assign S = P ^ Cin;
  assign Cout = G | P & Cin;
  
endmodule