module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 
    
    reg [2:0]next,state;
    reg [8:0]count;
    
    parameter left = 3'b000,
    		  right = 3'b001,
    		  fall_l=3'b010,
    		  fall_r=3'b011,
    		  dig_l=3'b100,
    		  dig_r=3'b101,
    		  spl = 3'b110;
    
    always @(posedge clk or posedge areset ) begin
        if(areset) begin
            state <= left;
        	count <= 0;
        end
        else begin
           	 state <= next ;
            
            if ( (state == fall_l) || (state == fall_r) ) begin
                count <= count + 1 ;
            end
            else  begin         
            	count <= 0 ; 
            end

        end 
        
    end
    
    always @(*) begin
        
        case(state)
            left   : next = ground ? ( dig ? dig_l :  (bump_left  ? right : left )) : fall_l ;
            right  : next = ground ? ( dig ? dig_r :  (bump_right ? left : right )) : fall_r ;
            
            fall_l : next = ground ? ( count > 6'd19 ? spl : left) : fall_l  ;
            fall_r : next = ground ? ( count > 6'd19 ? spl : right): fall_r  ;
            
            dig_l  : next = ground ? dig_l : fall_l ;
            dig_r  : next = ground ? dig_r : fall_r ;
            spl    : next = spl    ;
        endcase
        
    end
    
    assign walk_left  = (state == left);
    assign walk_right = (state == right);
    assign aaah       = (state == fall_l) | (state == fall_r)  ;
    assign digging    = (state == dig_l)  | (state == dig_r)   ;
    
    

endmodule
