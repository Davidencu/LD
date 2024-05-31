module srlatch(
  input s,
  input r,
  output q,
  output notq
);

assign q=~(~r|notq);
assign notq=~(~s|q);
  
  
endmodule
