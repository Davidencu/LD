`timescale 1ns/1ns
`include "tflipflop.v"


module counter
  (
    input wire ld,
    input wire clk,
    input wire rst,
    output [13:0]o
  );
  
 wire [7:0]q;
 wire [7:0]qn;
  
  tflipflop TF1
  (
    .t(ld),
    .clk(clk),
    .rst(rst),
    .q(q[0]),
    .qn(qn[0])
  );
  
  tflipflop TF2
  (
    .t(ld),
    .clk(qn[0]),
    .rst(rst),
    .q(q[1]),
    .qn(qn[1])
  );
  
  tflipflop TF3
  (
    .t(ld),
    .clk(qn[1]),
    .rst(rst),
    .q(q[2]),
    .qn(qn[2])
  );
  
  tflipflop TF4
  (
    .t(ld),
    .clk(qn[2]),
    .rst(rst),
    .q(q[3]),
    .qn(qn[3])
   
  );
  
  tflipflop TF5
  (
    .t(ld),
    .clk(qn[3]),
    .rst(rst),
    .q(q[4]),
    .qn(qn[4])
  );
  
  tflipflop TF6
  (
    .t(ld),
    .clk(qn[4]),
    .rst(rst),
    .q(q[5]),
    .qn(qn[5])
  );
  
  tflipflop TF7
  (
    .t(ld),
    .clk(qn[5]),
    .rst(rst),
    .q(q[6]),
    .qn(qn[6])
  );
  
  tflipflop TF8
  (
    .t(ld),
    .clk(qn[6]),
    .rst(rst),
    .q(q[7]),
    .qn(qn[7])
  );
 
  assign o[0]=(~q[3]&~q[2]&~q[1]&q[0])|(q[3]&q[2]&~q[1]&q[0])|(~q[3]&q[2]&~q[1]&~q[0])|(q[3]&~q[2]&q[1]&q[0]);
  assign o[1]=(q[3]&q[2]&~q[0])|(q[2]&q[1]&~q[0])|(q[3]&q[1]&q[0])|(~q[3]&q[2]&~q[1]&q[0]);
  assign o[2]=(q[3]&q[2]&q[1])|(q[3]&q[2]&~q[0])|(~q[3]&~q[2]&q[1]&~q[0]);
  assign o[3]=(~q[3]&q[2]&~q[1]&~q[0])|(~q[3]&~q[2]&~q[1]&q[0])|(q[2]&q[1]&q[0])|(q[3]&~q[2]&q[1]&~q[0]);
  assign o[4]=(~q[3]&q[0])|(~q[3]&q[2]&~q[1])|(q[3]&~q[2]&~q[1]&q[0]);
  assign o[5]=(q[3]&q[2]&~q[1]&q[0])|(~q[3]&q[1]&q[0])|(~q[3]&~q[2]&q[1])|(~q[3]&~q[2]&q[0]);
  assign o[6]=(~q[3]&~q[2]&~q[1])|(~q[3]&q[2]&q[1]&q[0])|(q[3]&q[2]&~q[1]&~q[0]);
  assign o[7]=(~q[7]&~q[6]&~q[5]&q[4])|(q[7]&q[6]&~q[5]&q[4])|(~q[7]&q[6]&~q[5]&~q[4])|(q[7]&~q[6]&q[5]&q[4]);
  assign o[8]=(q[7]&q[6]&~q[4])|(q[6]&q[5]&~q[4])|(q[7]&q[5]&q[4])|(~q[7]&q[6]&~q[5]&q[4]);
  assign o[9]=(q[7]&q[6]&q[5])|(q[7]&q[6]&~q[4])|(~q[7]&~q[6]&q[5]&~q[4]);
  assign o[10]=(~q[7]&q[6]&~q[5]&~q[4])|(~q[7]&~q[6]&~q[5]&q[4])|(q[6]&q[5]&q[4])|(q[7]&~q[6]&q[5]&~q[4]);
  assign o[11]=(~q[7]&q[4])|(~q[7]&q[6]&~q[5])|(q[7]&~q[6]&~q[5]&q[4]);
  assign o[12]=(q[7]&q[6]&~q[5]&q[4])|(~q[7]&q[5]&q[4])|(~q[7]&~q[6]&q[5])|(~q[7]&~q[6]&q[4]);
  assign o[13]=(~q[7]&~q[6]&~q[5])|(~q[7]&q[6]&q[5]&q[4])|(q[7]&q[6]&~q[5]&~q[4]);
  
  
endmodule
