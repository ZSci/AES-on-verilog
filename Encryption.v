`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:11:37 10/20/2017 
// Design Name: 
// Module Name:    Encryption 
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
module shiftrows(data, row1, row2, row3, row4);
	input [15:0] data;
	
	output [3:0] row1;
	output [3:0] row2;
	output [3:0] row3;
	output [3:0] row4;
	
	
	assign row1[3:0] = data[15:12];
	assign row2[3:1] = data[10:8];
	assign row2[0]   = data[11];
	assign row3[3:2] = data[5:4];
	assign row3[2:0] = data[7:6];
	assign row4[3]   = data[0];
	assign row4[2:0] = data[3:1];
	
endmodule


