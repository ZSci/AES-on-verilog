`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:27:56 10/20/2017 
// Design Name: 
// Module Name:    byte_sub 
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
module byte_sub(data, out);

	input [127:0] data;
	
	output [127:0] out;
	
	assign out = ~data;

endmodule
