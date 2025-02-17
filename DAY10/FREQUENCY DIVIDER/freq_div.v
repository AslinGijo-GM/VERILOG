`timescale 1ns / 1ps

module freq_div(
    input clk,
    input reset,
    output reg clk_out
    );
    
    always @(posedge clk or posedge reset) begin
        if(reset) 
            clk_out = 0;
        else 
            clk_out = ~clk_out;
    end
endmodule
