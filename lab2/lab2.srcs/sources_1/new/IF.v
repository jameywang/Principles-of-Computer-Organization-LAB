`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 20:34:23
// Design Name: 
// Module Name: IF
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


module IF(
    input   clk,
    input   reset,
    input   IFlash,
    input   branch,
    input   jump,
    input   zero,
    output  [31:0]if_id_instr,
    output  [31:2]if_id_pc4
    );
    wire    [31:2]PC;
    wire    [31:2]NPC;
    wire    [31:0]instr;
    
    im_4k im_4k(PC[11:2],instr);
    NPC NPC(branch,jump,zero,PC,instr,NPC);
    
    initial
        PC <= 30'b110000_0000_00;

    always@(posedge clk or posedge reset)
    begin
        PC <= (reset==1'b1) ? 30'b110000_0000_00 : NPC;
        if_id_pc4 <= PC+1;
        instr <= (IFlash==1) ? 0 : NPC;
    end
endmodule
