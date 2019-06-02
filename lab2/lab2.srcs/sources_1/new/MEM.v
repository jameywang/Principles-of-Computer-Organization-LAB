`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 20:29:22
// Design Name: 
// Module Name: MEM
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


module MEM(
    input   [31:0]addr,
    input   [31:0]writedata,
    input   we,
    input   clk,
    output  [31:0]dout,
    output  [31:0]aluresult
    );
    
    assign aluresult = addr;
    dm_4k DM(addr[11:2],writedata[31:0],we,clk,dout);
endmodule
