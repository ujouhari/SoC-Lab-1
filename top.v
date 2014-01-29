`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:10 09/23/2013 
// Design Name: 
// Module Name:    top 
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
module top(clk, rst, sw, count);

input clk;
input rst;
input sw;
output [7:0] count;

aiso aiso (.clk (clk), .rst (rst), .rstbs (rstbs));

tickgen tickgen (.clk (clk), .rstb (rstbs), .tick(tick));

debounce debounce (.clk(clk), .rstb (rstbs) ,.tick(tick) ,.sw(sw), .db (db));

pulsemaker pulsemaker (.clk(clk) , .rstb (rstbs) ,.in (db), .pulse(pulse));

counter counter (.clk(clk), .rstb (rstbs) , .inc (pulse) , .count(count));

endmodule
