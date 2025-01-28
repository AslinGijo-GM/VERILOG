module orgate(
input a,b,
output c
    );
    
    assign c = a|b;
    // or (c,a,b)
endmodule
