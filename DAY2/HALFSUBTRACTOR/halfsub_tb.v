module halfsub_tb;
reg a,b;
wire sub,borrow;

halfsub uut(
.a(a),
.b(b),
.sub(sub),
.borrow(borrow)
);
initial begin 
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $finish;

end

endmodule
