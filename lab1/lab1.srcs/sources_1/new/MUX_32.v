`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 15:44:23
// Design Name: 
// Module Name: MUX_32
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


module MUX_32(
    input   [31:0]a0,
    input   [31:0]a1,
    input   choose,
    output  [31:0]out
    );

    assign out = (choose==1'b0) ? a0 : a1;
endmodule
