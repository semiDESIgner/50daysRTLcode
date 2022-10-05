`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2022 18:52:24
// Design Name: 
// Module Name: trans
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
class tranz;
rand bit [3:0]a;
rand bit [3:0]b;
rand bit [3:0]c;
bit [4:0] cout;
bit [4:0] sum;


endclass


module trans();
tranz t1;
integer i;
initial begin
t1=new();

for(i=0;i<10;i++)
begin
t1.randomize();
$display("the vale of a:%d b:%d c:%d",t1.a,t1.b,t1.c);
#10;
end
end
endmodule
