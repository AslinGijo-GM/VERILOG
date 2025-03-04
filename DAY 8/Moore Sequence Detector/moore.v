module moore(
    input clk,
    input reset,
    input in,
    output reg out
);
    parameter [2:0] 
    s0=3'b000,
    s1=3'b001,
    s2=3'b010,
    s3=3'b011,
    s4=3'b100
    ;
    
    reg [2:0]next,state;
    
    always @(posedge clk or posedge reset) begin
        if(reset)
            state <= s0 ;
        else
            state <=next;
    end
    
    always @(*) begin
        next =state;
        case(state)
            s0: next = in ? s1 : s0 ;
            s1: next = in ? s1 : s2 ;
            s2: next = in ? s3 : s0 ;
            s3: next = in ? s4 : s0 ;
            s4: next = in ? s1 : s0 ;
            default : next = s0;
        endcase
    end
    
    always @(*) begin
            s0 : out = 0 ;
            s1 : out = 0 ;
            s2 : out = 0 ;
            s3 : out = 0 ;
            s4 : out = 1 ;
    end
    
endmodule
