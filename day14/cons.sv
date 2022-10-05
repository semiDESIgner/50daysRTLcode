`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2022 20:00:00
// Design Name: 
// Module Name: cons
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
class transi;
randc bit [3:0]a;
constraint d1{a>4;a<20;};

endclass

module cons();


transi t1;
transi t2;


integer i;
bit [3:0]temp1,temp2;


initial begin
t1=new();
t2=new();
for(i=0;i<24;i++)
begin
t1.d1.constraint_mode(0);
t2.d1.constraint_mode(1); ///// removes this particular consatraints.
t1.randomize();
t2.randomize();
temp1=t1.a;
temp2=t2.a;
$display("the value of ain t1 is %d and t2 is : %d",temp1,temp2);
end
end

endmodule
