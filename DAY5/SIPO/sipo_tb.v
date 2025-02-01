module sipo_tb;
reg clk;
reg reset;
reg s;
wire [4:0]p;

sipo uut(
.clk(clk),
.reset(reset),
.s(s),
.p(p)
);
    initial begin
        clk = 0;
        forever #5 clk=~clk;
    end
    
    task data_in;
        input ss;
        begin
          s=ss;
          #10;
        end
    endtask
    initial begin
        reset =1;#10;
        s=0;
        reset =0;
        data_in(1);
        data_in(0);
        data_in(1);
        data_in(0);
        data_in(1);
        data_in(0);
        data_in(1);
    $finish;
        
    end



endmodule
