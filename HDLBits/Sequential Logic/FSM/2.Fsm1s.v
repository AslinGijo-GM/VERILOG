// Note the Verilog-1995 module declaration syntax here:
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output reg out;//  
    parameter A=0, B=1; 

    // Fill in state name declarations

    reg present_state, next_state;

    always @(posedge clk) begin
        if (reset) begin  
            present_state <= B;
        end else begin
      present_state <= next_state ;
        end
    end
    
    always @(*) begin
        case(present_state)
            B:next_state = in ? B : A  ;
            A:next_state = in ? A : B  ;            
        endcase
        
    end
    
    always @(*) begin
       
        out = (present_state==B) ;
        
    end

endmodule
