`timescale 1ns / 1ps

module xnorgate(
input a,b,
output c
    );
    
    assign c = a^~b;
 //   xnor(c,a,b);
    
endmodule
