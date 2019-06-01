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
    input   sign,      //选择pc+4还是npc
    input   [31:0]npc, //下一条指令
    output  [31:2]if_id_instr,
    output  [31:2]if_id_pc4
    );
    wire    [31:2]npc1;
    wire    [31:0]instr;
    wire    [31:0]pc4;
    wire    [31:2]npc2;
    
    MUX32 MUX32(pc4,npc,sign,npc1);
    PC  PC(npc1,reset,clk,npc2);
    IM IM(npc2[11:2],if_id_pc4);

    assign pc4 = npc2+4;
endmodule
