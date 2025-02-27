module walltree(
	
  input [1:0]a,b,
  output [3:0]product
);
  
  wire a1,a2,b1,b2;
  wire ac1,ac2,bc1,bc2;
  
  assign a1 = a[0]&b[0];
  assign a2 = a[0]&b[1];
  assign b1 = a[1]&b[0];
  assign b2 = a[1]&b[1];
  
  assign ac2 = a2 & b1 ;
  assign bc1 = b2 & ac2;
  
  assign product = { a1 ,a2^b1 ,b2^ac2, bc1 };
  
endmodule
