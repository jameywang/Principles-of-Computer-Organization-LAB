`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:20:50
// Design Name: 
// Module Name: Register
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


module Register(
    input   [4:0]addr1,
    input   [4:0]addr2,
    input   [4:0]addr,
    input   [31:0]data,
    input   RegWrite,
    input   clk,
    output  [31:0]busA,
    output  [31:0]busB
    );

    reg[31:0]   register[31:0];

    initial
        register[0] = 32'b0;

    assign  busA = register[addr1];
    assign  busB = register[addr2];

    always@(posedge clk)
    begin
        if(RegWrite &&(addr!=5'b0))      //do not change reg[0]
            register[addr] <= data;
    end
endmodule
