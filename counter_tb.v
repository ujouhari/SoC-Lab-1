`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:43 09/20/2013
// Design Name:   counter
// Module Name:   F:/SOC/Lab1/counter_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg inc;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rstb(rstb), 
		.inc(inc), 
		.count(count)
	);
	
	always #50 clk = ~ clk;
	always #30 inc = ~ inc;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		inc = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
        
		// Add stimulus here

	end
      
endmodule

