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
module shift_rows(data, out);
	
	input [127:0] data;
	
	wire [31:0] row1;
	wire [31:0] row2;
	wire [31:0] row3;
	wire [31:0] row4;
	
	output [127:0] out;
	
	assign row1[31:0]  = data[127:96];
	assign row2[31:8]  = data[87:64];
	assign row2[7:0]   = data[95:88];
	assign row3[31:16] = data[47:32];
	assign row3[15:0]  = data[63:48];
	assign row4[31:24] = data[7:0];
	assign row4[23:0]  = data[31:8];
	
	assign out = {row1, row2, row3, row4};
	
	//	input [15:0] data;
//	
//	wire [3:0] row1;
//	wire [3:0] row2;
//	wire [3:0] row3;
//	wire [3:0] row4;
//	
//	output [15:0] out;
//	
//	assign row1[3:0] = data[15:12];
//	assign row2[3:1] = data[10:8];
//	assign row2[0]   = data[11];
//	assign row3[3:2] = data[5:4];
//	assign row3[2:0] = data[7:6];
//	assign row4[3]   = data[0];
//	assign row4[2:0] = data[3:1];
//	
//	assign out = {row1, row2, row3, row4};
	
endmodule
