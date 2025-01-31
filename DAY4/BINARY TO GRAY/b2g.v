module btog(
input [4:0]b,
output [4:0]g
);

assign g[4] = b[4];
genvar i;
generate
for (i=3 ; i>=0 ;i=i-1) begin
assign g[i] = b[i+1]^b[i];

end
endgenerate
endmodule
