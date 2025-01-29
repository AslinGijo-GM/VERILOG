module cla(
input [3:0]a,
input[3:0]b,
input cin, 
output [3:0]sum,
output cout
);
wire [3:0] g,p;
wire [4:0]c;

assign g= a&b;
assign p = a^b;

assign c[0] = cin;
assign c[1]= g[0]  | (p[0]& cin);
assign c[2]= g [1] | (p[1] & g[0] ) | (p[0] & p[1] & cin)  ;
assign c[3]= g[2]  | (p[2]& g[1])   | (p[2] & p[1] & g[0] )       | (p[0] & p[1] &p[2] & cin)  ;
assign c[4] = g[3] | (p[3] & g[2])  | (p[2] & p[1] & p[0] &g[1])  |(p[3] & p[2] & p[1] & g[0]) | (p[0] & p[1] & p[2] & p [3] &cin); 

assign sum = p ^ c[3:0] ;

 assign cout =c[4];


endmodule
