`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/09 18:29:47
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input   [31:26]Instr,
    output   [2:0]ALUop,
    output   Jump,
    output   Branch,
    output   MemtoReg,
    output   MemWrite,
    output   ALUSrc,
    output   RegWrite,
    output   RegDst
    );
    always@(Instr)
    begin
        assign  Jump = (Instr == 6'b000010) ? 1 : 0;
        assign  Branch = (Instr == 6'b000010) ? 1 : 0;
        assign  MemtoReg = (Instr == 6'b100011) ? 1 : 0;
        assign  MemWrite = (Instr == 6'b101011) ? 1 : 0;
        assign  ALUSrc = (Instr == 6'b100011) ? 1 : (Instr == 6'b101011) ? 1 : 0;
        assign  RegWrite = (Instr == 6'b101011) ? 0 : (Instr == 6'b000100) ? 0 : (Instr == 6'b000010) ? 0 : 1;
        assign  RegDst = (Instr == 6'b100011) ? 1 : 0;
        assign  ALUop = (Instr == 6'b000000) ? 3'b001 : (Instr == 6'b100011) ? 3'b000 : (Instr == 6'b101011) ? 3'b000 : (Instr == 6'b000100) ? 3'b100 : 3'b111;
    end
endmodule
