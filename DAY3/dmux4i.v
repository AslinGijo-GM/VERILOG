`timescale 1ns / 1ps
module dmux4i(
input d,
input [1:0]sel,
output reg y0,y1,y2,y3
);

always @(sel) begin
case (sel)
2'b00 : {y0,y1,y2,y3} = {3'b0,d};
2'b01 : {y0,y1,y2,y3} = {2'b0,d,1'b0 };
2'b10 : {y0,y1,y2,y3} = {1'b0,d,2'b0};
2'b11 : {y0,y1,y2,y3} = {d,3'b0};
endcase
end
endmodule
