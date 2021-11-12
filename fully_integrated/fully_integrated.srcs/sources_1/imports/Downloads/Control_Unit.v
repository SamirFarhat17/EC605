`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 04:26:04 PM
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
    input [31:0] instr,
    // flags
    output reg_write,
    output mem_write,
    output mem_read,
    output mem2reg,
    output ALUSrc
);

    always@(intr) begin
        case (instr[31:21])
            11'h7C0 : begin //STUR
                reg_write <= 1'b0;
                mem_read <= 1'b0;
                mem_write <= 1'b1;
                mem2reg <= 1'b1;
                ALUSrc <= 1'b1;
            end
            11'h7C2 : begin //LDUR
                reg_write <= 1'b1;
                mem_read <= 1'b1;
                mem_write <= 1'b0;
                mem2reg <= 1'b0;
                ALUSrc <= 1'b1;
            end
            default
            begin
                reg_write <= 1'b0;
                mem_write <= 1'b0;
                mem_read <= 1'b0;
                mem2reg <= 1'b0;
            end

        endcase
    end

endmodule