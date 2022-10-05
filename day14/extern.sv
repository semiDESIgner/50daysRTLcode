`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 21:43:06
// Design Name: 
// Module Name: extern
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
class datafn;
bit [3:0] d1,d2;

function new(input bit [3:0]a,b);
this.d1=a;
this.d2=b;

endfunction

extern function void display();

endclass

function void datafn::display();
$display("the value of one and 2 is %0b %0b",d1,d2);
endfunction


module ddd();
datafn f1;

initial begin
f1=new(4'b1111,4'b0101);


#20;
d1.display();
end

endmodule
