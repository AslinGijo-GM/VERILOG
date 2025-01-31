module gtob(
input [4:0]g,
output [4:0]b
);

assign b[4] = g[4];
genvar i;
generate
for (i=3 ; i>=0 ;i=i-1) begin
assign b[i] = b[i+1]^g[i];

end
endgenerate
endmodule
