module modn #(parameter N = 10)(
input clk,
input reset,
output reg [3:0]count
);

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            count <=0;
        end
        else if(count == N ) begin
            count <= 0;
        end
        else begin
            count <= count + 1;
        end
    end
endmodule
