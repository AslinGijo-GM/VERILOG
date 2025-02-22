module Encoder_tb;
  reg [8]din;
  wire [3]dout;
  
  Encoder uut(
    .din(din),
    .dout(dout)
  );
  
  initial begin
    
    $monitor("dout = %b " , dout);
    
      din = 8'b0000_0001 ; #10 ;
      din = 8'b0000_0010 ; #10 ;
      din = 8'b0000_0100 ; #10 ;
      din = 8'b0000_1000 ; #10 ;
      din = 8'b0001_0000 ; #10 ;
      din = 8'b0010_0000 ; #10 ;
      din = 8'b0100_0000 ; #10 ;
      din = 8'b1000_0000 ; #10 ;
        $finish;
    
  end
  
endmodule
