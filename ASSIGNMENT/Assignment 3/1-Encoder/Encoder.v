module Encoder(
  input [8]din,
  output reg [3]dout
);
  
  always @ (din) begin
    	
    case(din)
      
      8'b0000_0001 : dout = 3'b000 ;
      8'b0000_0010 : dout = 3'b001 ;
      8'b0000_0100 : dout = 3'b010 ;
      8'b0000_1000 : dout = 3'b011 ;
      8'b0001_0000 : dout = 3'b100 ;
      8'b0010_0000 : dout = 3'b101 ;
      8'b0100_0000 : dout = 3'b110 ;
      8'b1000_0000 : dout = 3'b111 ;
     
      
    endcase
    
  end
  
endmodule
