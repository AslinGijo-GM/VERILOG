module pipo(
input clk,
input reset,
input [4:0]pi,
output reg [4:0]po
);

always @(posedge clk or posedge reset) begin
    if(reset) begin
        po <= 5'b00000;
    end
    else begin
        po <=pi;
    end

end
endmodule
