`timescale 1ns / 1ps

module fsm #(parameter s0 = 0,
                       s1 = 1,
                       s2 = 2,
                       s3 = 3)(
       input clk,
       input reset,
       input in,
       output out
    );
    
    reg [1:0]next,state;
    
    always @ ( posedge clk ) begin
        if(reset) begin
            next <= 0;
            state <= s0;
        end
        else
            state <= next;
    
    end
    
    always @(*) begin
        case(state)
            s0 : next = in ? s1 : s0;
            s1 : next = in ? s2 : s3;
            s2 : next = in ? s2 : s2;
            s3 : next = in ? s2 : s3;
        endcase
        
    end
    
    assign out = (state == s2) ;
endmodule
