`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 18:06:14
// Design Name: 
// Module Name: EXE
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


module EXE(
    input   [31:0]pc,
    input   [31:0]busA,
    input   [31:0]busB,
    input   [31:0]extend,
    input   ALUSrc,
    input   [2:0]aluctr,
    input   clk,
    output  [31:0]pc4,
    output  zero,
    output  [31:0]aluresult,
    output  [31:0]extend1,
    output  npcsign
    );
    
    wire    [31:0]muxout;

    MUX_32 MUX_32(busB,extend,ALUSrc,muxout,zero);
    ALU ALU([31:0]busA,[31:0]muxout,[2:0]aluctr,[31:0]aluresult);
    always@(posedge clk)
    begin
        pc4 <= pc;
    end
endmodule
