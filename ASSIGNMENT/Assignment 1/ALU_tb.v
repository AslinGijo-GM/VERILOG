`timescale 1ns / 1ps


module ALU_tb;
    reg [3:0]a,b;
    reg [2:0]s;
    wire [3:0]f;
    
    ALU uut(
    .a(a),
    .b(b),
    .s(s),
    .f(f)
    );
    
    initial begin 
    
        a = 4'b0000; b = 4'b0000; s = 3'b000; #10;     
        a = 4'b0010; b = 4'b0100; s = 3'b001; #10;
        a = 4'b0100; b = 4'b0010; s = 3'b010; #10;
        a = 4'b0011; b = 4'b0101; s = 3'b011; #10;
        a = 4'b1100; b = 4'b1010; s = 3'b100; #10;
        a = 4'b1001; b = 4'b0110; s = 3'b101; #10;
        a = 4'b1100; b = 4'b1010; s = 3'b110; #10;

        s = 3'b111; #10;

    
    $finish;
    end
  
endmodule
