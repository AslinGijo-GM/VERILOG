`timescale 1ns / 1ps
module encoder_tb;
reg [7:0]y;
wire [2:0]d;


encoder uut(
.y(y),
.d(d)
);

initial begin
 y=8'b01010101;#10;
 y=8'b00110010;#10;
 y=8'b00001010;#10;
 y=8'b10001010;#10;
 


$finish;

end
endmodule
