module counter_tb;
reg clk;
reg reset;
wire [4:0]cout;

counter uut(
.clk(clk),
.reset(reset),
.cout(cout)
);
initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=0;#10;reset=1;#10;
    reset=1;#10;reset=1;#10;
    reset=1;#10;reset=1;#10;
    reset=1;#10;reset=1;#10;
    reset=1;#10;reset=1;#10;
    $finish;



end
endmodule 
