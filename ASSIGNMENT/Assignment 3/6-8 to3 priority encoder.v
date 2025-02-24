module Encoder(
  input [7:0]din,
  output reg [2:0]dout
);
  
  always @ (din) begin
    	
    casex(din)
      
      8'b1???_???? : dout = 3'b000 ;
      8'b01??_???? : dout = 3'b001 ;
      8'b001?_???? : dout = 3'b010 ;
      8'b0001_???? : dout = 3'b011 ;
      8'b0000_1??? : dout = 3'b100 ;
      8'b0000_01?? : dout = 3'b101 ;
      8'b0000_001? : dout = 3'b110 ;
      8'b0000_0001 : dout = 3'b111 ;
     
      
    endcase
    
  end
  
endmodule
