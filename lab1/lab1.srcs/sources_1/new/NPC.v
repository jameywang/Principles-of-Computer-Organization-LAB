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
    input   [25:0]Instr,
    input   [31:0]extend,
    output  reg [31:2]npc
    );

    always@(branch or jump or zero or pc or Instr or extend)
    begin
        if(jump == 1'b1)
            npc = {{pc[31:28]},{Instr[25:0]}};
        else if(branch == 1'b1 && zero == 1'b1)
            npc = pc + 1 + {{extend[31:0]},2'b0};
        else if(branch == 1'b0)
            npc = pc +1;

    end
    
endmodule
