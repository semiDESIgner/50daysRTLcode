`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2022 19:16:36
// Design Name: 
// Module Name: datahide
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
class firstt;
local bit [3:0]data;
function bit [3:0] get_data(input [3:0]a,b);
$display("The hidden value id %0b",a+b);
endfunction

endclass

module hidden();
bit [3:0]temp;
firstt d1;
initial begin
d1=new();
d1.get_data(4'b1100,4'b1111);
end
endmodule

