`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:05:27
// Design Name: 
// Module Name: control
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


module control(
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
    
    ControlUnit(Instr,ALUop,Jump,Branch,MemtoReg,MemWrite,ALUSrc,RegWrite,RegDst,ExtOp);
    ALU_Control(ALUop,Instr,ALUctr);
endmodule
