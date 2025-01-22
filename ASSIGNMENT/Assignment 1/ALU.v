`timescale 1ns / 1ps

module ALU( a,b,s,f
    );
    input [3:0] a,b;
    input [2:0] s;
    output [3:0]f;
    
    reg[3:0] f;
    
    always @ (s or a or b)
    
    case (s)
    
    0:f=4'b0000;
    1:f=b-a;
    2:f=a-b;
    3:f=a+b;
    4:f=a^b;
    5:f=a|b;
    6:f=a&b;
    7:f=4'b1111;
    
    endcase
    
    
endmodule
