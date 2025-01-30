module bcd(
input [3:0]a,b,
output [3:0]sum,
output cout
);
wire [4:0]bsum;
wire consum;
wire [4:0]fsum;

assign bsum = a+b;
assign consum = bsum >9 ;
assign fsum = bsum +( consum ? 6 : 0 );

assign sum = fsum[3:0] ;
assign cout = fsum[4] ;

endmodule



