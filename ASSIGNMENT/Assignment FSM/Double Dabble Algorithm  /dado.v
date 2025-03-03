`timescale 1ns / 1ps

module dado(
    input  [7:0]bin,
    output reg [11:0]bcd
    );
    
    integer i;
    reg [19:0]box;
    
    always @(*) begin
        box = { 12'b0 , bin };
        for( i=0;i<8;i=i+1 ) begin
            if( box[11:8] >= 5 )
                box[11:8] = box[11:8] + 3;
            if( box[15:12] >= 5 )
                box[15:12] = box[15:12] + 3;
            if( box[19:16] >= 5 )
                box[19:16] = box[19:16] + 3;
            box = box << 1 ;
        end
        bcd = box[19:8];        
    end
endmodule
