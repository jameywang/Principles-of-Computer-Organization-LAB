`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/25 09:41:28
// Design Name: 
// Module Name: MUX_5
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


module MUX_5(
    input   [4:0]a0,
    input   [4:0]a1,
    input   choose,
    output  [4:0]out
    );
    assign out = (choose == 1'b0) ? a0 : a1;
endmodule
