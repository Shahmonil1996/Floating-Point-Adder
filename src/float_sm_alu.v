`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:30 03/24/2017 
// Design Name: 
// Module Name:    float_sm_alu 
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
module float_sm_alu(
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] c,
	 output reg sign
    );
	
	always@(a or b)
	begin
		if(a >= b)
		begin
			c = a-b;
			sign = 1'b0;
		end
		else
		begin
			c=a-b;
			sign = 1'b1;
		end
	end
endmodule
