`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 18:19:09
// Design Name: 
// Module Name: tb
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


module tb();
wire [3:0]y;
reg [1:0]a,b;
vedic2x2 duu(.a(a),.b(b),.y(y));
initial begin 
a=2'b00;
b=2'b00;


end
always#10 a[0]=~a[0];
always#20 a[1]=~a[1];
always#30 b[0]=~b[0];
always#40 b[1]=~b[1];

endmodule
