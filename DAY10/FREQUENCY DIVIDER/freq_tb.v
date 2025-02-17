`timescale 1ns / 1ps


module freq_tb;
    reg clk;
    reg reset;
    wire clk_out;  
    
    freq_div uut(
    .clk(clk),
    .reset(reset),
    .clk_out(clk_out)
    );
    
    initial begin
        clk=0;
        forever #5clk=~clk;
    end    
   
    initial begin
    reset =1;#10;
    reset =0;#100;
    $finish;
    
    end
    
endmodule
