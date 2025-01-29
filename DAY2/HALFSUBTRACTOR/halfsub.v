module halfsub(
input a,b,
output sub,borrow
);

assign sub =a^b;
assign borrow = ~a&b;


endmodule
