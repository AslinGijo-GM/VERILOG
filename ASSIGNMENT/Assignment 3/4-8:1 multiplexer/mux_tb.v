module mux_tb;
  reg [7:0]i;
  reg [2:0]sel;
  wire y;
  
  mux8 uut(
    .i(i),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    
    $monitor(" y = %b " ,y);
    
    i = 8'b1010_1010;
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
