module mux8_with_loop(
input [7:0]in,
input [2:0]sel,
output reg out
);

reg i;
always @(*) begin

    out =0;
    for(i=0;i<8;i=i+1) begin
        if(sel ==i)
            out=in[i];
    end
end
endmodule
