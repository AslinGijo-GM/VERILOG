module alu(
  input a,b,
  input [1:0]sel,
  output reg [1:0]dout
);
  always @(*) begin
   
    case(sel)
    
  2'b00 : dout = a+b;
  2'b01 : dout = a-b;
  2'b10 : dout = a&b;
  2'b11 : dout = a|b;
    
    endcase
    
  end
    
endmodule
