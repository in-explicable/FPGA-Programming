`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 08:49:56 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
    input clk,
    //input i3,
    //input i2,
    //input i1,
    //input i0,
    output data,
    output y3,
    output y2,
    output y1,
    output y0
    );
wire [1:0] s;
wire [3:0] decode_out;
wire mux_out;
c_counter_binary_0 counter (
  .CLK(clk),  // input wire CLK
  .Q(s)      // output wire [1 : 0] Q
);
mux_4_to_1 m1 (s[1], s[0], i3, i2, i1, i0, mux_out);
decoder_2_to_4 d (mux_out, s, decode_out);
latch l (clk, decode_out, y3, y2, y1, y0);
assign data = mux_out; 


ila_0 your_instance_name (
	.clk(clk), // input wire clk
	.probe0(y3), // input wire [0:0]  probe0  
	.probe1(y2), // input wire [0:0]  probe1 
	.probe2(y1), // input wire [0:0]  probe2 
	.probe3(y0), // input wire [0:0]  probe3 
	.probe4(data), // input wire [0:0]  probe4 
	.probe5(s), // input wire [1:0]  probe5 
	.probe6(i3), // input wire [0:0]  probe6 
	.probe7(i2), // input wire [0:0]  probe7 
	.probe8(i1), // input wire [0:0]  probe8 
	.probe9(i0) // input wire [0:0]  probe9
);

vio_0 vio (
  .clk(clk),                // input wire clk
  .probe_out0(i3),  // output wire [0 : 0] probe_out0
  .probe_out1(i2),  // output wire [0 : 0] probe_out1
  .probe_out2(i1),  // output wire [0 : 0] probe_out2
  .probe_out3(i0)  // output wire [0 : 0] probe_out3
);



endmodule
