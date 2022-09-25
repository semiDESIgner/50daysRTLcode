`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2022 18:23:53
// Design Name: 
// Module Name: day4
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


module day4seqdec(input a,clk,rst,output reg y

    );
    parameter idle=0;
    parameter s0=1;
    parameter s1=2;
    parameter s2=3;
    reg [1:0]state=idle;
    
    always@(posedge clk)
    begin
    
    case(state)
    idle:
    if(rst)
    begin
    state=idle;
    y<=1'b0;
    end
    else
    begin
    y<=1'b0;
    state<=s0;
    end
    
    
    
    s0:
    if(a)
    begin
    y<=1'b0;
    state<=s1;
    end
    else
    begin
    state<=s0;
    y<=1'b0;
    end
    s1:
    if(a==1'b0)
    begin
    y<=1'b0;
    state<=s2;
    end
    else
    begin
    state<=s0;
    y<=1'b0;
    
    end
    
    s2:
    if(a==1'b0)
    begin
    y<=1'b1;
    state<=s0;
    end
    else
    begin
    y<=1'b0;
    state<=s0;
    end
    
    
    
    
   
    endcase
    
    end
    
    
endmodule
