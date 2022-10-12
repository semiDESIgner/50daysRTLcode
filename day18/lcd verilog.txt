`timescale 1ns / 1ps
 
 
module lcd(
   input clk, 
   output reg rs, rw, 
   output en,
   output reg [7:0] dout
    );
 
integer count = 0;
integer  i = 0;
 
parameter send_cmd  = 0;
parameter send_data = 1;
reg state = send_cmd;
 
reg [7:0] data [11:0];
reg ent = 0;
 
initial begin
 
///////////command for LCD , rs = 0
data[0] <= 8'h38; /////2 Lines 5 x 7 matrix
data[1] <= 8'h01; /////CLEAR DISPLAY
data[2] <= 8'h0E;// Display On Cursor Blinking
data[3] <= 8'h06; ////increment cursor from left to right
data[4] <= 8'h80;///// force cursor from beginning of first line
 
////////Data for LCD, rs = 1
data[5]  <= 8'h76; /////ascii value for v
data[6]  <= 8'h65;  ///e
data[7]  <= 8'h72;  ///r
data[8]  <= 8'h69; ///i
data[9]  <= 8'h6c; ///l
data[10] <= 8'h6f; /// o
data[11] <= 8'h67; ///g
end
 
 
always@(posedge clk)
begin
if(count < 10)  ///clk = 100 MHz count = 1000000
   count <= count + 1;
else
   begin
   count <= 0;
   ent <= ~ent;
   end
end
 
 
always@(posedge ent)
begin
case(state)
send_cmd : 
begin
  if(i < 4) 
   begin
    rs <= 1'b0;
    rw <= 1'b0;
    dout <= data[i];
    i <= i + 1;
   end
  else
    begin
    state <= send_data;
    dout <= data[i];
    i <= i + 1;
    end
end
 
send_data : 
begin
  if(i <= 11)
   begin
    rs   <= 1'b1;
    rw   <= 1'b0; 
    dout <= data[i];
    i <= i + 1; 
   end
 else
   begin
   i <= 0;
   state <= send_cmd;
   rs    <= 1'b0;
   rw    <= 1'b0;
   dout  <= 8'h00;
   end
end
 
endcase
 
end
 
assign en = ent;
endmodule