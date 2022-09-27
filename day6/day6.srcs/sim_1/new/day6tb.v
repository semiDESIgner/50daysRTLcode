`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2022 20:34:00
// Design Name: 
// Module Name: day6tb
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


module day6tb();
reg clk,we,rst;
reg [5:0] addr;
reg [7:0]din;
wire [7:0] out;
genvar i;
day6 duu1(.clk(clk),.rst(rst),.we(we),.addr(addr),.din(din),.out(out));
initial begin
clk=1'b0;
addr=6'b00;
rst=1'b0;
we=1'b0;
din=8'b0;
end
always#5 clk=~clk;
always#500 rst=~rst;
always#100 we=~we;
always#2 addr[0]=~addr[0];
always#4 din[0]=~din[0];
for(i=1;i<31;i=i*5)
begin
always#i addr[i]=~addr[i];
end
for(i=1;i<41;i=i*5)
begin
always#i din[i]=~din[i];
end


endmodule
