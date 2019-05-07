`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:35 10/20/2017 
// Design Name: 
// Module Name:    round_eval 
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
module round_eval(data, key, out);

	input  [127:0] data;
	input  [127:0] key;
	output [127:0] out;
	
	wire [127:0] w1;
	wire [127:0] w2;
	wire [127:0] w3;
	
	byte_sub    b1(data, w1);
	shift_rows  s1(w1, w2);
	mix_columns m1(w2, w3);
	round_key   r1(w3, key, out);

endmodule
