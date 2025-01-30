module tff_tb;
reg clk = 0;
reg reset = 0;
reg t =0 ;
wire q;
tff uut(
.clk(clk),
.reset(reset),
.t(t),
.q(q)
);

 initial begin
forever #5 clk = ~clk;
end

initial begin
        t = 1; #10; 
        t = 0; #10;  
        t = 1; #10;             
        t = 0; #10;             
        t = 1; #10;  
$finish;
end
endmodule
