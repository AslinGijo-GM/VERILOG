`timescale 1ns / 1ps

module pulsegen_tb;
    reg clk;
    reg trigger;
    wire single_pulse;
    wire  multi_pulse;
    
    pulgen uut(
    .clk(clk),
    .trigger(trigger),
    .single_pulse(single_pulse),
    .multi_pulse(multi_pulse)
    );
    
    initial begin
        clk=0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #10;
        trigger=1;#100;
        trigger =0;#50;
        $finish;
    
    
    end
    
endmodule
