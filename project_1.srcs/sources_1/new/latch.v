`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 08:49:56 PM
// Design Name: 
// Module Name: latch
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


module latch(
    input clk,
    input [3:0] in,
    output reg y3,
    output reg y2,
    output reg y1,
    output reg y0
    );
always @(clk or in) begin
    y3 = in[3];
    y2 = in[2];
    y1 = in[1];
    y0 = in[0];
end
endmodule
