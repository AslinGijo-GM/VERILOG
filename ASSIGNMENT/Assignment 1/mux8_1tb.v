`timescale 1ns / 1ps


module mux_tb;
reg [7:0]d;    
reg [2:0]sel;       
wire y;            
                   
mux8 uut (
.d(d),
.sel(sel),
.y(y)
);

initial begin 
    d = 8'b10101001; sel = 3'b000; #10;  
    d = 8'b10101001; sel = 3'b001; #10; 
    d = 8'b10101001; sel = 3'b010; #10; 
    d = 8'b10101001; sel = 3'b011; #10; 
    d = 8'b10101001; sel = 3'b100; #10; 
    d = 8'b10101001; sel = 3'b101; #10; 
    d = 8'b10101001; sel = 3'b110; #10; 
    d = 8'b10101001; sel = 3'b111; #10; 
 $finish;
end

endmodule
