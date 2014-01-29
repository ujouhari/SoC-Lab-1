`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:02 09/20/2013 
// Design Name: 
// Module Name:    tickgen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tickgen(clk,rstb,tick);

input clk;
input rstb;
output tick;

reg [18:0] counter;
wire tick;

assign tick = (counter == 499_999);

always @(posedge clk, negedge rstb)

if 	  (!rstb) counter <= 18'b0;
else if (tick)  counter <= 18'b0;
else				 counter <= counter +1;


endmodule
