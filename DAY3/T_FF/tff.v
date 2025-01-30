module tff(
input clk,reset,
input t,
output reg q
);

always @(posedge clk or reset) begin
if (reset) begin
  q<=1;
  
  end
else begin
  q<=~t;
  
 end
end
endmodule



