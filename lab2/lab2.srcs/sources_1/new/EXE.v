`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 18:06:14
// Design Name: 
// Module Name: EXE
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


module EXE(
    input   [31:0]instr,
    input   [31:0]pc,
    input   [31:0]busA,
    input   [31:0]busB,
    input   [31:0]extend,
    input   ALUSrc,
    input   [2:0]aluctr,
    input   clk,
    input   jump,
    input   branch,
    output  [31:0]aluresult,
    output  [31:0]outbusB,
    output  npcsign,
    output  [31:0]npc
    );
    assign outbusB = busB;
    wire    [31:0]muxout;
    wire    zero;
    MUX_32 MUX_32(busB,extend,ALUSrc,muxout);
    ALU ALU(busA,muxout,aluctr,aluresult,zero);
    NPC NPC(branch,jump,zero,pc,instr,extend,npc,npcsign);

endmodule
