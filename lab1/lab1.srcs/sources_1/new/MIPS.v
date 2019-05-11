`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 09:45:27
// Design Name: 
// Module Name: mips
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
    wire    [2:0]aluctr;
    wire    [31:0]data;

    datapath datap(clk,reset,aluctr,jump,branch,memtoreg,memwrite,alusrc,regwrite,regdst,data);
    control control1(data[31:26],data[4:0],jump,branch,memtoreg,memwrite,alusrc,regwrite,regdst,aluctr);

endmodule
