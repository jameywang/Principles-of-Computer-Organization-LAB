`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:33:49
// Design Name: 
// Module Name: IM
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


module im_4k(addr,dout);
    input   [11:2]addr;
    output  [31:0]dout;

    reg     [31:0]im[1023:0];

    initial
        $readmemh("C:/files/PA-LAB/lab1/code.txt",im);
    assign dout = im[addr];
    
    
endmodule
