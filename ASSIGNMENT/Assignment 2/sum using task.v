module taskk(
  input a,
  input b,
  output reg c  
);
  
  always @(*) begin
    
    sum(a,b,c);
  
  end
  
endmodule

task sum;
  input a;
  input b;
  output reg c;
  
  assign c=a+b;
  
endtask
