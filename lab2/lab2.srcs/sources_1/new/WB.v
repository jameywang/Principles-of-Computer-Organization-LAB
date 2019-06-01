`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/01 17:58:32
// Design Name: 
// Module Name: WB
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


module WB(
    input   [31:0]data,
    input   [31:0]aluresult,
    input   MemtoReg,
    output  [31:0]writeback
    );

    MUX32 MUX32(data[31:0],aluresult[31:0],MemtoReg,writeback);
endmodule
