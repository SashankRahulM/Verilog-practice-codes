`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////
// Engineer: Sashank Rahul. M
// 
// Create Date: 30.05.2026 19:25:22
// Design Name: full adder block
// Module Name: fulladder
// Project Name: 4-Bit Ripple Carry Adder
// Target Devices: Basys 3 FPGA board
// Tool Versions: 2025.2
// 
// Dependencies: Xilinx Vivado
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *S - sum (1-bit)
//                      *Cout - output carry (1-bit)
//                      *A - input A (1-bit)
//                      *B - input B (1 bit)
//                      *C - input carry (1-bit) 
//                      *This modulte compute sum and carry using A, B and C as input
//
////////////////////////////////////////////////////////////////////////////////////////


module fulladder(
    output S,
    input Cout,
    input A,
    input B,
    input C
    );
    
    wire s1,c1,c2;
    
    //Gates G1, G2 computes sum S and Gates G3, G4 and G5 computes carry Cout
    
    xor G1(s1,A,B), G2(S,s1,C), G3(Cout,c2,c1);
    
    and G4(c1,A,B), G5(c2,s1,C);
    
endmodule
