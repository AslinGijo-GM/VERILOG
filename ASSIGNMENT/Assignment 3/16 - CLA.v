module CLA (
  input [3:0]a,b,
  input cin,
  output [3:0]sum,
  output carry
);
  
  wire [3:0]p,g,c;
  
  assign p = a^b;
  assign g = a&b;
  
  assign c[0]  = cin;
  assign c[1]  = g[0] | ( p[0] & c[0] );
  assign c[2]  = g[1] | ( p[1] & c[1] );
  assign c[3]  = g[2] | ( p[2] & c[2] );
  assign carry = g[3] | ( p[3] & c[3] );
  
  assign sum = p^c;
  
endmodule 
