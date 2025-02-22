module Demux_tb;
  
  reg din;
  reg [2:0]sel;
  wire [7:0]dout;
  
  Demux uut(
    .din(din),
    .sel(sel),
    .dout(dout)
  );
  
  initial begin 
    
    $monitor(" dout = %b ",dout);
   		din=1;
      sel = 3'b000 ;#10;
      sel = 3'b001 ;#10;
      sel = 3'b010 ;#10;
      sel = 3'b011 ;#10;
      sel = 3'b100 ;#10;
      sel = 3'b101 ;#10;
      sel = 3'b110 ;#10;
      sel = 3'b111 ;#10;
    	$finish;
    
  end
  
endmodule
