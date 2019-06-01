`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 21:43:33
// Design Name: 
// Module Name: MEMWB
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


module MEMWB(
    input   clk,
    input   [31:0]data,
    input   [31:0]aluresult,
    output  reg [31:0]data1,
    output  reg [31:0]aluresult1
    );
    initial
    begin
        data1 = 0;
        aluresult1 = 0;
    end
    always@(posedge clk)
    begin
        data1 <= data;
        aluresult1 <= aluresult;
    end
endmodule
