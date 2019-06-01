`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/01 18:34:27
// Design Name: 
// Module Name: DataPath
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


module DataPath(
    input   clk,
    input   reset,
    input   [2:0]ALUctr,
    input   Jump,
    input   Branch,
    input   MemtoReg,
    input   MemWrite,
    input   ALUSrc,
    input   RegWrite,
    input   RegDst,
    input   extop,
    output  [31:0]Instr
    );
    wire    [31:0]npc;
    wire    jumpsign;
    wire    [31:0]writeback;
    wire    [31:0]if_id_instr;
    wire    [31:0]if_id_pc4;
    wire    [31:0]ifid_instr;
    wire    [31:0]ifid_pc;
    wire    [31:0]IDPC;
    wire    [31:0]busA;
    wire    [31:0]busB;
    wire    [31:0]extend;
    wire    [31:0]IDEX_PC;
    wire    [31:0]IDEX_BUSA;
    wire    [31:0]IDEX_BUSB;
    wire    [31:0]IDEX_EXTEND;
    wire    [31:0]npc1;
    wire    [31:0]EXEaluresult;
    wire    [31:0]EXEbusB;
    wire    jumpsign1;
    wire    [31:0]EXEMEMaluresult;
    wire    [31:0]MEMOUT;
    wire    [31:0]MEMout1;
    wire    [31:0]MEMWBout;
    wire    [31:0]MEMWBout1;
    IF IF(clk,reset,jumpsign,npc,if_id_instr,if_id_pc4);
    IFID IFID(clk,if_id_instr,if_id_pc4,ifid_instr,ifid_pc);
    ID ID(clk,ifid_pc,ifid_instr,RegDst,extop,writeback,IDPC,busA,busB,extend);
    IDEX IDEX(clk,IDPC,busA,busB,extend,IDEX_PC,IDEX_BUSA,IDEX_BUSB,IDEX_EXTEND);
    EXE EXE(IDEX_PC,IDEX_BUSA,IDEX_BUSB,IDEX_EXTEND,ALUSrc,ALUctr,clk,Jump,Branch,EXEaluresult,EXEbusB,jumpsign1,npc1);
    EXMEM EXMEM(clk,npc1,EXEaluresult,EXEbusB,jumpsign1,npc,EXEMEMaluresult,EXEbusB,jumpsign);
    MEM MEM(EXEMEMaluresult,EXEbusB,MemWrite,clk,MEMOUT,MEMout1);
    MEMWB MEMEWB(clk,MEMOUT,MEMout1,MEMWBout,MEMWBout1);
    WB WB(MEMWBout,MEMWBout1,MemtoReg,writeback);
endmodule
