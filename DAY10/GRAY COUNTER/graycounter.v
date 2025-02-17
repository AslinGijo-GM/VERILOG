`timescale 1ns / 1ps

module gray(
    input clk,
    input reset,
    output reg [3:0]dout
    );
    
    reg [3:0]mem =0;
    
    always @(posedge clk) begin
           if(reset) begin
                mem=0;
           end
           else begin
                mem = mem+1;
           end    
           
           dout= (mem ^ (mem>>1));
    end
    
endmodule
