`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 17:58:22
// Design Name: 
// Module Name: ID-EX
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


module IDEX(
    input   clk,
    input   [31:0]pc4,
    input   [31:0]busA,
    input   [31:0]busB,
    input   [31:0]extend,
    output  [31:0]pc,
    output  [31:0]busA1,
    output  [31:0]busB1,
    output  [31:0]extend1
    );

    always@(posedge clk)
    begin
        pc <= pc4;
        busA1 <= busA;
        busB1 <= busB;
        extend1 <= extend;
    end
endmodule
