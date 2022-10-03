`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2022 17:55:10
// Design Name: 
// Module Name: AUnit
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


module arith(a,b,opcode,outau);
input [15:0] a;
input [15:0] b;
input [2:0] opcode;
output reg [31:0] outau;


always@(a,b,opcode)
begin
	case(opcode)
	3'b000: outau = a+b;
	3'b001: outau = a * b;
	3'b010: if (a > b) begin
		outau = a - b;
		end
		else begin
		outau = b - a;
		end
	3'b011: if (a > b) begin
		outau = a / b;
		end
		else begin
		outau = b /a;
		end
	default: outau = 32'h00000000;
	endcase
end
endmodule
