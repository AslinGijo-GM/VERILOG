

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

task input_data;
input ddin;begin
 #10;
 din= ddin;

end
endtask

initial begin
        reset = 1;
        #10;reset = 0;
        input_data(1);  
        input_data(0);   
        input_data(1);   
        input_data(1);   
        input_data(0); 
        input_data(0);   
        input_data(1); 
         
        $finish;
end
endmodule
