`timescale 1ns / 1ps

module mealyOL(
    input clk,
    input in,
    input reset,
    output reg out
    );
    
    parameter   s0=2'b00,
                s1=2'b01,
                s2=2'b10,
                s3=2'b11;
                
    reg [1:0]next,state;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin 
            state <=s0;
        end
        else begin
            state <=next;
        end
    end          
    always @(*) begin
    
        case (state)
        
            s0 : next = in ? s1 : s0 ;
            s1 : next = in ? s2 : s0 ;
            s2 : next = in ? s2 : s3 ;
            s3 : next = in ? s1 : s0 ;
            
        endcase
           
    end
    
    always @(*) begin
          out = (state ==s3) && (in==1) ;

      end  
              
endmodule
