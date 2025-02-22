module mux4(
  input [3:0]i,
  input [1:0]sel,
  output reg y
);
  
  always @ (*) begin
    
    case(sel)
      
      2'b00 : y = i[0];
      2'b01 : y = i[1];
      2'b10 : y = i[2];
      2'b11 : y = i[3];
      
    endcase
    
  end
  
endmodule

module mux8(
  input [7:0]i,
  input [2:0]sel,
  output y
);
  
  wire y1,y2;
  
  mux4 mux1(.i(i[3:0]),.sel(sel[1:0]),.y(y1)  );
  mux4 mux2(.i(i[7:4]),.sel(sel[1:0]),.y(y2)  );
  
  assign y =  sel[2] ? y2 : y1 ;
  
endmodule
