`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:00 03/24/2017 
// Design Name: 
// Module Name:    float_add 
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
module float_add(
    input [22:0] a,
    input [22:0] b,
    input [7:0] shift,
    input sel_b,
    input sel_a,
    output reg [24:0] Out
    );

	wire [23:0] sr_input, alu_input_a;
reg [23:0]	alu_input_b;
	fraction_mux mux0({1'b1,a},{1'b1,b},sel_a,alu_input_a);
	fraction_mux mux1({1'b1,a},{1'b1,b},sel_b,sr_input);
	always@(*)
	begin
	 alu_input_b = sr_input >> shift;
	 Out = alu_input_a + alu_input_b;
	end
endmodule
