`timescale 1ns / 1ps

module fsm(
    input clk,
    input reset,
    input in,
    output out
    );
    
    parameter ON = 1,
              OFF = 0;
   
   reg state, next; 
              
   always @( posedge clk ) begin
        
        if(reset)
            state <=OFF;
        else
            state <= next;
        
   end
   
   always @(*) begin
        case(state)
            OFF : next = in ? ON : OFF ;
            ON  : next = in ? OFF: ON  ;
        endcase
   end
   
   assign out = state == ON ;
endmodule
