`timescale 1ns/1ps  

module counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;  

   
    counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    
    always #10 clk = ~clk;  

    
    initial begin
        
        clk = 0;
        reset = 1;  

        
        #30;  
        reset = 0;  
     
        
        #300;
        
        
        $finish;
    end

endmodule
