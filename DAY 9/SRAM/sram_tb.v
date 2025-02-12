`timescale 1ns / 1ps

module sram_tb ;

    parameter DATA_WIDTH = 8,ADDR_WIDTH = 4;
     
    reg clk;
    reg en;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] din;
    wire [DATA_WIDTH-1:0] dout;
    
    sram uut (
    .clk(clk),
    .en(en),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
    );
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        
        clk = 0;
        we = 0;
        en = 0;
        addr = 0;
        din = 0; #10;
        
        en = 1;
        we = 1;
        addr = 4'h3;  
        din = 8'hA5;  
        #10;
        
        addr = 4'h7;  
        din = 8'h3C;  
        #10;
        
       
        we = 0;
        addr = 4'h3;  
        #10;
        
        addr = 4'h7;  
        #10;
        
        
        en = 0;
        addr = 4'h2;
        #20;
       
       
        $finish;
        
        
        
        
    end
    
endmodule
