module btog_tb;
reg [4:0]b;
wire [4:0]g;

btog uut(
.b(b),
.g(g)
);
initial begin
 b=5'b10001;#10;
 b=5'b10110;#10;
 b=5'b00001;#10;
 b=5'b01001;#10;

$finish;

end
endmodule
