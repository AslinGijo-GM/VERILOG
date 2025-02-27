module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    
    parameter [1:0]left = 2'b00,
    		  right = 2'b01,
    		  aaahleft = 2'b10,
    		  aaahright = 2'b11;
    
    reg [1:0]next,state;
    
    always @( posedge clk or posedge areset) begin
       
        if(areset)
            state <= left;
        else
            state <=next;
        
    end
            
   always @(*) begin
       case(state)
           left : next = ground ? ( bump_left ? right : left ) : aaahleft  ;
           right: next = ground ? ( bump_right ? left : right  ) : aaahright ;
           aaahleft  : next = ground  ? left :aaahleft    ;
           aaahright : next = ground  ? right :aaahright   ;
         
       endcase
   end
    
    assign walk_left = (left==state );
    assign walk_right = (right==state );
    assign aaah = (aaahleft==state )|( aaahright==state) ;
    

endmodule
