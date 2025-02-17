module piso(
input clk,
input reset,
input load,
input [4:0]pi,
output reg so
);
reg [4:0]sft;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        sft <= 5'b00000;
    end
    else if (load) begin
        sft <= pi;    
    end
    else begin
        sft <= {1'b0,sft[4:1]};
    end
end
always @(posedge clk) begin
    so <= sft[0] ;
end
endmodule
