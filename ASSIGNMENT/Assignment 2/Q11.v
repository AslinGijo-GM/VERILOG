module ex11(
input x1,x2,x3,
output f,g,
input clk
);

wire w1,w2,f3,g4; 

assign w1 = x3|f3;
assign w2 = x1&x2;

dff df1(.clk(clk),.d(w1),.q(g4)    );
dff df2(.clk(clk),.d(w2),.q(f3)    );
assign g =g4;
assign f =f3;

endmodule

module dff(
input d,
output reg q,
input clk
);
always @(posedge clk ) begin
    q=d; 
end
endmodule
