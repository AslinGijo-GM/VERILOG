`timescale 1ns/1ps 
module counter(
input d,
input clk,
input reset,
output [3:0]q
);
wire q0,q1,q2,q3;

dff df0(
.clk(clk),
.reset(reset),
.d(~q0),
.q(q0)
);

dff df1(
.clk(~q0),
.reset(reset),
.d(~q1),
.q(q1)
);

dff df2(
.clk(~q1),
.reset(reset),
.d(~q2),
.q(q2)
);

dff df3(
.clk(~q2),
.reset(reset),
.d(~q3),
.q(q3)
);

assign q = {q3,q2,q1,q0};

endmodule

module dff(
input d,
input clk,
input reset,
output reg q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        q<=0;
    end
    else begin
        q<=d;
    end
end
endmodule 
