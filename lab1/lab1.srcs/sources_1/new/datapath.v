`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:05:02
// Design Name: 
// Module Name: datapath
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


module datapath(
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
    output  [31:0]Instr,
    input   extop
    );
    
    wire    [31:0]BusA;
    wire    [31:0]BusB;
    wire    [31:0]aluresult;
    wire    zero;
    wire    [31:0]data1;
    wire    [31:0]dmout;
    wire    [4:0]mux1out;
    wire    [31:0]wb;
    wire    [31:2]npc;
    wire    [31:2]pc;
    wire    [31:0]extend1;

    ALU alu(BusA,data1,ALUctr,aluresult,zero);
    dm_4k dm(aluresult[11:2],BusB,MemWrite,clk,dmout);
    Extend extend(Instr[15:0],extop,extend1);
    im_4k im(pc[11:2],Instr);
    MUX_5 mux(Instr[20:16],Instr[15:11],RegDst,mux1out);
    Register register(Instr[25:21],Instr[20:16],mux1out,wb,RegWrite,clk,BusA,BusB);
    PC pc1(clk,reset,npc,pc);
    NPC npc1(Branch,Jump,zero,pc,Instr[25:0],extend1,npc);
    MUX_32 mux1 (BusB,extend1,ALUSrc,data1);
    MUX_32 mux2 (aluresult,dmout,MemtoReg,wb);
    
endmodule
