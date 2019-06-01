`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 21:55:23
// Design Name: 
// Module Name: Control
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


module Control(
    input   [31:26]Instr,
    input   [5:0]func,
    output  Jump,
    output  Branch,
    output  MemtoReg,
    output  MemWrite,
    output  ALUSrc,
    output  RegWrite,
    output  RegDst,
    output  [2:0]ALUctr,
    output  ExtOp
    );
    wire [2:0]ALUop;
    
    Control_Unit Control_Unit(Instr,ALUop,Jump,Branch,MemtoReg,MemWrite,ALUSrc,RegWrite,RegDst,ExtOp);
    ALU_Control ALU_Control(ALUop,func,ALUctr);
endmodule
