module jklatch_tb;
    reg en;
    reg j;
    reg k;
    wire q ;
    wire qbar;

jklatch uut(
    .j(j),
    .k(k),
    .q(q),
    .qbar(qbar),
    .en(en)
);



    initial begin 
    
      
        en=1;j = 0 ; k = 1 ; #10;
        en=1;j = 0 ; k = 0 ; #10;
        en=0;j = 0 ; k = 1 ; #10;
        en=0;j = 0 ; k = 0 ; #10;
        en=0;j = 1 ; k = 0 ; #10;
        en=0;j = 1 ; k = 1 ; #10;
        en=1;j = 1 ; k = 0 ; #10;
        en=1;j = 1 ; k = 1 ; #10;
 
        $finish;

    end
endmodule
