module evenNodd(
  input [8]din,
  output oddparity,
  output evenparity
);
  
  assign oddparity = ~(^din);
  assign evenparity = ^din;
  
  
endmodule
