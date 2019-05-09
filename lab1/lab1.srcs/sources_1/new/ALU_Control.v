`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 11:06:21
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
    input   [2:0]ALUop,
    input   [5:0]Instr
    output  [2:0]ALUctr
    );

    always@(ALUop or Instr)
    begin
        if(ALUop == 3'b001)
            ALUctr = 3'b001;
        else if(ALUop == 3'b010)
            ALUctr = 3'b010;
        else if(ALUop == 3'b011)
            ALUctr = 3'b011;
        else if(ALUop == 3'b111)
            ALUctr = 3'b111;
    end
endmodule
