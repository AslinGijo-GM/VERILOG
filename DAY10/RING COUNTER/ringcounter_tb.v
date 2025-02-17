`timescale 1ns / 1ps

module ringcounter_tb;
    reg [3:0]din;
    reg clk;
    reg reset;
    wire [3:0]dout;
    
    ringcounter uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .dout(dout)
    );
    
    initial begin
        clk=0;
        forever #5clk=~clk;
    end
    
    initial begin
        
        reset = 1;din=4'b1100;#10;
        reset =0 ;#100;
        $finish;
        
    end
      
endmodule
