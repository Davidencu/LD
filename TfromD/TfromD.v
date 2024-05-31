`timescale 1ns/1ps
`include "dflipflop.v"

module TfromD
(
  input wire clk,
  input wire t,
  input wire rst,
  output q,
  output nq
);
  
  wire w;
  assign w=t^q;
  
  dflipflop DFF(
 	.clk(clk),
    .d(w),
  	.rst(rst),
    .q(q),
  	.nq(nq)  
);
  
endmodule
