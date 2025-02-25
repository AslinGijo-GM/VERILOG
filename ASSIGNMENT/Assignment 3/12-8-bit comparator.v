module  comparator(
  input [3:0]a,b,
  output com,great,less
);
  
    
  assign com   = a==b;
  assign great = a>b ;
  assign less  = a<b ; 
  
  
endmodule

module comparator8(
  input [7:0]a,b,
  output com,great,less
);
  wire c1,c2,g1,g2,l1,l2;
  
  comparator com1(.a(a[3:0]),.b(b[3:0]),.com(c1),.great(g1),.less(l1) );
  comparator com2(.a(a[7:4]),.b(b[7:4]),.com(c2),.great(g2),.less(l2) );
  
  assign com  = c1&c2;
  assign great= g1&g2;
  assign less = l1&l2;
  
endmodule
