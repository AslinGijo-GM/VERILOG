module oe(
  input din,
  input clk,
  output reg [5:0]dout
);
  
  reg [5:0]i=0;
  always @(posedge clk) begin
    
    
    if(i <20) begin
    
      dout = genn(i);
    	 i = i+2;   
    
    end
    
  end
  
  function [5:0]genn;
    
    input [5:0]in;
      begin
        genn = in+2;
        $display("Generated number: %d", dout);
      end

  endfunction
  
endmodule
