`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:20 03/24/2017 
// Design Name: 
// Module Name:    fraction_mux 
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
module fraction_mux(
    input [23:0] a,
    input [23:0] b,
    input sel,
    output [23:0] Out
    );
	assign Out = (sel) ? b : a;
endmodule
