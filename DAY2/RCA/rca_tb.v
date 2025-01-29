module rca_tb;
reg [2:0]a,b;
reg c;
wire [2:0]sum;
wire carry;

rca uut(
.a(a),
.b(b),
.c(c),
.sum(sum),
.carry(carry)
);
initial begin 
    a=3'b001;b=3'b010;c=1'b1;#10;
    a = 3'b000; b = 3'b000; c = 0; #10;
    a = 3'b001; b = 3'b001; c = 0; #10;
    a = 3'b010; b = 3'b011; c = 0; #10;
    a = 3'b101; b = 3'b010; c = 1; #10;
    a = 3'b110; b = 3'b010; c = 1; #10;
    a = 3'b111; b = 3'b111; c = 1; #10;
    
    
    
    
    
    
    
    $finish;

end

endmodule
