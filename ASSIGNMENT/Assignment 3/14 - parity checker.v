module evenNodd(
  input [8]din,
  input parity_bit,
  output oddparity,
  output evenparity
);
  
  assign oddparity = ^{din,parity_bit};
  assign evenparity = ~(^{din,parity_bit});
  
  
endmodule
