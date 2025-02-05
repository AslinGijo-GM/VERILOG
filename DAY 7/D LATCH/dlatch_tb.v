module dlatch_tb;
    reg d;
    reg en;
    wire q;
    
    dlatch uut(
    .d(d),
    .en(en),
    .q(q)
    );
    
    initial begin
        en = 0;d = 1;#10;
        en = 1;d = 1;#10;
        en = 1;d = 0;#10;
        $finish;
        
    end
    
endmodule
