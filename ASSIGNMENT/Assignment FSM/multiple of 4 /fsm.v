`timescale 1ns / 1ps

module fsm(
    input clk,
    input reset,
    input in,
    output out
    );
    
    parameter s0 = 0,
              s1 = 1,
              s2 = 2,
              s3 = 3;     
    
    reg [1:0]next , state;   
              
    always @ ( posedge clk ) begin
        if(reset)
            state <= s0;
        else
            state <= next;
    end
    
    always @(*) begin
        case(state)
            s0 : next = in ? s1 : s0 ;
            s1 : next = in ? s3 : s2 ;
            s2 : next = in ? s1 : s0 ;
            s3 : next = in ? s3 : s2 ;
            
            
        endcase
    end
    
    assign out = state == s0;
endmodule
