`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 19:40:54
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
    input   [31:0]pc,
    input   [31:0]Instr,
    input   [31:0]extend,
    output  [31:0]jumpto,
    output  jumpsign
    );
    assign jumpto = (jump == 1'b1) ? {{pc[31:28]},{Instr[25:0]}} :
                 (branch == 1'b0 && jump == 1'b0) ? pc:
                 (zero  ==  1'b0 && branch == 1'b1) ? pc + extend : pc;
    assign jumpsign = (jump == 1'b1) ? 1 :
                      (branch == 1'b0 && jump == 1'b0) ? 0 :
                      (zero  ==  1'b1 && branch == 1'b1) ? 1 : 0;
endmodule
