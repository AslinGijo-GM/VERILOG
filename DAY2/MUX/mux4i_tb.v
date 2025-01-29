`timescale 1ns / 1ps

module mux4i_tb;
reg [1:0]sel;
reg [3:0]d;;
wire y;

mux4i uut(
.sel(sel),
.d(d),
.y(y)
);

initial begin 
  d=4'b1010; sel=2'b00;#10;
  d=4'b1010; sel=2'b01;#10;
  d=4'b1010; sel=2'b10;#10;
  d=4'b1010; sel=2'b11;#10;
  $finish;


end
endmodule 



