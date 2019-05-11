`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:21:06
// Design Name: 
// Module Name: Extend
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
 //signal 是无符号拓展和有符号拓展标志，0为无符号拓展
module Extend(
    input   instr[15:0],
    input   extop,
    output  dout[31:0]
    );
    
    assign dout = (extop==1'b0) ? {(16'b0),instr[15:0]} : {{16{instr[15]}},instr[15:0]};
endmodule
