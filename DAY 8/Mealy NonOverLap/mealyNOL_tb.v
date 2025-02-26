`timescale 1ns / 1ps

module mealyNOL_tb;
    reg in ;
    reg clk;
    reg reset;
    wire out;
    
    mealyNOL uut(
    .in(in),
    .clk(clk),
    .reset(reset),
    .out(out)
    );
    
    initial begin
        clk=0;
        forever #5 clk =~clk;    
    end
    
    initial begin
        
        reset = 1;#10;
        reset = 0;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 0;#10;
        in = 1;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        in = 1;#10;
        $finish;
        
    
    end

endmodule
