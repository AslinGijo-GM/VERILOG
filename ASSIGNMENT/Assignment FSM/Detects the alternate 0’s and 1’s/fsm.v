`timescale 1ns / 1ps

module fsm(
        input clk,
        input reset,
        input in,
        output out
    );
    
    reg [2:0] state , next;
    parameter   s0 = 0,
                s1 = 1,
                s2 = 2,
                s3 = 3,
                s4 = 4,
                s5 = 5,
                s6 = 6;
    
    always @ ( posedge clk ) begin
        if(reset) begin
            state <= s0;
        end            
        else begin
            state <= next;
        end
    end
                
    always @(*) begin
        case(state)
            s0: next = in ? s2 : s1;
            s1: next = in ? s3 : s1;
            s2: next = in ? s2 : s4;
            s3: next = in ? s2 : s5;
            s4: next = in ? s6 : s1;
            s5: next = in ? s6 : s1;
            s6: next = in ? s2 : s5;
            
        endcase
    end 
    
    assign out = ((state == s5) | (state == s6));           
endmodule
