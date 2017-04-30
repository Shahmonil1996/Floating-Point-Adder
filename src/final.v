`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:48 04/07/2017 
// Design Name: 
// Module Name:    final 
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
module final(
    input [7:0] exp_diff,
    input inc_control,
    input [24:0] shifter,
    output reg[7:0] exp_out,
    output reg [24:0] frac_out
    );

	always@(*)
	begin
		if(inc_control > 0)
			begin
				exp_out = exp_diff + 8'b1;
				frac_out = shifter >> 1'b1;
			end

		else
			begin
				exp_out = exp_diff - 8'b0;
				frac_out = shifter << 1'b0;				
			end
	end
endmodule
