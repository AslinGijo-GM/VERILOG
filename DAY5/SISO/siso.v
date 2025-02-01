module siso(
input clk,
input din,
input reset,
output reg dout
);
reg [3:0]shift_reg; 
    always @ (posedge clk) begin
        if(reset) begin
            shift_reg <= 4'b0000;
            dout <= 1'b0;
        end
        else begin
            shift_reg <= {shift_reg[2:0],din};
            dout <= shift_reg[3] ;
        end
        end
 
endmodule


