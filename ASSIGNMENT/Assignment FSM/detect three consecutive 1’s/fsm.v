`timescale 1ns / 1ps

module fsm #(parameter s0 = 0,
                       s1 = 1,
                       s2 = 2,
                       s3 = 3)(
        input clk,
        input reset,
        input in,
        output reg out
    );
    reg [1:0]state,next;
    
    always @( posedge clk ) begin
        if(reset) 
            state <= s0;
        else
            state <=next;
    end
    
    always @(*) begin
        case(state)
            s0 : begin next = in ? s1 : s0 ; out = 0 ; end
            s1 : begin next = in ? s2 : s0 ; out = 0 ; end 
            s2 : begin next = in ? s3 : s0 ; out = 0 ; end 
            s3 : begin next = in ? s3 : s0 ; out = 1 ; end 
            
        endcase
    end
    
    
    
    
endmodule
