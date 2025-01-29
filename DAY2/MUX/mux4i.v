`timescale 1ns / 1ps


module mux4i(
input [1:0]sel,
input [3:0]d,
output reg y
);

always @(sel) begin
case(sel)
 2'b00 : y = d[0];
 2'b01 : y = d[1];
 2'b10 : y = d[2];
 2'b11 : y = d[3];
 default :y =4'b0000; 


endcase
end
endmodule
