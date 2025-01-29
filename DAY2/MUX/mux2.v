`timescale 1ns / 1ps



module mux2i(
input sel,
input [1:0]d,
output y
);

assign y = sel?  d[1] :  d[0] ;

endmodule
