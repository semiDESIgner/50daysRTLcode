`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////

class second;
bit [3:0] data;

function bit [3:0] get_data(input bit [3:0] a,b);

this.data=a;
return a+b;


endfunction


endclass
//////////////////////////////////////////////////
module tb1();


second s1;
bit [3:0] temp;

initial begin
s1=new();


temp=s1.get_data(4'h0f,4'h0f);
#10;
$display("--------------------------------");
$display("The vale of temp in s1: %0x",temp);
$display("--------------------------------");
end




endmodule



