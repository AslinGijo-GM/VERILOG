
module notgate(
input a,b,
output c,d
    );
    
   // assign {c,d} = {~a,~b};
     not(c,a);
     not(d,b);
endmodule
