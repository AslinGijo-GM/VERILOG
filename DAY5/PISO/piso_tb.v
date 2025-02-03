module piso_tb;
reg clk;
reg reset;
reg [4:0]pi;
wire so;

piso uut(
.clk(clk),
.reset(reset),
.pi(pi),
.so(so)
);
initial begin
    clk =0;
    forever #5 clk = ~clk;
end
initial begin
    reset = 1; pi = 5'b11010; #10;
     reset = 0;#10;
     reset = 0;#10;  
     reset = 0;#10;  
     reset = 0;#10;       
     reset = 0;#10;
     reset = 0;#10;

    $finish;
end
endmodule
