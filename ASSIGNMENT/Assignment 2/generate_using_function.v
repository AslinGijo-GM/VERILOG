module oddeven(
  input clk,
  input mode,
  output reg [5:0]dout
);
  
  
  function [5:0]adder;
    
    input [5:0]din;
    adder = din+2'd2;
    
  endfunction
  
  integer count=0;
  
  always @(posedge clk) begin
    if(count == 0 ) begin
      if(mode)
        dout = 6'd1;
      else
        dout = 6'd0;
    end
    
    else if(count<=20)begin
      
      dout=adder(dout);
    end
    
    if(count<=20)
      count=count+2;
    
  end
  
  
endmodule
