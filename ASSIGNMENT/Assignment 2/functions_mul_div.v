module md(

  input [3:0]a,
  input [3:0]b,
  output [5:0]c,
  output [5:0]d
);
  
  
  assign c=mul(a,b);
  
  assign d=div(a,b);
  
  
  
  
  function [5:0]mul;
    input [3:0]a;
    input [3:0]b;
    
    mul=a*b;
    
    
  endfunction
  
  function [5:0]div;
    input [3:0]a;
    input [3:0]b;
    
    div=a/b;
    
    
  endfunction
  
  
  
endmodule
