`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2021 10:35:08 AM
// Design Name: 
// Module Name: top_module_testbench
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


module top_module_testbench();
    
    reg clk, rst;
    // intiialize top
    //$display("Initializing Top");
    top_module top(.clk(clk), .rst(rst));
    // clock management
    initial begin
        $display("Starting sim");
        clk = 0;
        rst = 1;
    end    
    initial begin
        #5 rst = 0;
        $display("Entering Region of Interest");
        #50 $finish;
        $display("Sim Terminated");
    end
    
    always begin
        #2 clk = ~clk;
    end
    
endmodule
