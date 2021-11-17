`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 07:06:19 PM
// Design Name: 
// Module Name: ALU_testbench
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


module ALU_testbench(

    );
    
    reg [63:0] A, B;
    reg [3:0] opcode;
    
    wire [63:0] out;
    wire zero;
    
    ALU my_alu(.opcode(opcode), .A(A), .B(B), .out(out), .zero(zero));
    
    initial begin
        A = 0;
        B= 0;
        opcode = 4'b0001;
        
        #10 A = 64'hF0F0;
        #10 B = 64'h0F0C;
        
        #10 opcode = 4'b0010;
        #10 opcode = 4'b0011;
        #10 opcode = 4'b0100;
        #10 opcode = 4'b0101;
        
        #10 
        opcode = 4'b0111;
        #10
        A = 64'hAAAA;
        B = 64'hAAAA;
        
        #10 
        opcode = 4'b0110;
        A = 64'hA050;
        B = 64'h0B0C;
     
        #10 
        opcode = 4'b1000;
        A = 64'hABCD;
        B = 64'h89A7;
    end
endmodule
