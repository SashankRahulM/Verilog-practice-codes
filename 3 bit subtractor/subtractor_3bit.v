`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Engineer: SASHANK RAHUL. M
// 
// Create Date: 31.05.2026 16:41:47
// Design Name: 3-Bit Subtractor
// Module Name: subtractor_3bit
// Project Name: 3-Bit Subtractor
// Target Devices: Basys 3 FPGA Board
// Tool Versions: Vivado 2025.2
// Description: This module performs subtraction between two 3-bit numbers to give 3-bit difference and 1-bit output Borrow
// 
// Dependencies: Xilinx Vivado, Basys3.XDC, Halfsubtractor.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:*In1 - first 3-bit input
//                     *In2 - Second 3-bit input
//                     *Bin - input borrow
//                     *Diff - 3-bit difference between In1 and In2
//                     *Bout - 1-bit output borrow
// 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module subtractor_3bit(
    input [2:0] In1,
    input [2:0] In2,
    input Bin,
    output [2:0] Diff,
    output Bout
    );
    
    wire [2:0]d; // intermediate difference wires
    
    wire [5:0]b; // intermediate borrow wires
    
    wire [1:0]Bint; //intermediate output borrow wires between stages
    
    Halfsubtractor m1 (d[0],b[0],In1[0],In2[0]); //calculates intemediate difference d[0] and intermediate borrow b[0]
    
    Halfsubtractor m2 (Diff[0],b[1],d[0],Bin); //calculates LSB of main difference (Diff[0]) and intermediate borrow b[1]
    
    or m3 (Bint[0], b[0], b[1]); //calculates intermediate output borrow Bint[0]
    
    Halfsubtractor m4 (d[1],b[2],In1[1],In2[1]); //calculates intemediate difference d[1] and intermediate borrow b[2]
    
    Halfsubtractor m5 (Diff[1],b[3],d[1],Bint[0]); //calculates middle bit of main difference (Diff[1]) and intermediate borrow b[3]
    
    or m6 (Bint[1], b[2], b[3]); //calculates intermediate output borrow Bint[1] 
    
    Halfsubtractor m7 (d[2],b[4],In1[2],In2[2]); //calculates intemediate difference d[2] and intermediate borrow b[4]
    
    Halfsubtractor m8 (Diff[2],b[5],d[2],Bint[1]); //calculates MSB bit of main difference (Diff[2]) and intermediate borrow b[3]
    
    or m9 (Bout, b[4], b[5]); //Calculated Bout
    
endmodule
