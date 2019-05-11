`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:05:02
// Design Name: 
// Module Name: datapath
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


module datapath(
    input   clk,
    input   reset,
    input   [2:0]ALUctr,
    input   Jump,
    input   Branch,
    input   MemtoReg,
    input   MemWrite,
    input   ALUSrc,
    input   RegWrite,
    input   RegDst,
    output  [31:0]data
    );
    
    wire    [31:0]BusA;
    wire    [31:0]BusB;
    wire    [31:0]aluresult;
    wire    zero;

    ALU(BusA,BusB,ALUctr,aluresult,zero);
    dm_4k();
endmodule
