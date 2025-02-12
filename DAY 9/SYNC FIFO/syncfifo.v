`timescale 1ns / 1ps

module fifo
#(parameter WIDTH = 8,ADDRESS = 8 )
(
    input clk,
    input reset,
    input r_en,
    input w_en,
    input [WIDTH-1:0]din,
    output reg [WIDTH-1:0]dout,
    output full,empty
    );
    
    reg [WIDTH-1:0] mem [ADDRESS-1:0];
    reg [$clog2(ADDRESS)-1:0]r_ptr,w_ptr;
    
    
    always @(posedge clk) begin
        if(reset) begin
            r_ptr <= 0;
            w_ptr <= 0;
            dout <= 0; 
        end
    end
    
    always @(posedge clk) begin
        if(w_en & ~full) begin
            mem[w_ptr] <=din;
            w_ptr <= w_ptr + 1;
        end
    end
    
    always @(posedge clk) begin
        if(r_en & ~empty) begin
            dout  <=mem[r_ptr];
            r_ptr <= r_ptr + 1;
        end
    end
    
    assign full = ((w_ptr + 1) % ADDRESS) == r_ptr;
    assign empty = ( w_ptr  == r_ptr );
    
    
    
endmodule
