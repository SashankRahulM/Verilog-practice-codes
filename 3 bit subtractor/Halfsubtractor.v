`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: SASHANK RAHUL. M
// 
// Create Date: 31.05.2026 17:50:47
// Design Name: Half subtractor
// Module Name: Halfsubtractor
// Project Name: 3-Bit Subtractor
// Target Devices: Basys3 FPGA Board
// Tool Versions: 2025.2
// Description: This modules finds the difference and borrow of two input bits
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:*A - first 1-bit input
//                     *B - second 1-bit input
//                     *Diff - 1-bit difference
//                     *Bout - 1-bit borrow
//
//////////////////////////////////////////////////////////////////////////////////


module Halfsubtractor(
    output Diff,
    output Bout,
    input A,
    input B
    );
    
    wire Diff, Bout;
    
    assign Diff = (A^B); // calculates the difference
    
    assign Bout = ((~A)&&B); //calculates the borrow
    
endmodule
