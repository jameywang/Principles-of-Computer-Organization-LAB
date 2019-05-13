`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:19:44
// Design Name: 
// Module Name: PC
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


module PC(
    input   clk,
    input   Reset,
    input   [31:2]NPC,
    output  reg [31:2]PC
    );
    initial
        PC <= 30'b110000_0000_00;
    always@(posedge clk or posedge Reset)
    begin
        if(Reset==1'b1)
            PC <= 30'b110000_0000_00;
        else
            PC <= NPC;
    end
endmodule
