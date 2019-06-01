`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 09:07:57
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
    input   [31:0]npc,
    input   reset,
    input   clk,
    output  reg [31:0]pc
    );

    initial
        pc <= 30'b110000_0000_00;
    always@(posedge clk or posedge reset)
    begin
        if(reset==1'b1)
            pc <= 30'b110000_0000_00;
        else
            pc <= npc;
    end
endmodule
