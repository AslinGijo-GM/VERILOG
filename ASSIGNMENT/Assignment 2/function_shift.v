module rshift(
  input [7:0]din,
  output [7:0]dout
);
  
  assign dout = {din[7],din[7:0] };
  
endmodule
