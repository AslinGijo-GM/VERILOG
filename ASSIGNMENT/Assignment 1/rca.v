`timescale 1ns / 1ps


module fulladd(
input a,b,c,
output sum, carry
);

assign sum = a^b^c;
assign carry = a&b&c;

endmodule

module ripple(
input a,b,c,a1,a2,a3,a4,b1,b2,b3,b4,
output sum,carry,s1,s2,s3
    );
    wire c1,c2,c3,c4;
     
     fulladd aa1(.a(a),.b(b),.c(c),.sum(s1),.carry(c1));
     fulladd aa2(.a(a1),.b(b1),.c(c1),.sum(s2),.carry(c2));
     fulladd aa3(.a(a2),.b(b2),.c(c2),.sum(s3),.carry(c3));
     fulladd aa4(.a(a3),.b(b3),.c(c3),.sum(s4),.carry(c4));
     
     assign sum =s4;
     assign carry = c4;
endmodule
