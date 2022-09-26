`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 18:00:51
// Design Name: 
// Module Name: vedic2x2
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


module vedic2x2(input [1:0] a,b,output  [3:0]y

    );
    
    wire [3:0] temp;
    assign temp[1:0]=(a[1]&b[0]) | (a[0]&b[1]);
   assign  y[0]=a[0]&b[0];
   assign y[1]=temp[0];
   assign temp[3:2]=(a[1]&b[1]) | temp[1];
   assign y[2]=temp[2];
   assign y[3]=temp[3];
   
   
    
    
   
endmodule
