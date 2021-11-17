`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2021 04:35:47 PM
// Design Name: 
// Module Name: datapath_testbench
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


module datapath_testbench(

    );

    reg clk,rst;
    

    //ports for IMEM
    reg  [31:0] ins; //instruction
    wire [63:0] ins_Addr; //Instructions Address
    
    //ports for Register file
    reg [63:0] rReadData1, rReadData2;
    wire [4:0] rReadSelect1, rReadSelect2, rWriteSelect; // Control singal for Reginster file
    wire [63:0] rWriteData; // Data wrote to Register file
    wire rWriteEnable; // Control singal for Reginster file

    //ports for Data Memory
    reg [63:0] memReadData; //Read data from memory
    wire [63:0] memAddr; // Data memory Address 
    wire [63:0] memWriteData; // Data wrote to data memory
    wire  MemWrite; // control signal
    wire  MemRead; // control signal\
    
    Datapath datapath(clk,rst,ins_Addr,ins,memAddr, memWriteData, memReadData, MemWrite, MemRead,
     rReadSelect1, rReadSelect2, rWriteSelect, rWriteData, rWriteEnable, rReadData1, rReadData2);
    
    always begin
        clk = 0; #2; clk = 1; #2;
    end
    
    initial begin
        rst = 1;
        #20 rst = 0; 
    end
    
endmodule
