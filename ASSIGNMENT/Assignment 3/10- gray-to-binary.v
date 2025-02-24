module graytobin(
  input [7:0]gray,
  output [7:0]bin
);
  
  assign bin = gray ^ bin >>1;
  
endmodule
