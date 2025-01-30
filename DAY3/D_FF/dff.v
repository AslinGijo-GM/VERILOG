module dff(
input clk,reset,
input d,
output reg q
);

always @(posedge clk) begin
if (reset) begin
  q=0;
  
  end
else begin
  q=d;
  
 end
end
endmodule

