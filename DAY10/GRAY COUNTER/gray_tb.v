`timescale 1ns / 1ps

module gray_tb;
   
    reg clk;
    reg reset;
    wire [3:0]dout;
    
    gray uut (
    .clk(clk),
    .reset(reset),
    .dout(dout)
    );
    
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin 
        reset =1; #10;
        reset=0;#150;
        $finish;
        
    end
    
endmodule
