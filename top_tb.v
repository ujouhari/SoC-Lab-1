`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:55:35 09/23/2013
// Design Name:   top
// Module Name:   E:/SOC/Lab1/top_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg clk;
	reg rst;
	reg sw;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst), 
		.sw(sw), 
		.count(count)
	);
	
	always #10 clk = ~clk;	

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100 rst = 0;
		#100 sw = 1;
		
        
		// Add stimulus here

	end
      
endmodule

