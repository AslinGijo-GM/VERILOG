`timescale 1ns / 1ps

module clkk(
        output reg clk,
        output reg clk60
    );
    
    initial begin
        clk = 0;
      repeat(10) #10 clk = ~clk;
    end
    
    always @ ( posedge clk ) begin
    
        clk60 = clk;
        clk60 = #6 ~clk; 
        
    end
  	
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
    
    
    
endmodule
