`timescale 1ns / 1ps


module mux2i_tb;

reg [1:0]d;
reg sel;
wire y;

mux2i uut(
.sel(sel),
.d(d),
.y(y)
);

initial begin
         d = 2'b10; sel = 0; #10;  
        d = 2'b10; sel = 1; #10;  
        d = 2'b01; sel = 0; #10; 
        d = 2'b01; sel = 1; #10;  
 $finish;


end
endmodule
