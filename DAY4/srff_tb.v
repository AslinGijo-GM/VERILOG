module srff_tb;
reg clk=0;
reg s;
reg r;
reg rst =1'b0;
wire q ;
wire qbar;

srff uut(
.s(s),
.r(r),
.clk(clk),
.q(q),
.qbar(qbar),
.rst(rst)
);
initial begin
forever #5 clk =~clk;
end
initial begin 
 s = 0 ; r = 1 ; #10;
 s = 0 ; r = 0 ; #10;
 s = 1 ; r = 0 ; #10;
 s = 1 ; r = 1 ; #10;
$finish;
end
endmodule





