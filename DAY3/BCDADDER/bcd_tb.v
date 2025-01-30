module bcd_tb;
reg [3:0]a,b;
wire [3:0]sum;
wire cout;

bcd uut(
.a(a),
.b(b),
.sum(sum),
.cout(cout)
);

initial begin
 a=4'b1111;b=4'b0001;#10;
 a=4'b0001;b=4'b0101;#10;
 a=4'b0011;b=4'b0101;#10;
 a=4'b1001;b=4'b1001;#10;

$finish;

end
endmodule





