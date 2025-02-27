module RCA (
  input [3:0]A,B,
  input cin,
  output [3:0]sum,
  output carry
);
  
  wire w1,w2,w3;
  
  fulladder no1(.a(A[0]),.b(B[0]),.c(cin),.sum(sum[0]), .carry(w1) );
  fulladder no2(.a(A[1]),.b(B[1]),.c(w1),.sum(sum[1]), .carry(w2) );
  fulladder no3(.a(A[2]),.b(B[2]),.c(w2),.sum(sum[2]), .carry(w3) );
  fulladder no4(.a(A[3]),.b(B[3]),.c(w3),.sum(sum[3]), .carry(carry) );
  
  
endmodule

module fulladder(
input a,b,c,
  output sum,carry
);
  
  assign sum = a^b^c;
  assign carry = (a&b) | (b&c) | (a&c) ;
  
  
endmodule
