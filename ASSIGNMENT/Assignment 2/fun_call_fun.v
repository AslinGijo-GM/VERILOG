module funn(
  output reg [3:0]dout
);
  
  initial begin
    
    dout = fun1();
    $display("call - %d",dout);
  
  end
  
  function [3:0]fun1;
    
      begin
        fun1 = fun2(1);
      end
    
  endfunction
  
  function [3:0]fun2;
    input [3:0]in;
    
    begin
      fun2=in+2;
    end
    
  endfunction
  
endmodule
