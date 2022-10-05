`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2022 19:35:25
// Design Name: 
// Module Name: asst
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
class transictions;
rand bit [1:0] a;
constraint c1{a>2'b10;a<2'b11;};


endclass


module asst();
transictions t1;
bit [1:0] temp;
initial begin
t1=new();


assert(t1.randomize())
temp=t1.a;
else
$fatal("randomisation is unsuccessful");
#10;
$display("The value of a is %0b",temp);
end

endmodule
