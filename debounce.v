`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:26 09/20/2013 
// Design Name: 
// Module Name:    debounce 
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
module debounce(clk, rstb,tick,sw,db);

input clk;
input rstb;
input sw;
input tick;
output db;

reg [2:0] present;
reg [2:0] next;

assign db = present[2];

parameter [2:0]
			s00 = 3'b000,
			s01 = 3'b001,
			s02 = 3'b010,
			s03 = 3'b011,
			s10 = 3'b100,
			s11 = 3'b101,
			s12 = 3'b110,
			s13 = 3'b111;
			
always @ (posedge clk, negedge rstb)

if (!rstb) present <= 3'b000;
else 		  present <= next;


always @(*)

begin
next = present;

case (present)

s00: next = (sw) 			? s01:s00;

s01: next = (sw & tick) ? s02:
				(sw)			? s01:
								  s00;
								
s02: next = (sw & tick) ? s03:
				(sw)			? s02:
								  s00;

s03: next = (sw & tick) ? s10:
				(sw)			? s03:
								  s00;
								
s10: next = (!sw) 		? s11:s10;
			
s11: next = (!sw & tick)? s12:
			   (!sw)			? s11:
								  s10;
								
s12: next = (!sw & tick)? s13:
			   (!sw)			? s12:
								  s10;

s13: next = (!sw & tick)? s01:
			   (!sw)			? s13:
								  s10;
								
default next = s00;

endcase
end
endmodule
