`timescale 1ns / 1ps

module fsm #(parameter s0 = 3'b00,
                       s1 = 3'b01,
                       s2 = 3'b10,
                       s3 = 3'b11,
                       s4 = 3'b100,
                       s5 = 3'b101,
                       s6 = 3'b110)(
    input in,
    input reset,
    input clk,
    output reg out
    );
    
    reg [2:0]next,state;
    
    always @(posedge clk or posedge reset) begin
        if(reset) 
            state <= s0;
        else 
            state <= next;    
    end
    
    always @(*) begin
        
        case(state)
            
            s0 : next = in ? s2 : s1 ;
            s1 : next = in ? s2 : s3 ;
            s2 : next = in ? s4 : s1 ;
            s3 : next = in ? s2 : s5 ;
            s4 : next = in ? s6 : s1 ;
            s5 : next = in ? s2 : s5 ;
            s6 : next = in ? s6 : s1 ;
            
            endcase
        end
        
    
    always @(*) begin
        
        out = state == s6 || state == s5 ; 
    end
endmodule
