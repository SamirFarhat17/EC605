`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 07:51:20 PM
// Design Name: 
// Module Name: PC_Counter
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


module PC_Counter(
    input clk,
    input rst,
    input zero_flag,
    input [63:0] extended,
    input [10:0] opcode,
    output reg [63:0] pc
    );
    
    reg [63:0] extended_shift;
        
    always @ (posedge clk) begin
      if (rst)
        pc <= 64'h0;
      else if (opcode == 11'h0A0 || (opcode == 11'h5A0 && zero_flag))  begin
        pc <= pc + (extended << 2'b10);
      end
      else 
        pc <= pc + 1'b1;
    end

    
endmodule