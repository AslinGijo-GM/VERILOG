module mux(
  input i0,i1,
  input sel,
  output y
);
  
  assign y = sel ? i1 :i0 ;
  
endmodule
