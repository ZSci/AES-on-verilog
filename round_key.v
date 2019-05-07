`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:45:49 10/20/2017 
// Design Name: 
// Module Name:    round_key 
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
module round_key(data, key, out);
	
	input [127:0] data;
	input [127:0] key;
	output [127:0] out;
	
	assign out = data ^ key;
	
endmodule
