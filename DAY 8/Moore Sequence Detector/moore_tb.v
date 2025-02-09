
module moore_tb;
    reg clk;
    reg reset;
    reg in;
    wire out;

moore uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin         
        reset = 1;  
        in = 0;
        #10 reset = 0;  

        #10 in = 1;   
        #10 in = 1;   
        #10 in = 0;   
        #10 in = 1;   
        #10 in = 1;   
        #10 in = 0;   
        #10 in = 1;   
        #10 in = 0;   
        #10 in = 1;   
        #10 in = 0;   

        #20 $finish;  


end
endmodule
