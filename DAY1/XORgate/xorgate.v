`timescale 1ns / 1ps

module xorgate(
input a,b,
output c
    );
    
    assign c = a^b;
 //   xor(c,a,b);
    
endmodule
