module  comparator(
  input [3:0]a,b,
  output com,great,less
);
  
    
  assign com   = a==b;
  assign great = a>b ;
  assign less  = a<b ; 
  
  
endmodule
