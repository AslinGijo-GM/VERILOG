`timescale 1ns / 1ps

module fsm #(parameter s0 = 0,
                       s1 = 1,
                       s2 = 2,
                       s3 = 3)(
        input clk,
        input reset,
        input A,
        output outs0,outs1,outs2,outs3
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
            s0 :next = A ? s2 : s1;
            s1 :next = A ? s3 : s0;
            s2 :next = A ? s0 : s3;
            s3 :next = A ? s1 : s2;
            
        endcase
    end
    
    assign outs0 = state == s0;
    assign outs1 = state == s1; 
    assign outs2 = state == s2; 
    assign outs3 = state == s3;  
    
endmodule
