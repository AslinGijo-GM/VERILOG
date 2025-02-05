module dlatch(
    input en,
    input d,
    output reg q
);

    always @(en or d ) begin
        if (en) begin
            q=d;
        end
    end
endmodule
