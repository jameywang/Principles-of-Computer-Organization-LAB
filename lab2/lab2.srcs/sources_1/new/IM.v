`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 20:36:16
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


module IM(
    input   [11:2]addr,
    output  [31:0]dout  
    );
    reg     [31:0]im[1023:0];

    initial
       $readmemh("C:/Users/qinmaye/Desktop/code",im);
        //    $readmemb("C:/Users/qinmaye/Desktop/code1.txt",im);
    assign dout = im[addr];
endmodule
