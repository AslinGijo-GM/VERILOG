`timescale 1ns / 1ps

module dram_tb;
    parameter  WIDTH_DATA = 8 , WIDTH_ADDR = 4 ;

    reg clk;
    reg en;
    reg we;
    reg refresh;
    reg [WIDTH_DATA-1:0] din;
    reg [WIDTH_ADDR-1:0] addr;
    wire [WIDTH_DATA-1:0]dout;
    
    dram uut ( 
    .clk(clk),
    .en(en),
    .we(we),
    .refresh(refresh),
    .din(din),
    .addr(addr),
    .dout(dout)
    );
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        clk = 0; en = 0; we = 0; refresh = 0;
        din = 0; addr = 0;#10;
        
        en = 1; #5;
        we = 1;
        addr = 4'h0; din = 8'hA1; #10;
        addr = 4'h1; din = 8'hB2; #10;
        addr = 4'h2; din = 8'hC3; #10;
        addr = 4'h3; din = 8'hD4; #10;
         
        we = 0;
        addr = 4'h0; #10;
        addr = 4'h1; #10;
        addr = 4'h2; #10;
        addr = 4'h3; #10;
        
        refresh = 1;
        #100;
        
        refresh = 0;
        
        addr = 4'h0; #10;
        addr = 4'h1; #10;
        addr = 4'h2; #10;
        addr = 4'h3; #10;
        
         $finish;
               
    end

endmodule
