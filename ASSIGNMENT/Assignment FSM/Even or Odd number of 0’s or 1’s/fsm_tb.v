`timescale 1ns / 1ps

module fsm_tb;

    reg clk;                                   
    reg reset;                                  
    reg din;                                    
    wire odd0odd1,odd0even1,even0odd1,even0even1;

    parameter   s0 = 0,
                s1 = 1,
                s2 = 2,
                s3 = 3;
    
    fsm uut(
    .clk(clk),
    .reset(reset),
    .din(din),
    .odd0odd1(odd0odd1),
    .odd0even1(odd0even1),
    .even0odd1(even0odd1),
    .even0even1(even0even1)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;#10;reset = 0;
        
        din = 1;#10;
        din = 0;#10;
        
        din = 1;#10;
        din = 0;#10;
        din = 1;#10;
     //   din = 0;#10;
        
        $finish;
    
    end
    
endmodule
