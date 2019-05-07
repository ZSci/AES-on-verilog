`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:32 10/20/2017 
// Design Name: 
// Module Name:    round_uneval 
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
module round_uneval(data, key, out);

	input  [127:0] data;
	input  [127:0] key;
	output [127:0] out;
	
	wire [127:0] w1;
	wire [127:0] w2;
	wire [127:0] w3;
	
	unshift_rows  s1(data, w1);
	byte_sub    b1(w1, w2);
	round_key   r1(w2, key, w3);
	mix_columns m1(w3, out);
	
//	round_key     r1(data, key, w1);
//	mix_columns   m1(w1, w2);
//	unshift_rows  s1(w2, w3);
//	byte_sub      b1(w3, out);

endmodule
