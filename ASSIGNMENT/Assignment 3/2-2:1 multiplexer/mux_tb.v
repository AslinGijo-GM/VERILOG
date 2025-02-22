module mux_tb;
  reg i0,i1;
  reg sel;
  wire y;
  
  mux uut (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    
    $monitor(" y = %b ",y);
    i0 = 0;i1 = 1;
    sel = 0 ; #10;
    sel = 1 ; #10;
    $finish;
    
  end
  
endmodule
