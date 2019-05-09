`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 10:19:06
// Design Name: 
// Module Name: ALU
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


module ALU(
    input   [31:0]data1,
    input   [31:0]data2,
    input   [2:0]ALUctr,
    output  [31:0]result,
    output  zero
    );
    reg[31:0]   result;

    always@(data1 or data2 or ALUctr)
    begin
        if(ALUctr==3'b001)
            result = data1 + data2;
        else if(ALUctr==3'b010)
            result = data1 & data2;
        else if(ALUctr==3'b101)
            result = data1 - data2;
        else if(ALUctr==3'b011)
            result = data1 | data2;
        else if(ALUctr==3'b111)
            result = (data1 < data2) ? 32b'1 : 32b'0;
        
        zero = (output == 32b'0) ? 1b'1 : 1b'0;

    end
endmodule
