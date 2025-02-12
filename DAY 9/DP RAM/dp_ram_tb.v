`timescale 1ns / 1ps

module dp_ram_tb;
    
    parameter WIDTH=8,ADDR=4;
    
    reg clk;
    reg we_a;
    reg [WIDTH-1:0] din_a;
    reg [ADDR-1:0] addr_a;
    wire [WIDTH-1:0] dout_a;
    
    reg we_b;
    reg [WIDTH-1:0] din_b;
    reg [ADDR-1:0] addr_b;
    wire [WIDTH-1:0] dout_b;
    
    dp_ram uut( 
    .clk(clk),
    .we_a(we_a),
    .din_a(din_a),
    .addr_a(addr_a),
    .dout_a(dout_a),
    .we_b(we_b),
    .din_b(din_b),
    .addr_b(addr_b),
    .dout_b(dout_b)
    );
    
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin
        
         we_a = 0; addr_a = 0; din_a = 0;
         we_b = 0; addr_b = 0; din_b = 0;#10;
         
         we_a = 1; addr_a = 4'h1; din_a = 8'h1; 
         we_b = 1; addr_b = 4'h2; din_b = 8'h2; #10 ;  
         we_a = 1; addr_a = 4'h3; din_a = 8'h3; 
         we_b = 1; addr_b = 4'h4; din_b = 8'h4; #10;
        
         we_a = 0; we_b = 0;   
        
        #10 addr_a = 4'h1;  
        #10 addr_b = 4'h2;  
        #10 addr_a = 4'h3;  
        #10 addr_b = 4'h4;
        
        #20;$finish;
    end
    
endmodule
