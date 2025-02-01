module sipo(
input clk,
input reset,
input s,
output reg [4:0]p
);

    always @(posedge clk or posedge reset) begin
        if(reset) begin 
            p <= 5'b00000;
        end

        else begin
            p <= {p[3:0],s };
        end
    end 
endmodule
