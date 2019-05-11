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

    assign ALUctr = (ALUop == 3'b001) ? 3'b001 :
                    (ALUop == 3'b010) ? 3'b010 :
                    (ALUop == 3'b011) ? 3'b011 :
                    (ALUop == 3'b111) ? 3'b111 : 3'b110;
endmodule
