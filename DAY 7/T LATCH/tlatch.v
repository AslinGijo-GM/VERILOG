module tlatch(
    input en,
    input t,
    output reg q
);

    always @(en or t) begin
        if (en) begin
            q<=~t;  
        end
    end
endmodule
