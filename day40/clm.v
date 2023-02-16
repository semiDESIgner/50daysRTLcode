`timescale 1ns/1ps
`define DELAY 10
module cpu_wb_cla_multiplier (multicand, multiplier, product);
parameter MULTICAND_WID = 32;
parameter MULTIPLIER_WID = 32;

input [MULTICAND_WID-1:0] multicand;
input [MULTIPLIER_WID-1:0] multiplier;
output [(MULTICAND_WID + MULTIPLIER_WID - 1):0] product;

wire [MULTICAND_WID - 1:0] multicand_tmp [MULTIPLIER_WID-1:0];
wire [MULTICAND_WID - 1:0] product_tmp [MULTIPLIER_WID-1:0];
wire [MULTIPLIER_WID -1:0] carry_tmp;
genvar j, i;
generate 
 for(j = 0; j < MULTIPLIER_WID; j = j + 1) begin: for_loop_j
 assign multicand_tmp[j] =  multicand & {MULTICAND_WID{multiplier[j]}};
 end
 
 assign product_tmp[0] = multicand_tmp[0];
 assign carry_tmp[0] = 1'b0;
 assign product[0] = product_tmp[0][0];

 for(i = 1; i < MULTIPLIER_WID; i = i + 1) begin: for_loop_i
 cpu_wb_cla_adder #(.DATA_WID(MULTIPLIER_WID)) add1 (

     .sum(product_tmp[i]),
     .carry_out(carry_tmp[i]),
   
   .carry_in(1'b0),
     .in1(multicand_tmp[i]),
     .in2({carry_tmp[i-1],product_tmp[i-1][31-:31]}));
 assign product[i] = product_tmp[i][0];
 end 
 assign product[(MULTIPLIER_WID+MULTIPLIER_WID-1):MULTIPLIER_WID] = {carry_tmp[MULTIPLIER_WID-1],product_tmp[MULTIPLIER_WID-1][31-:31]};
endgenerate
endmodule

module cpu_wb_cla_adder (in1, in2, carry_in, sum, carry_out);
parameter DATA_WID = 32;

input [DATA_WID - 1:0] in1;
input [DATA_WID - 1:0] in2;
input carry_in;
output [DATA_WID - 1:0] sum;
output carry_out;

//assign {carry_out, sum} = in1 + in2 + carry_in;

wire [DATA_WID - 1:0] gen;
wire [DATA_WID - 1:0] pro;
wire [DATA_WID:0] carry_tmp;

genvar j, i;
generate
 //assume carry_tmp in is zero
 assign carry_tmp[0] = carry_in;
 
 //carry generator
 for(j = 0; j < DATA_WID; j = j + 1) begin: carry_generator
 assign gen[j] = in1[j] & in2[j];
 assign pro[j] = in1[j] | in2[j];
 assign carry_tmp[j+1] = gen[j] | pro[j] & carry_tmp[j];
 end
 
 //carry out 
 assign carry_out = carry_tmp[DATA_WID];
 
 //calculate sum 
 //assign sum[0] = in1[0] ^ in2 ^ carry_in;
 for(i = 0; i < DATA_WID; i = i+1) begin: sum_without_carry
 assign sum[i] = in1[i] ^ in2[i] ^ carry_tmp[i];
 end 
endgenerate 
endmodule
