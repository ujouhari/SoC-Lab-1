`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:18:10 09/20/2013
// Design Name:   debounce
// Module Name:   F:/SOC/Lab1/debounce_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debounce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debounce_tb;

	// Inputs
	reg clk;
	reg rstb;
	reg tick;
	reg sw;

	// Outputs
	wire db;

	// Instantiate the Unit Under Test (UUT)
	debounce uut (
		.clk(clk), 
		.rstb(rstb), 
		.tick(tick), 
		.sw(sw), 
		.db(db)
	);
	
	always #10 clk = ~clk;
	always #100 tick = ~tick;
	always #1000 sw = ~sw;	

	initial begin
		// Initialize Inputs
		clk = 0;
		rstb = 0;
		tick = 0;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100 rstb = 1;
	
		// Add stimulus here

	end
      
endmodule

