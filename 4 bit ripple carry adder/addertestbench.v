`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////////////// Engineer: Sashank Rahul. M
// 
// Create Date: 30.05.2026 19:54:09
// Design Name: Test bench for 4-bit ripple carry adder
// Module Name: addertestbench
// Project Name: 4-Bit Ripple Carry Adder
// Target Devices: Basys 3 FPGA board
// Tool Versions: 2025.2 
// 
// Dependencies: fulladder.v, ripplecarryadder_4bit.v, Xilinx Vivado
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *This test bench gives somes sample inputs to the DUT to check its functionality
// 
//////////////////////////////////////////////////////////////////////////////////////////////////////////


module addertestbench;

reg [3:0]A,B;

reg Cin;

wire [3:0]Sum;

wire Cout;

ripplecarryadder_4bit DUT (Sum,Cout,A,B,Cin); //instantiation of 4 - bit Ripple Carry Adder

initial

  begin
  
  $monitor($time,"A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b",A,B,Cin,Sum,Cout); //this displays output in the shell
  
  #5 A = 4'd3; B = 4'd8; Cin=1'b0; //test case 1
  
  #5 A = 4'd3; B = 4'd2; Cin=1'b1; //test case 2
  
  #5 A = 4'd10; B = 4'd11; Cin=1'b0; //test case 3
  
  #5 A = 4'd10; B = 4'd4; Cin=1'b1; //test case 4
  
  #5 $finish;  //after 25 ns, the simulation stops
  
  end

endmodule
