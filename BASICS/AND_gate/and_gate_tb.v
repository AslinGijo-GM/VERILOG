module and_gate_tb;
    reg a;
    reg b;
    wire y;
    
    
    and_gate uut (
    .a(a),
    .b(b),
    .y(y)
    );
    
    initial begin 
    $monitor("a=%d,b=%d,y=%d",a,b,y);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
    
    end
    
endmodule
