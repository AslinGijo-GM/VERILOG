`timescale 1ns / 1ps

module fifo_tb;
    
    parameter WIDTH = 8,ADDRESS = 8;
    
    reg clk;
    reg reset;
    reg r_en;
    reg w_en;         
    reg [WIDTH-1:0]din;
    wire [WIDTH-1:0]dout;
    wire full,empty;
    
    fifo uut(
    .clk(clk),
    .reset(reset),
    .r_en(r_en),
    .w_en(w_en),
    .din(din),
    .dout(dout),
    .full(full),
    .empty(empty)
    );
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 1;
        w_en = 0;
        r_en = 0;
        din = 0;#10;
        reset = 0;#10;
        
        w_en=1;
        din= 8'd7;#10;
        din= 8'd6;#10;
        din= 8'd5;#10;
        din= 8'd4;#10;
        din= 8'd3;#10;
        din= 8'd2;#10;
        din= 8'd1;#10;
        din= 8'd0;#10;
        din= 8'd1;#20;
        din= 8'd0;#10;
        
        
        
        w_en=0;r_en=1;#120;
        
        r_en=0;w_en=1;#10;
        din= 8'd0;#10;
        din= 8'd1;#10;
        din= 8'd2;#10;
        din= 8'd3;#10;
        din= 8'd4;#10;
        din= 8'd5;#10;
        din= 8'd6;#10;
       
       
        
       
        
        w_en=0;r_en=1;#100;
             $finish;
    end
    endmodule
