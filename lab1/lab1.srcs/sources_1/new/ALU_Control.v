`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 11:06:21
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
    input   [2:0]ALUop,
    input   [5:0]Instr,
    output  [2:0]ALUctr
    );

    assign ALUctr = (ALUop == 3'b000) ? 3'b001 : 
            (ALUop == 3'b001 && Instr == 6'b100000) ? 3'b001 :
            (ALUop == 3'b001 && Instr == 6'b100010) ? 3'b101 :
            (ALUop == 3'b001 && Instr == 6'b100100) ? 3'b010 : 
            (ALUop == 3'b001 && Instr == 6'b100101) ? 3'b011 : 
            (ALUop == 3'b001 && Instr == 6'b101010) ? 3'b111 :
            (ALUop == 3'b001 && Instr == 6'b101011) ? 3'b000 : 3'b110;
endmodule
