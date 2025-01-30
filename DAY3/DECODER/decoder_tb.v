`timescale 1ns / 1ps
module decoder_tb;
wire [7:0]y;
reg [2:0]d;


decoder uut(
.y(y),
.d(d)
);

initial begin
 d=3'b000; #10;
 d=3'b001; #10;
 d=3'b010; #10;
 d=3'b011; #10;
 d=3'b100; #10;
 d=3'b101; #10;
 d=3'b110; #10;
 d=3'b111; #10;
 


$finish;

end
endmodule
