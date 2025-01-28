`timescale 1ns / 1ps

module norgate(
input a,b,
output c
    );
    
   // assign c = ~(a|b);
    nor(c,a,b);
    
endmodule
