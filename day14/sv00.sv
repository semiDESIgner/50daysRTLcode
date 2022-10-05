`timescale 1ns / 1ps
 
class first;
bit [7:0] data = 8'hff;
endclass
 
module tb();
 
first f1;
bit [7:0] datarcvd;
 
 
initial begin
f1 = new();
datarcvd = f1.data;
#10;
$display("----------------------------");
$display("Value rcvd : %0x",datarcvd);
$display("-----------------------------");
end
endmodule