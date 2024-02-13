`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 08:49:56 PM
// Design Name: 
// Module Name: decoder_2_to_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_2_to_4(
    input en,
    input [1:0] in,
    output reg [3:0] out
    );
always @(in or en) begin
    if (en) begin
    case (in)
    2'b00: out = 4'b0001;
    2'b01: out = 4'b0010;
    2'b10: out = 4'b0100;
    2'b11: out = 4'b1000;
    default: out = 4'd0;
    endcase
    end
    else out = 4'd0;
end
endmodule
