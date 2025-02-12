`timescale 1ns / 1ps

module sram 
#(  parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH =4 )
(  input clk,
    input we,
    input en,
    input [ADDR_WIDTH-1:0] addr ,
    input [DATA_WIDTH-1:0] din ,
    output reg [DATA_WIDTH-1:0] dout  );
    
    reg [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];
    
    always @(posedge clk) begin
        if(en) begin
            if(we) begin
                mem[addr] <= din;
            end
            else begin
                dout <= mem[addr];
                
            end
        end
    end
    
endmodule
