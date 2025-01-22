module twobitcomp(

input a0,a1,b0,b1,
output y0,y1,y

);

assign y0 = a1^~b1;
assign y1 = (a0^~b0);
assign y = y1&y0;


endmodule
