`timescale 1ns / 1ps

module nandgate(
input a,b,
output c
    );
    
    assign c = ~(a&b);
   //  nand(c,a,b);
    
endmodule
