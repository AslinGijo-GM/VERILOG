module gtob_tb;
reg [4:0]g;
wire [4:0]b;

gtob uut(
.b(b),
.g(g)
);
initial begin
 g=5'b10001;#10;
 g=5'b10110;#10;
 g=5'b00001;#10;
 g=5'b01001;#10;

$finish;

end
endmodule
