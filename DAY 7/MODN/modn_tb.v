module modn_tb;
    reg clk;
    reg reset;
    wire [3:0]count; 
    
    modn uut(
    .clk(clk),
    .reset(reset),
    .count(count)
    );
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        
        reset = 1;#10;
        reset = 0;#500;
        $finish;
        
    end
    
endmodule
