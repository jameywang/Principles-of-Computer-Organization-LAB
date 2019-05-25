`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 20:07:51
// Design Name: 
// Module Name: EX-MEM
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


module EXMEM(
    input   clk,
    input   [31:0]pc,
    input   zero,
    input   [31:0]aluresult,
    input   [31:0]busB,
    output  [31:0]pc1,
    output  [31:0]aluresult1,
    output  [31:0]busB1
    );

    always@(posedge clk)
    begin
        pc1 <= pc;
        busB1 <= busB;
        aluresult1 <= aluresult;
    end
endmodule
