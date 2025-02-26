`timescale 1ns / 1ps

module moore_tb;

    parameter s0 = 2'b00,
            s1 = 2'b01,
            s2 = 2'b10,
            s3 = 2'b11,
            s4 = 3'b100;
    reg in;
    reg clk;
    reg reset;
    wire out;
    
    mooreOL uut (
        .in(in),
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    initial begin
        clk =0 ;
        forever #5 clk =~clk;
    end
    
    initial begin
    
        reset = 1;#10;
        reset =0;
        in =1 ;#10;
        in =1 ;#10;
        in =1 ;#10;
        in =0 ;#10;
        in =1 ;#10;
        in =1 ;#10;
        in =0 ;#10;
        in =1 ;#10;
        in =0 ;#10;
        in =1 ;#10;
        in =1 ;#10;
        in =1 ;#10;
        in =0 ;#10;
        in =1 ;#10;
        in =1 ;#10;
        $finish;
        
        
    
    end
    
   
endmodule
