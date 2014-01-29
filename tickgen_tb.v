`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:48 09/24/2013
// Design Name:   tickgen
// Module Name:   F:/SOC/Lab1/tickgen_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tickgen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tickgen_tb;

	// Inputs
	reg clk;
	reg rstb;

	// Outputs
	wire tick;

	// Instantiate the Unit Under Test (UUT)
	tickgen uut (
		.clk(clk), 
		.rstb(rstb), 
		.tick(tick)
	);
	
	always #100 clk = ~ clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
        
		// Add stimulus here

	end
      
endmodule

