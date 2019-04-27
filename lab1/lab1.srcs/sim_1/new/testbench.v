`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/27 15:47:00
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
    reg [2:0]in;
    wire [7:0]out;
    initial
    begin
        in=3'b000;
    end
    decoder Decoder(
        .x(in),
        .y(out)
    );
    always #20in = in + 1;
    
endmodule
