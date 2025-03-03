`timescale 1ns / 1ps

module TrafficLightController_tb;
    parameter
        NSred = 0,
        WEred = 1,
        NSyellow = 2,
        WEyellow = 3,
        NSgreen = 4,
        WEgreen = 5;
        
    reg clk;
    reg reset;
    reg emergency;
    reg  pedestrian;
    reg  NSdensity;
    reg  WEdensity;
    wire redNS;
    wire redWE;
    wire yellowNS;
    wire yellowWE;
    wire greenNS;
    wire greenWE;
    
    TrafficLightController uut (
    .clk(clk),
    .reset(reset),
    .emergency(emergency),
    .pedestrian(pedestrian),
    .NSdensity(NSdensity),
    .WEdensity(WEdensity),
    .redNS(redNS),
    .redWE(redWE),
    .yellowNS(yellowNS),
    .yellowWE(yellowWE),
    .greenNS(greenNS),
    .greenWE(greenWE)
    );
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    initial begin
        reset = 1;
        emergency = 0;
        pedestrian = 0;
        NSdensity = 0;
        WEdensity = 0;

        
        #20;
        reset = 0;
        
        
        #500;
        NSdensity = 1;  
        WEdensity = 0;
        
        #50;
        NSdensity = 0;
        WEdensity = 1;  
        
        #50;
        WEdensity = 0;
        pedestrian = 1; 
        
        #50;
        pedestrian = 0;
       
        #50;
        emergency = 1;
        
        #50;
        emergency = 0;
        
        #100;
        $finish;
    end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule
