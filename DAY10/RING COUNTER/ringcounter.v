`timescale 1ns / 1ps

module ringcounter(
    input [3:0]din,
    input clk,
    input reset,
    output reg [3:0]dout
    );
    
        reg [3:0]mem;
        
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            mem <=din;
        end
        else begin
            mem <= { mem[2:0],mem[3] };
        end
        dout = mem;
    end
    
endmodule
