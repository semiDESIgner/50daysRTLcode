`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2022 20:47:29
// Design Name: 
// Module Name: day7
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


module day7(input [3:0] a,b,[0:0]cin,output [3:0]s,[4:0]c

    );
    genvar i;
    assign c[0]=cin;
    for(i=0;i<=5;i=i+1)
    begin
    assign c[i+1]=(a[i]&b[i])|(a[i]^b[i])&c[i];
    assign s[i]=(a[i]^b[i])^c[i];
    end
    
    

    
    
endmodule
