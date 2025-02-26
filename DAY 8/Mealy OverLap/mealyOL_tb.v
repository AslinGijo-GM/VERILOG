`timescale 1ns / 1ps

module mealyOL_tb;
    reg clk;
    reg in;
    reg reset;
    wire out;
    
     parameter  s0=2'b00,
                s1=2'b01,
                s2=2'b10,
                s3=2'b11;
    
    mealyOL uut (
    .clk(clk),
    .in(in),
    .reset(reset),
    .out(out)
    );
    
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin
        
        reset = 1;#10;
        reset = 0;
        in = 1;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 0;#10;
        in = 0;#10;
        in = 1;#10;
        in = 0;#10;
        $finish;
           
    end
  
endmodule
