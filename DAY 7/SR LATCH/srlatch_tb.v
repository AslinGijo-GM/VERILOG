module srlatch_tb;
    reg en;
    reg s;
    reg r;
    wire q ;
    wire qbar;

srlatch uut(
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar),
    .en(en)
);



    initial begin 
    
      
        en=1;s = 0 ; r = 1 ; #10;
        en=1;s = 0 ; r = 0 ; #10;
        en=0;s = 0 ; r = 1 ; #10;
        en=0;s = 0 ; r = 0 ; #10;
        en=0;s = 1 ; r = 0 ; #10;
        en=0;s = 1 ; r = 1 ; #10;
        en=1;s = 1 ; r = 0 ; #10;
        en=1;s = 1 ; r = 1 ; #10;
 
        $finish;

    end
endmodule
