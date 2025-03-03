`timescale 1ns / 1ps

module fsm_tb;
    parameter s0 = 0,
              s1 = 1,
              s2 = 2,
              s3 = 3;
   reg clk;
   reg reset;
   reg in;
   wire out;
   
   fsm uut(
   .clk(clk),
   .reset(reset),
   .in(in),
   .out(out)
   );
   
   initial begin
        clk = 0;
        forever #5 clk = ~clk;
   end
   
   initial begin
        reset = 1;#10;
        reset = 0; in = 0 ;#10;
        in = 1 ;#10;
        in = 0 ;#10;
        in = 0 ;#10;
        in = 0 ;#10;
        in = 1 ;#10;
        $finish;
        
   end  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
    
endmodule
