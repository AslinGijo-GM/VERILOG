module Decoder_tb;
  
  reg [3]din;
  wire [8]dout;
  
  Decoder uut(
    .din(din),
    .dout(dout)
  );
  
  initial begin
    
    $monitor( " dout = %b " ,dout);
    
      din = 3'b000 ;#10;
      din = 3'b001 ;#10;
      din = 3'b010 ;#10;
      din = 3'b011 ;#10;
      din = 3'b100 ;#10;
      din = 3'b101 ;#10;
      din = 3'b110 ;#10;
      din = 3'b111 ;#10;
      $finish;
     
  end
  
endmodule
