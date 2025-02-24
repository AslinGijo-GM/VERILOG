module Encoder(
  input [3:0]din,
  output reg [1:0]dout
);
  
  always @ (*) begin
    	
    casex(din)
      
      4'b1??? : dout = 2'b00 ;
      4'b01?? : dout = 2'b01 ;
      4'b001? : dout = 2'b10 ;
      4'b0001 : dout = 2'b11 ;
     
      
    endcase
    
  end
  
endmodule
