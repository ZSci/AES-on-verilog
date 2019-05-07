`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:14:23 10/20/2017 
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
module AES_enc(data, out);
	
	input [127:0] data;
	output [127:0] out;
	
	wire [127:0] w1;
	wire [127:0] w2;
	wire [127:0] w3;
	wire [127:0] w4;
	wire [127:0] w5;
	wire [127:0] w6;
	wire [127:0] w7;
	wire [127:0] w8;
	wire [127:0] w9;
	wire [127:0] w10;
	wire [127:0] w11;
	wire [127:0] w12;
	
	parameter SK   = 128'h912FE45AC71B5EF8A2B3C421FE4A0B3F;
	parameter SK1  = 128'h62636363626363636263636362636363;
	parameter SK2  = 128'h9B9898C9F9FBFBAA9B9898C9F9FBFBAA;
	parameter SK3  = 128'h90973450696CCFFAF2F457330B0FAC99;
	parameter SK4  = 128'hEE06DA7B876A1581759E42B27E91EE2B;
	parameter SK5  = 128'h7F2E2B88F8443E098DDA7CBBF34B9290;
	parameter SK6  = 128'hEC614B851425758C99FF09376AB49BA7;
	parameter SK7  = 128'h217517873550620BACAF6B3CC61BF09B;
	parameter SK8  = 128'h0EF903333BA9613897060A04511DFA9F;
	parameter SK9  = 128'hB1D4D8E28A7DB9DA1D7BB3DE4C664941;
	parameter SK10 = 128'hB4EF5BCB3E92E21123E951CF6F8F188E;

	round_key  k0(data, SK, w1);
	
	round_eval r1(w1, SK1, w2);
	round_eval r2(w2, SK2, w3);
	round_eval r3(w3, SK3, w4);
	round_eval r4(w4, SK4, w5);
	round_eval r5(w5, SK5, w6);
	round_eval r6(w6, SK6, w7);
	round_eval r7(w7, SK7, w8);
	round_eval r8(w8, SK8, w9);
	round_eval r9(w9, SK9, w10);
	
	byte_sub   b10(w10, w11);
	shift_rows s10(w11, w12);
	round_key  r10(w12, SK10, out);
	
endmodule
