module dlatch_tb;
    reg t;
    reg en;
    wire q;
    
    tlatch uut(
    .t(t),
    .en(en),
    .q(q)
    );
    
    initial begin
        en = 1;t = 1;#10;
        en = 0;t = 1;#10;
     
        en = 1;t = 0;#10;
        $finish;
        
    end
    
endmodule
