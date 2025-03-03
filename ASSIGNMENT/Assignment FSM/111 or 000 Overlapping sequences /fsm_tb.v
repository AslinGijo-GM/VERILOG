`timescale 1ns / 1ps

module fsm_tb;
    parameter s0 = 3'b00,
                       s1 = 3'b01,
                       s2 = 3'b10,
                       s3 = 3'b11,
                       s4 = 3'b100,
                       s5 = 3'b101,
                       s6 = 3'b110;
                       
    reg in;
    reg reset;
    reg clk;
    wire out ;
    
    fsm uut (
        .in(in),
        .clk(clk),
        .reset(reset),
        .out(out)
    );       
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end  
  
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
    
    initial begin
        
        reset = 1;#10;
        reset = 0;
        in = 1;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        in = 1;#10;
        in = 0;#10;
        in = 0;#10;
        in = 0;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        in = 0;#10;
        in = 1;#10;
        $finish;
        
        
        
    end      

endmodule
