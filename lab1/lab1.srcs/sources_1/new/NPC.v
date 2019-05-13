`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:19:26
// Design Name: 
// Module Name: NPC
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


module NPC(
    input   branch,
    input   jump,
    input   zero,
    input   [31:2]pc,
    input   [31:0]Instr,
    output  [31:2]npc
    );
    assign npc = (jump == 1'b1) ? {{pc[31:28]},{Instr[25:0]}} :
                 (branch == 1'b1 && zero == 1'b1) ? pc + 1 + {{14{Instr[15]}},Instr[15:0]} :
                 (branch == 1'b0) ? pc +1 : 32'b0;
    
endmodule
