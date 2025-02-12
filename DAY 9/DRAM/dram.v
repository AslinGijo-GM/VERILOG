`timescale 1ns / 1ps

module dram
    #(parameter WIDTH_DATA = 8,
    WIDTH_ADDR = 4)
    (
    input clk,
    input en,
    input we,
    input refresh,
    input [WIDTH_DATA-1:0] din,
    input [WIDTH_ADDR-1:0] addr,
    output reg [WIDTH_DATA-1:0]dout  
    );
    
    reg [WIDTH_DATA-1:0] mem [(2**WIDTH_ADDR)-1:0];
    reg [WIDTH_ADDR-1:0] refresh_data = 0 ;
    
    always @(posedge clk) begin
        if(en) begin
            if(we) begin
                mem[addr]<= din;
            end
            else begin
                dout <= mem[addr];
            end
        end
         if(refresh) begin
        mem[refresh_data] <= mem[refresh_data];
        refresh_data <= (refresh_data == (2**WIDTH_ADDR - 1)) ? 0 : refresh_data + 1;

        end
    
    end
    
   
endmodule
