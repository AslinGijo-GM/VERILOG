module srff(
input s,
input r,
input clk,rst,
output reg q,
output qbar
);

always @ (posedge clk or posedge rst) begin
if (rst) begin
 q<=0;
end
else begin
casex({s,r})
2'b00 :q <= q ;
2'b01 :q <= 1'b0 ;
2'b10 :q <= 1'b1 ;
2'b11 :q <= 1'bx ;
endcase
end
end
assign qbar = (q === 1'bx) ? 1'bx : ~q;

endmodule




