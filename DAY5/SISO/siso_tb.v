module siso_tb;
reg clk=0;
reg din;
reg reset;
wire dout;

siso uut(
.clk(clk),
.din(din),
.reset(reset),
.dout(dout)
);
initial begin 
forever #5 clk = ~clk;
end

initial begin
        reset = 1;
        #10;reset = 0;
        #10;din = 1;  
        #10;din = 0;   
        #10;din = 1;   
        #10;din = 1;   
        #10;din = 0; 
        #10;din = 0;   
        #10;din = 1; 
         
        $finish;
end
endmodule
