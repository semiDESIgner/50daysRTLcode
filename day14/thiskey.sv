`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2022 18:29:49
// Design Name: 
// Module Name: thiskey
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
class get_data;
bit [3:0]a;

function getz(input bit [3:0]a);
this.a=a;

endfunction


endclass




module thiskey();
get_data d1;
bit [3:0]temp;
initial begin
d1=new();
d1.getz(4'b0101);
temp=d1.a;
$display("%0b",temp);
end
endmodule
