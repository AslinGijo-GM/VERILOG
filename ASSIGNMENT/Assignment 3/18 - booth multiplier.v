module boothm(

  input [1:0]A,
  input [1:0]B,
  output reg [3:0]product
);
  
  reg [4:0]box;
  integer i;
  
  always @(*) begin
    
    box = {A,3'b000};
    
    for(i=0; i<2 ; i=i+1) begin
      
      case(box[3:2]) 
        
        2'b01 : box[4:2] = box[4:2]+B;
        2'b10 : box[4:2] = box[4:2]-B;
        
      endcase
      
      box = { box[4],box[4:1] };
      
    end
    
    product = box[3:0];
    
  end
  
  
endmodule
