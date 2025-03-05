`timescale 1ns / 1ps

module fsm(
        input clk,
        input reset,
        input din,
        output reg odd0odd1,odd0even1,even0odd1,even0even1
    );
    
    parameter   s0 = 0,
                s1 = 1,
                s2 = 2,
                s3 = 3;
    
    reg [1:0] state , next;
    
    always @ (posedge clk ) begin
        if(reset) begin
            state <= s0;
            even0even1 = 0 ;
            odd0even1  = 0 ;
            even0odd1  = 0 ;
            odd0odd1   = 0 ;
        end
        else begin
            state <= next;
        end
    end
    
    always @(*) begin
        case(state)
            s0 : next = din ? s2 : s1 ;
            s1 : next = din ? s3 : s0 ;
            s2 : next = din ? s0 : s3 ;
            s3 : next = din ? s1 : s2 ;
            
        endcase
        
    end
    
    always @(*) begin
        even0even1 = (state == s0);
        odd0even1  = (state == s1);
        even0odd1  = (state == s2);
        odd0odd1   = (state == s3);  
   end        
endmodule
