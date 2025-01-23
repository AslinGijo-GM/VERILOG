`timescale 1ns / 1ps

module halfadder(
input a,b,
output sum,carry
    );
    assign sum = a^b;
    assign carry =a&b;
      
endmodule

module fulladder(
input a,b,cin,
output sum,carry
);

wire sum1,carry1,carry2;

halfadder ha1(a,b,sum1,carry1);

halfadder ha2(sum1,cin,sum,carry2);

assign carry=carry1|carry2;

endmodule








