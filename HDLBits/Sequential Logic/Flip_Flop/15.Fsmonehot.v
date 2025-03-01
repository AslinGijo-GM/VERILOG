module top_module(
    input in,
    input [9:0] state,
    output [9:0] next_state,
    output out1,
    output out2);
    
    parameter   s0 = 0,
    			s1 = 1,
    			s2 = 2,
    			s3 = 3,
    			s4 = 4,
    			s5 = 5,
    			s6 = 6,
    			s7 = 7,
    			s8 = 8,
    			s9 = 9;
   
    assign next_state[0] = (state[s0] & ~in) | (state[s1] & ~in) | (state[s2] & ~in) | (state[s3] & ~in) | (state[s4] & ~in) | (state[s7] & ~in) | (state[s8] & ~in) | (state[s9] & ~in);
    assign next_state[1] = (state[s8] & in) | (state[s9] & in) | (state[s0] & in) ;
    assign next_state[2] = state[s1] & in ;
    assign next_state[3] = state[s2] & in ;
    assign next_state[4] = state[s3] & in ;
    assign next_state[5] = state[s4] & in ;
    assign next_state[6] = state[s5] & in ;
    assign next_state[7] = state[s7] & in | state[s6] & in ;
    assign next_state[8] = state[s5] & ~in ;
    assign next_state[9] = state[s6] & ~in ;
    
    
    
    
    assign out1 = (state [8]) | (state[9])  ;
    assign out2 = (state [7]) | (state[9]) ;

endmodule
