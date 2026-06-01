`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Engineer: Sashank Rahul. M
// 
// Create Date: 30.05.2026 19:11:24
// Design Name: ripplecarryadder_4bit
// Module Name: ripplecarryadder_4bit
// Project Name: 4-Bit Ripple Carry Adder
// Target Devices: Basys 3 FPGA Board
// Tool Versions: 2025.2
// 
// Dependencies: fulladder.v, Xilinx Vivado, Basys3.XDC
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *s - Sum (output of size 4bit)
//                      *cout - Output carry (size 1 bit)
//                      *A - Input operand A (size 4 bits)
//                      *B - Input operand B (size 4 bits)
//                      *cin - Input carry (size 1 bits)
//                      *This module perform 4 bit addition of two 4-bit inputs A and B with input carry cin to produce 4-bit sum value with 1-bit output carry using ripple carry adder 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module ripplecarryadder_4bit(
    output [3:0] s,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
    );
    
    wire c1,c2,c3;
    
    fulladder FA0 (s[0],c1,a[0],b[0],cin); //first full adder that gives LSB of SUM (s[0]) and intermediate carry c1
    
    fulladder FA1 (s[1],c2,a[1],b[1],c1); //second full adder that gives s[1] and intermediate carry c2 
    
    fulladder FA2 (s[2],c3,a[2],b[2],c2); //third full adder that gives s[2] and intermediate carry c3
    
    fulladder FA3 (s[3],cout,a[3],b[3],c3); //fourt full adder that gives MSB of SUM(s[3]) and output carry cout
    
endmodule
