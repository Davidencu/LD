module dflipflop
  (
    input clk,
    input d,
    input rst,
    output reg q,
    output reg nq
  );
  
  always @(posedge clk or negedge rst)
    begin
      if (~rst) begin
      	q<=0;
        nq<=1;
      end
      else
        begin
          q<=d;
          nq<=~d;
        end
    end
  
endmodule