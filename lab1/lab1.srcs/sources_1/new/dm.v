`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:14:18
// Design Name: 
// Module Name: dm
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


module dm_4k(addr,din,we,clk,dout);
    input   [11:2]addr;
    input   [31:0]din;
    input   we;
    input   clk ;
    output  [31:0]dout;
    reg     [31:0]dm[1023:0];

    assign dout = dm[addr];
    always@(posedge clk)
        begin
            if(we)
                dm[addr] <= din;
        end
    
endmodule