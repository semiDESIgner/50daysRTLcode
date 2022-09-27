`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2022 20:27:39
// Design Name: 
// Module Name: day6
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


module day6(input  clk,we,rst,[5:0] addr,[7:0]din,output [7:0] out

    );
    reg [7:0] temp;
    reg [7:0] mem [63:0];
    integer i;
    always@(posedge clk)
    begin
    if(rst)
    begin
    for(i=0;i<64;i=i+1)       //resetting all the values
    begin
    mem[i]=8'h00;
    
    end
    temp<=8'h00;
    
    end
    else
    begin
    if(we)
    
    mem[addr]<=din;   // write operation
    else
    temp<=mem[addr];  // read operation
    
    end
    
    end
    
    assign out= temp;
    
    
   
    
    
    
    
endmodule
