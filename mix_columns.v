`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:56:37 10/20/2017 
// Design Name: 
// Module Name:    mix_columns 
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
module mix_columns(data, out);

	input [127:0]data;
	
	wire [31:0] out1;
	wire [31:0] out2;
	wire [31:0] out3;
	wire [31:0] out4;
	
	output [127:0] out;
	
	
	//take a column and rotate twice
	assign out1 = data[63:32];
	assign out2 = data[31:0];	
	assign out3 = data[127:96];
	assign out4 = data[95:64];
	
	assign out = {out1, out2, out3, out4};


endmodule
