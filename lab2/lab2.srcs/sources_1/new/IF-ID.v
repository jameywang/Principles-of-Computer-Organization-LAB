`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 20:36:03
// Design Name: 
// Module Name: IF-ID
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


module IFID(
    input   clk,
    input   [31:0]pc,
    input   [31:0]instr,
    output  reg [31:0]instr1,
    output  reg [31:0]pc4
    );
    initial
    begin
      instr1 = 0;
      pc4 = 0;
    end
    always@(posedge clk)
    begin
      instr1 <= instr;
      pc4 <= pc;
    end
endmodule
