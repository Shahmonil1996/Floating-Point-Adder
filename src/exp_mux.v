`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:54 04/07/2017 
// Design Name: 
// Module Name:    exp_mux 
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
module exp_mux(
    input [7:0] exp_a,
    input [7:0] exp_b,
    input sel_c,
    output [7:0] exp_out
    );

	assign exp_out = (sel_c) ? exp_b : exp_a;
endmodule
