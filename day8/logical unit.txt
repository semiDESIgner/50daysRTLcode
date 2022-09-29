`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2022 18:41:06
// Design Name: 
// Module Name: Lu
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


module logic(a,b,opcode,outlu,za,zb,eq,gt,lt);
input [15:0] a;
input [15:0] b;
input [2:0] opcode;
output [31:0] outlu;
output za, zb,eq,gt,lt;

reg [31:0] outlu;
reg za,zb,eq,gt,lt;

always@(a,b,opcode)
begin
	case(opcode)
	3'b000: outlu = (a & b);
	3'b001: outlu =  (a | b);
	3'b010: outlu = (~(a | b));
	3'b100: outlu =  (~ a);
	3'b101: outlu =  (~ b);
	3'b110: outlu =  (a ^ b);
	3'b111: outlu =  (~(a ^ b));
	default: outlu = 32'h00000000;
	endcase
end

always@(a,b)
begin
	if( a == b) begin
	eq = 1;
	end
	else begin
	eq = 0;
	end

	if ( a > b) begin
	gt = 1;
	end
	else begin
	gt = 0;
	end

	if ( a < b) begin
	lt = 1;
	end
	else begin
	lt = 0;
	end
	
	if( a == 16'h0000) begin
	za = 1;
	end
	else begin
	za = 0;
	end
	
	if (b == 16'h0000) begin
	zb = 1;
	end
	else begin
	zb = 0;
	end
end
endmodule