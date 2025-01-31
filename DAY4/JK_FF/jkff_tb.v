module jkff_tb;
reg clk=0;
reg j;
reg k;
reg rst =1'b0;
wire q ;
wire qbar;

jkff uut(
.j(j),
.k(k),
.clk(clk),
.q(q),
.qbar(qbar),
.rst(rst)
);
initial begin
forever #5 clk =~clk;

end


initial begin 
 
 j = 0 ; k = 1 ; #10;
 j = 0 ; k = 0 ; #10;
 j = 1 ; k = 0 ; #10;
 j = 1 ; k = 1 ; #10;
 
$finish;

end
endmodule
