`timescale 1ns / 1ps

module fsm_tb;
        reg clk;
        reg reset;
        reg A;
        wire outs0,outs1,outs2,outs3;
        
        parameter s0 = 0,
                  s1 = 1,
                  s2 = 2,
                  s3 = 3;
                  
  fsm uut (
    .clk(clk),
    .reset(reset),
    .A(A),
    .outs0(outs0),
    .outs1(outs1),
    .outs2(outs2),
    .outs3(outs3)
  );         
  
        initial begin
            clk=0;
            forever #5 clk = ~clk;
        end 
        
        initial begin 
            reset = 1 ;#10;reset = 0;
            A = 0;#10;
            A = 0;#10;
            A = 0;#10;
            A = 1;#10;
            A = 0;#10;
            A = 0;#10;
            A = 1;#10;
            A = 0;#10;
            #100;
            $finish;
            
        end 
  
  		initial begin
          $dumpfile("dump.vcd");
          $dumpvars;
          
        end
    
endmodule
