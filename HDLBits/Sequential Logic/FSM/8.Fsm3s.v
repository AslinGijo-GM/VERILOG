module top_module(
    input clk,
    input in,
    input reset,
    output out); //

    parameter a=2'b00,b=2'b01,c=2'b10,d=2'b11;
    
    reg [1:0]next,state;

    always @(posedge clk ) begin
        if(reset)
            state <=a;
        else
            state <=next;
        
    end
    
    always @(*) begin
        case(state)
            a : next = in ? b : a ; 
            b : next = in ? b : c ; 
            c : next = in ? d : a ; 
            d : next = in ? b : c ;             
            
        endcase
        
    end
	
    assign out = (state==d) ;

endmodule
