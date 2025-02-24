module bintogray(
  input [7:0]bin,
  output [7:0]gray
);
  
  assign gray = { bin[7], bin[6:0]^bin[7:1] };
  
endmodule
