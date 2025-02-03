module universal (
input clk,reset,en,
input [3:0]data_in,
input sft_left,
input sft_right,
input [1:0]mode,
output reg [3:0]data_out,
output q_left,
output q_right
);
always @(posedge clk or posedge reset) begin
    if (reset) begin
     data_out <= 0;
    end
    else if (en) begin
        case(mode)
            2'b00 :data_out <= data_out;
            2'b01 :data_out <= {data_out[2:0],sft_left};
            2'b10 :data_out <= {sft_right,data_out[3:1]};
            2'b11 :data_out <= data_in ;
            default: data_out <= data_out;

        endcase
    end
end
assign q_left = data_out[0];
assign q_right = data_out[3];
endmodule
