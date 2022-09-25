`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2022 18:38:49
// Design Name: 
// Module Name: day4tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module day4tb();
wire y;
reg a,clk,rst;
day4seqdec duu1(.clk(clk),.a(a),.rst(rst),.y(y));

initial begin
clk=1'b0;
rst=1'b0;
a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b0;
#10 a=1'b1;
#10 a=1'b0;
#10 a=1'b0;

end

always#5 clk=~clk;
always#100 rst=~rst;


endmodule
