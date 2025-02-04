module counter(
input clk,
input reset,
output reg [4:0]cout
);

always @ (posedge clk or posedge reset) begin
    if(!reset)
        cout <= 0;
    else
        cout <= cout+1;

end
endmodule
