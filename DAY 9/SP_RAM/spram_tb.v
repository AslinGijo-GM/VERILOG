`timescale 1ns / 1ps

module sp_ram_tb;
    
    parameter WIDTH=8,ADDR=4;

    reg clk;
    reg we;
    reg [WIDTH-1:0] din;
    reg [ADDR-1:0] addr;
    wire [WIDTH-1:0] dout;
    
    sp_ram uut (
    .clk(clk),
    .we(we),
    .din(din),
    .addr(addr),
    .dout(dout)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        
        we=1;#10;
        din=8'h1;addr=4'h8;#10;
        din=8'h2;addr=4'h7;#10;
        din=8'h3;addr=4'h6;#10;
        din=8'h4;addr=4'h5;#10;
        din=8'h5;addr=4'h4;#10;
        din=8'h6;addr=4'h3;#20;
        
        we=0;#10;
        addr=4'h8;#10;
        addr=4'h7;#10;
        addr=4'h6;#10;
        addr=4'h5;#10;
        addr=4'h4;#10;
        
        $finish;
 
    end

endmodule
