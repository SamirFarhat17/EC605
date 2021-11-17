`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 07:45:54 PM
// Design Name: 
// Module Name: ins_mem_testbench
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


module ins_mem_testbench();
    
    reg [32-1:0] Address;
	wire [64-1:0] ReadData1;

	reg [32-1:0] memory_file [0:64-1];	// Entire list of memory
	
	Instruction_Memory ins_mem(.Address(Address), .ReadData1(ReadData1));
	
	initial begin
	   Address <= 32'b11110010100_0000000000000001_00000;
	   #50 Address <= Address+1;
	   #50 Address <= Address +1;
	end
endmodule
