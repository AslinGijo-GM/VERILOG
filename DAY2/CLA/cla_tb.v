`timescale 1ns / 1ps

module cla_tb;

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout ;

cla uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout)   );

initial begin 
a=4'b1001;b=4'b0100;cin=1;#10;



$finish;
end

endmodule
