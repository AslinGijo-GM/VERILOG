module top_module (input x, input y, output z);
    
    wire z1,z2,z3,z4;
    
    AA a1(.x(x),.y(y),.z(z1));
    BB b1(.x(x),.y(y),.z(z2));
    AA a2(.x(x),.y(y),.z(z3));
    BB b2(.x(x),.y(y),.z(z4));
    
    assign z = (z1 | z2)^(z3 & z4);

endmodule

module AA(input x, input y, output z);    
    assign z = (x^y) & x;
endmodule

module BB( input x, input y, output z );
    assign z = x~^y;
endmodule

