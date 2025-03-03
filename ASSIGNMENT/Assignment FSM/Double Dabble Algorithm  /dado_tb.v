`timescale 1ns / 1ps

module dado_tb;
    reg  [7:0]bin;
    wire [11:0]bcd;
    
    dado uut(
        .bin(bin),
        .bcd(bcd)
    );
    
    initial begin
    bin= 8'b0001_1111 ;#10;
    $finish;
    end
  
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
