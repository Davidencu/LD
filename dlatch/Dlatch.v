module Dlatch(
  input d,
  input enable,
  output reg q,
  output reg notq
);
  

  
  always @(*)
    begin
      if (enable)
        begin
          q=d;
          notq=~d;
        end
    end
  
endmodule
