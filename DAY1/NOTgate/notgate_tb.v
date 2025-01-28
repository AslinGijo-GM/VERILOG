
module notgate_tb;
    
    reg a,b ;
    wire c,d;
    
    notgate uut(.a(a),.b(b),.c(c),.d(d));
    initial begin 
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $finish;
    end
endmodule
