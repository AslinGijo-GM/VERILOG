module greater_tb;      // Replace "greater_tb" with the appropriate module name based on your use case
reg a0,a1,b0,b1;
wire y;

  greater uut(         // Replace "greater" with the appropriate name based on your use case
.a0(a0),.a1(a1),
.b0(b0),.b1(b1),
.y(y)
);

initial begin 
$monitor("Time=%0t,a0=%d,a1=%d,b0=%d,b1=%d,y=%d",$time,a1,a0,b1,b0,y);

        a1 = 0; a0 = 0; b1 = 0; b0 = 0; #10;
        a1 = 0; a0 = 0; b1 = 0; b0 = 1; #10;
        a1 = 0; a0 = 0; b1 = 1; b0 = 0; #10;
        a1 = 0; a0 = 0; b1 = 1; b0 = 1; #10;
        a1 = 0; a0 = 1; b1 = 0; b0 = 0; #10;
        a1 = 0; a0 = 1; b1 = 0; b0 = 1; #10;
        a1 = 0; a0 = 1; b1 = 1; b0 = 0; #10;
        a1 = 0; a0 = 1; b1 = 1; b0 = 1; #10;
        a1 = 1; a0 = 0; b1 = 0; b0 = 0; #10;
        a1 = 1; a0 = 0; b1 = 0; b0 = 1; #10;
        a1 = 1; a0 = 0; b1 = 1; b0 = 0; #10;
        a1 = 1; a0 = 0; b1 = 1; b0 = 1; #10;
        a1 = 1; a0 = 1; b1 = 0; b0 = 0; #10;
        a1 = 1; a0 = 1; b1 = 0; b0 = 1; #10;
        a1 = 1; a0 = 1; b1 = 1; b0 = 0; #10;
        a1 = 1; a0 = 1; b1 = 1; b0 = 1; #10;

$finish;
end


endmodule
