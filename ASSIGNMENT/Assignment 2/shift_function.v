module shift(
  input [4:0]din,
  input clk,
  output reg [4:0]dout
);
  
  always @(posedge clk) begin
    
    dout <= sft(din);
    
  end
  
  function [4:0]sft;
    
    input [4:0]din;
    
      begin
        sft={ din[4],din[4:1] };
      end
    
  endfunction
  
endmodule
