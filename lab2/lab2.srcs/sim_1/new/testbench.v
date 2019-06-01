`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/01 19:36:24
// Design Name: 
// Module Name: testbench
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


module testbench(
    );
    reg reset,clk;
    initial
    begin
        clk = 1'b0;
        reset = 1'b1;
        #40
        reset=1'b0;
    end
    MIPS mips(clk,reset);
    always #20
        clk = ~clk;
endmodule
