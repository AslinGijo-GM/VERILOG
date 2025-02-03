module universal_tb;
reg clk;
reg reset;
reg en;
reg [1:0]mode;
reg [3:0]data_in;
reg sft_left;
reg sft_right;
wire [3:0]data_out;
wire q_left;
wire q_right;

universal uut (
.clk(clk),
.reset(reset),
.en(en),
.mode(mode),
.data_in(data_in),
.sft_left(sft_left),
.sft_right(sft_right),
.data_out(data_out),
.q_left(q_left),
.q_right(q_right)
);
initial begin
    clk =0;
    forever #5 clk = ~clk;
end

initial begin
        reset = 1; en = 1; #10;
    reset = 0; #10;

    // Hold state
    mode = 2'b00; data_in = 4'b1010; sft_left = 0; sft_right = 0; #10;

    // Shift left 
    mode = 2'b01; sft_left = 1'b1; #10;
    mode = 2'b01; sft_left = 1'b0; #10;

    // Shift right 
    mode = 2'b10; sft_right = 1'b1; #10;
    mode = 2'b10; sft_right = 1'b0; #10;

    // Parallel Load 
    mode = 2'b11; data_in = 4'b1100; #10;

$finish;
end
endmodule
