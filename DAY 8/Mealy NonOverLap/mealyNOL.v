`timescale 1ns / 1ps

module mealyNOL #(parameter s0 = 2'b00,s1 = 2'b01,s2 = 2'b10,s3 = 2'b11)(
    input in ,
    input clk,
    input reset,
    output reg out
    );
    
    reg [1:0]next,state;
    
    always @(posedge clk) begin
        if(reset) begin
            state <= s0;
            next <= s0;  
        end
        else 
            state <=next; 
    end
    
    always @(*) begin
        
        case(state)

            s0: next = in ? s1 : s0;
            s1: next = in ? s2 : s0;
            s2: next = in ? s3 : s0;
            s3: next = in ? s0 : s0;
            
        endcase
    
    end
    
    always @(*) begin
    
    out = (state == s3 ) && (in==1);
    
    end
endmodule
