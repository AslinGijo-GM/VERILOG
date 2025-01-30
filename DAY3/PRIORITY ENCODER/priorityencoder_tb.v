`timescale 1ns / 1ps
module encoder_tb;
reg [7:0]y;
wire [2:0]d;


encoder uut(
.y(y),
.d(d)
);

initial begin
y= 8'b10000000 ;#10;
y= 8'bx1000000 ;#10;
y= 8'bxx100000 ;#10;
y= 8'b1xx10000 ;#10;
y= 8'bx0xx1000 ;#10;
y= 8'bx11xx100 ;#10;
y= 8'bx00xxx10 ;#10;
y= 8'b0x11xxx1 ;#10;
 


$finish;

end
endmodule
