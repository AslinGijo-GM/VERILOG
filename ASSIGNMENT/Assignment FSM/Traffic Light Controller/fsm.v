`timescale 1ns / 1ps

module TrafficLightController #( parameter
        NSred = 0,
        WEred = 1,
        NSyellow = 2,
        WEyellow = 3,
        NSgreen = 4,
        WEgreen = 5
    )(
    input clk,
    input reset,
    input emergency,
    input  pedestrian,
    input  NSdensity,
    input  WEdensity,
    output reg redNS,
    output reg redWE,
    output reg yellowNS,
    output reg yellowWE,
    output reg greenNS,
    output reg greenWE
    );
    
    reg [2:0] next,state;
    reg [31:0] timer;
    always @ ( posedge clk ) begin
        if(reset) begin
          state <= NSred;
          timer <= 0;
        end
        else if (timer == 0) begin
            state <= next;
            timer <= ( NSdensity || WEdensity ) ? 10 : 5; 
        end
        else begin
            timer <= timer - 1;
        end
    end
    
    always @(*) begin
    if(emergency) begin
         redNS =  1; redWE =  1;
         yellowNS =  0; yellowWE =  0;
         greenNS =  0 ;  greenWE =  0 ;
         next = NSred;
    end
    else begin
        case(state)
            NSred   : begin 
                        redNS = 1; redWE =  0;
                        yellowNS = 0;yellowWE = 0;
                        greenNS = 0 ; 
                            if(pedestrian == 0) begin
                                greenWE = 1;
                            end
                        next = NSyellow ;
                    end
            WEred   : begin 
                        redNS =  0; redWE = 1;
                        yellowNS = 0;yellowWE =  0;
                        greenWE =  0 ; 
                            if(pedestrian == 0) begin
                                greenNS = 1;
                            end                        
                        next = WEyellow ;    
                      end
            NSyellow: begin 
                        redNS =  0; redWE =  0;
                        yellowNS =  1; yellowWE =  1;
                         greenNS =  0 ;  greenWE =  0 ; 
                        next = NSgreen ;
                      end
            WEyellow: begin 
                        redNS =  0; redWE =  0;
                        yellowNS = 1; yellowWE = 1;
                         greenNS =   0 ;  greenWE =   0 ; 
                        next = WEgreen ;
                      end
            NSgreen : begin
                        redNS =  0; redWE = 1;
                        yellowNS =  0;yellowWE =  0;
                        greenWE =  0;
                            if(pedestrian == 0) begin
                                greenNS = 1;
                            end
                        next = NSred ;
                      end
            WEgreen : begin 
                       redNS =  1; redWE =  0;
                       yellowNS =  0;yellowWE =  0; 
                       greenNS =  0 ;
                            if(pedestrian == 0) begin
                                greenWE = 1;
                            end
                        next = WEred ;
                      end
        
        endcase
        
        end
    end
    

    
endmodule
