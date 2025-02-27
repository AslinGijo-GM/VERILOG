module barrelsft(
  input [4]din,
  input sft,
  output [4]doutleft,
  output [4]doutright
);
  
  assign doutleft  = din >> sft ;
  assign doutright = din << sft ;
  
endmodule
