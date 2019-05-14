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
    output   RegDst,
    output   Extop
    );
    assign  Jump = (Instr == 6'b000010) ? 1 : 0;
    assign  Branch = (Instr == 6'b000100) ? 1 : 0;
    assign  MemtoReg = (Instr == 6'b100011) ? 1 : 0;
    assign  MemWrite = (Instr == 6'b101011) ? 1 : 0;
    assign  ALUSrc = (Instr == 6'b000000) ? 0 : (Instr == 6'b000100) ? 0 : 1;
    assign  Extop = (Instr == 6'b001101) ? 0 : 1;
    assign  RegWrite = (Instr == 6'b101011) ? 0 : (Instr == 6'b000100) ? 0 : (Instr == 6'b000010) ? 0 : 1;
    assign  RegDst = (Instr == 6'b000000) ? 1 : 0;
    assign  ALUop = (Instr == 6'b000000) ? 3'b001 : (Instr == 6'b001101) ? 3'b010 : (Instr == 6'b000100) ? 3'b011 : (Instr == 6'b001111) ? 3'b100 : 3'b000;
    /*ori    010 |
      R      001 
      beq    011 -
      others 000 +
      lui    100
    */
endmodule
