`timescale 1ns / 1ps

module mooreOL #(parameter
    s0 = 2'b00,
    s1 = 2'b01,
    s2 = 2'b10,
    s3 = 2'b11,
    s4 = 3'b100)(
    input in,
    input clk,
    input reset,
    output reg out
    );
    
    reg [2:0] next,state;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            state <= 0;
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
            s3 : next = in ? s4 : s0 ;
            s4 : next = in ? s2 : s0 ;
        endcase
    
    end
    
    always @(*) begin
         out = (state ==s4) && (in == 1);
    end
endmodule
