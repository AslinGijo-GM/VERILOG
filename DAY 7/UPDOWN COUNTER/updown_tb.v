module updown_tb;
    reg clk;
    reg reset;
    reg up;
    reg down;
    wire [3:0]count;
    
updown uut(
.clk(clk),
.reset(reset),
.up(up),
.down(down),
.count(count)
);    
initial begin
    clk =0;
    forever #5 clk =~clk;
end

initial begin

    reset=1; #10;
    reset=0;up=1;down=0;#100;
    reset=0;up=0;down=1;#200;
    $finish;

end
endmodule
