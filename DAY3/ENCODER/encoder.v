`timescale 1ns / 1ps
module encoder(
input [7:0]y,
output [2:0]d
);
  assign d[0] =y[1]|y[3]|y[5]|y[7];
  assign d[1] =y[2]|y[3]|y[6]|y[7];
  assign d[2] =y[4]|y[5]|y[6]|y[7];

endmodule
