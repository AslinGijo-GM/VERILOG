`timescale 1ns / 1ps

module Timer(
    input clk,
    input reset,
    input start,
    input stop,
    output start_on,
    output reset_on,
    output stop_on,
    output reg [9:0] milicount,mincount
    );
    
    reg [1:0]state , next;
  //  reg [9:0] milicount,mincount;
    
    parameter   START = 0,
                RESET = 1,
                STOP  = 2;
                
   always @ ( * ) begin
        if(reset) begin
            state <= RESET;
            $display("ms = %d , min = %d",milicount,mincount);
        end
        else if (start) begin
            state <= START;
             $display("ms = %d , min = %d",milicount,mincount);
        end
        else if (stop) begin
            state <= STOP ;
             $display("ms = %d , min = %d",milicount,mincount);
        end
        else begin
            state <= next ;
             $display("ms = %d , min = %d",milicount,mincount);
        end
   end             
   
   always @ ( posedge clk ) begin
        case(state)   
            START : begin 
                        if( milicount < 10 ) begin
                            
                            milicount <= milicount + 1;
                        end
                        if(milicount == 10) begin
                            mincount <= mincount + 1;
                            milicount <= 0;
                        end
                        next <= state;
                    end
             RESET : begin
                        milicount <= 0;
                        mincount  <= 0;
                        next <= state;
                     end
            STOP   : begin
                        next <= state;
                     end         
                       
        endcase    
   end 
   
   assign start_on = state == START ;
   assign reset_on = state == RESET ;
   assign stop_on  = state == STOP ;
    
endmodule
