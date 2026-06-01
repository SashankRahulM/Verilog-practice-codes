`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Sashank Rahul. M
// 
// Create Date: 31.05.2026 17:54:21
// Design Name: Subtractor Test Bench
// Module Name: subtractor_testbench
// Project Name: 3-bit Subtractor
// Target Devices: Basys3 FPGA Board
// Tool Versions: 2025.2
// Description: Generates sample test case to test 3-bit subtractor (DUT)
// 
// Dependencies: Xilinx Vivado, Halfsubtractor.v, subtractor_3bit.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module subtractor_testbench;

reg [2:0]In1;

reg [2:0]In2;

reg Bin;

wire [2:0]Diff;

wire Bout;

subtractor_3bit DUT (In1,In2,Bin,Diff,Bout);

initial

   begin
    
      $monitor($time,"-->In1 = %b, In2 = %b, Bin = %b, Diff = %b, Bout = %b",In1,In2,Bin,Diff,Bout);
      
      #5 In1=0;In2=4;Bin=0; //test case 1
      
      #5 In1=0;In2=2;Bin=1; //test case 2
      
      #5 In1=5;In2=4;Bin=0; //test case 3
      
      #5 In1=6;In2=3;Bin=1; //test case 4
      
      #5 In1=7;In2=7;Bin=0; //test case 5
      
      #5 In1=5;In2=5;Bin=1; //test case 6
      
      #5 In1=7;In2=0;Bin=0; //test case 7
      
      #5 In1=4;In2=3;Bin=1; //test case 8
      
      #5 $finish;
      
   end

endmodule
