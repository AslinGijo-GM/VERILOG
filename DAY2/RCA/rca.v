module fulladder(
input a,b,c,
output sum,carry
);

assign sum = a^b^c;
assign carry = (a&b)|(b&c)|(a&c);

endmodule

module rca(
input [2:0]a,b,
input c,
output [2:0]sum ,
output carry 
);
wire w1,w2,w3;

fulladder fulladder1(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(w1)         );
fulladder fulladder2(.a(a[1]),.b(b[1]),.c(w1),.sum(sum[1]),.carry(w2)        );
fulladder fulladder3(.a(a[2]),.b(b[2]),.c(w2),.sum(sum[2]),.carry(carry)     );





endmodule
