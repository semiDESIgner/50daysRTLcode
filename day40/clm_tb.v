`timescale 1ns/1ps
`define DELAY 10
module cla_multiplier_tb();
 parameter MULTICAND_WID = 32;
 parameter MULTIPLIER_WID = 32;

 reg [MULTICAND_WID-1:0] multicand; 
 reg [MULTIPLIER_WID-1:0]multiplier;



 wire [(MULTICAND_WID+MULTIPLIER_WID-1):0]product;//

 cpu_wb_cla_multiplier mul1(
      .product (product[(MULTICAND_WID+MULTIPLIER_WID-1):0]),
     
      .multicand (multicand[MULTICAND_WID-1:0]),
     .multiplier (multiplier[MULTIPLIER_WID-1:0]));

 integer i;
 initial begin
 for (i = 0; i < 30; i = i + 1) begin: W
  #(`DELAY) multicand = multicand + 1; multiplier = multiplier + 1;
   end
 
  #(`DELAY) 
  multicand = 32'h00007FFF;
  multiplier = 32'h0000007F;
 
  #(`DELAY) 
  multicand = 32'h00008000;
  multiplier = 32'h000000F0;
 
  #(`DELAY) 
  multicand = 32'h00008FF0;
  multiplier = 32'h000000F0;
 
  #(`DELAY) 
  multicand = 32'h00007FF0;
  multiplier = 32'h000000F7;
 
  #(`DELAY) 
  multicand = 32'h0000FFFF;
  multiplier = 32'h000000FF;
 end
endmodule
