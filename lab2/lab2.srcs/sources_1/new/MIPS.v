`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 09:29:06
// Design Name: 
// Module Name: MIPS
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


module MIPS(
    input   clk,
    input   reset
    );

    wire    branch;
    wire    jump;
    wire    memtoreg;
    wire    memwrite;
    wire    alusrc;
    wire    regwrite;
    wire    regdst;
    wire    extop;
    wire    [2:0]aluctr;
    wire    [31:0]data;

    DataPath DataPath(clk,reset,aluctr,jump,branch,memtoreg,memwrite,alusrc,regwrite,regdst,data,extop);
    Control Control(data[31:26],data[5:0],jump,branch,memtoreg,memwrite,alusrc,regwrite,regdst,aluctr,extop);

endmodule
