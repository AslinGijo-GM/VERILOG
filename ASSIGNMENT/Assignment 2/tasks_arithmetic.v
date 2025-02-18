module ari(
  input [4:0]a,
  input [4:0]b,
  output reg [6:0]c,
  output reg [6:0]d,
  output reg [6:0]e,
  output reg [6:0]f
);
  always @(*) begin
  
  add(a,b,c);
  sub(a,b,d);
  mul(a,b,e);
  div(a,b,f);
  
  end
  
  task add;
    input [4:0]a;
    input [4:0]b;
    output reg [6:0]c;
    
    c=a+b;
    
  endtask
  
  task sub;
    input [4:0]a;
    input [4:0]b;
    output reg [6:0]d;
    
    d=a-b;
    
  endtask
  
  task mul;
    input [4:0]a;
    input [4:0]b;
    output reg [6:0]e;
    
    e=a*b;
    
  endtask
  
  task div;
    input [4:0]a;
    input [4:0]b;
    output reg [6:0]f;
    
    f=a/b;
    
  endtask
  
  
  
  
  
  
endmodule
