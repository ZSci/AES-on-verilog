`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:53:45 10/20/2017 
// Design Name: 
// Module Name:    AES_enc 
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
module AES_enc_dec(data, out);
	input [127:0] data;
	
	wire [127:0] w1;
	
	output [127:0] out;
	
	AES_enc en(data, w1);
	AES_dec de(w1, out);

	
endmodule
