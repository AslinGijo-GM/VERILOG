module pipo_tb;
reg clk;
reg reset;
reg [4:0]pi;
wire [4:0]po;

pipo uut(
.clk(clk),
.reset(reset),
.po(po),
.pi(pi)
);

initial begin
    clk=0;
    forever #5 clk =~clk;
end

initial begin
    reset=1;pi = 5'b00100;#10;
    reset=0;pi = 5'b00000;#10;
    reset=1;pi = 5'b00100;#10;
    reset=0;pi = 5'b00110;#10;
    reset=0;pi = 5'b11000;#10;
    reset=0;pi = 5'b11001;#10;
    $finish;
    
    
end
endmodule
