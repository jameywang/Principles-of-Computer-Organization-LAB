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
    
    wire signed a = data1;
    wire signed b = data2;
    assign result = (ALUctr==3'b001) ? data1 + data2 :
                    (ALUctr==3'b010) ? data1 & data2 :
                    (ALUctr==3'b101) ? data1 - data2 :
                    (ALUctr==3'b011) ? data1 | data2 :
                    (ALUctr==3'b000) ? ((data1 < data2) ? 32'b1 : 32'b0) :
                    (ALUctr==3'b111) ? ((a < b) ? 32'b1 : 32'b0) : 32'b0;
    
    assign zero = (result == 32'b0) ? 1'b0 : 1'b1;

endmodule
