module sum(
  input a,
  input b,
  output c
);
  function sum;
    input a;
    input b;
  assign sum=a+b;
  
endfunction
  
  assign c = sum(a,b);
  
endmodule

