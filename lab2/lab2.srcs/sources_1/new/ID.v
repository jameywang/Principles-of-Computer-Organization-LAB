`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 20:34:04
// Design Name: 
// Module Name: ID
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


module ID(
    input   [31:0]pc4,
    input   [31:0]instr,
    input   RegDst,
    input   extop,
    input   [31:0]writeback,
    output  [31:0]pc4,
    output  [31:0]busA,
    output  [31:0]busB,
    output  [31:0]extend
    );
    wire    [4:0]muxout;

    MUX_5 mux(instr[20:16],instr[15:11],RegDst,muxout);
    Register Register(Instr[25:21],Instr[20:16],muxout,writeback,clk,busA,busB);
    Extend  Extend(instr[15:0],extop,extend);
endmodule
