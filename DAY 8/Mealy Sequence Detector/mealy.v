module mealy(
    input clk,
    input reset,
    input in,
    output reg out
);
    parameter [1:0] 
    s0=2'b00,
    s1=2'b01,
    s2=2'b10,
    s3=2'b11
    ;
    
    reg [1:0]next,state;
    
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
            s3: next = in ? s1 : s0 ;
            default : next = s0;
        endcase
    end
    
    always @(*) begin
        
        out =(state == s3) && (in==0) ;
        
    end
    
endmodule
