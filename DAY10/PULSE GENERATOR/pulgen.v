`timescale 1ns / 1ps

module pulgen(
    input clk,
    input trigger,
    output reg single_pulse,
    output reg  multi_pulse
    );
    
    always @(posedge clk or posedge trigger) begin
        
        if(trigger) begin
            single_pulse <= 1;
            multi_pulse <= ~multi_pulse;
        end
        else begin
            single_pulse <=0;
            multi_pulse  <=0;
        end
            
    end
    
endmodule
