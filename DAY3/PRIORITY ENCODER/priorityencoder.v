`timescale 1ns / 1ps
module encoder(
input [7:0]y,
output reg [2:0]d
);

always @(y)begin

casex(y)
 8'b10000000 : d = 3'b000;
 8'bx1000000 : d = 3'b001;
 8'bxx100000 : d = 3'b010;
 8'bxxx10000 : d = 3'b011;
 8'bxxxx1000 : d = 3'b100;
 8'bxxxxx100 : d = 3'b101;
 8'bxxxxxx10 : d = 3'b110;
 8'bxxxxxxx1 : d = 3'b111;
 
 endcase
end
endmodule
