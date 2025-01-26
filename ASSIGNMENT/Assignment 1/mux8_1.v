`timescale 1ns / 1ps

module mux4(
input [3:0]d,
input [1:0]sel,
output reg y
);

always @(sel) begin
case (sel)
2'b00:y=d[0];
2'b01:y=d[1];
2'b10:y=d[2];
2'b11:y=d[3];
default: y = 1'b0;
endcase
end
endmodule

module mux8(
input [7:0]d,
input [2:0]sel,
output reg y
);
wire y1,y2 ;

mux4 mu1(
.d(d[3:0]),
.sel(sel[1:0]),
.y(y1)
);

mux4 mu2(
.d(d[7:4]),
.sel(sel[1:0]),
.y(y2)

);

always @(*) begin

case (sel[2])
1'b0 : y=y1;
1'b1 : y =y2;
endcase

end
endmodule
