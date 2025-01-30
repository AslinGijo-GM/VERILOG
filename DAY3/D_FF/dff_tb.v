module dff_tb;
reg clk = 0;
reg reset = 0;
reg d =0 ;
wire q;


dff uut(
.clk(clk),
.reset(reset),
.d(d),
.q(q)
);

 initial begin
forever #5 clk = ~clk;
end

initial begin
         d = 1; #10;  
         d = 0; #10;  
        d = 1; #10;             
        d = 0; #10;             
        d = 1; #10;  
 
 

$finish;
end
endmodule

