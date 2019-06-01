`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 20:34:04
// Design Name: 
// Module Name: ID
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


module ID(
    input   clk,
    input   [31:0]pc4,
    input   [31:0]Instr,
    input   RegDst,
    input   extop,
    input   [31:0]writeback,
    output  reg [31:0]pc,
    output  [31:0]busA,
    output  [31:0]busB,
    output  [31:0]extend
    );
    wire    [4:0]muxout;

    MUX_5 mux(Instr[20:16],Instr[15:11],RegDst,muxout);
    Register Register(Instr[25:21],Instr[20:16],muxout,writeback,clk,busA,busB);
    Extend  Extend(Instr[15:0],extop,extend);
    always@(posedge clk)
    begin
        pc <= pc4;
    end
endmodule
