`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 08:25:18 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
    input clk,
    input rst
    );
    
    reg [63:0] alu_output;
    reg [63:0] extended_and_shifted;
    reg [10:0] opcode;
    reg [63:0] pc;
    reg [63:0] address;
    reg [31:0] read_data_1;
    reg [31:0] read_data__2;
    
    reg [31:0] instr;
    reg reg_write;
    reg mem_write;
    reg mem_read;
    reg mem2reg;
    reg alu_src;
    
    reg [3:0] alu_opcode;
    reg [63:0] A;
    reg [63:0] B;
    reg zero_flag;
    
    reg [63:0] mem_out;
    
    reg [4:0] reg_A;
    reg [4:0] reg_B;
    reg [63:0] immediate;
    
    reg [63:0] write_data;
    reg [63:0] read_data_2;
    
    PC_Counter pc(.clk(clk), .rst(rst), .alu_output(alu_output), .extended_and_shifted(extended_and_shifted),
                  .opcode(opcode), .pc(pc));
    
    Instruction_Memory ins_mem(.Address(address), .ReadData1(read_data_1));
    
    instr_parse(.instr(instr), .Read_data_1(reg_A), .Read_Data_2(reg_B), .immediate(immediate));
    
    Control_Unit control(.instr(instr), .mem_write(mem_write), .mem_read(mem_read), .mem2reg(mem2reg), .ALUSrc(alu_src));
    
    Register_File registers(.clk(clk), .rst(rst), .ReadSelect1(read_data_1), .ReadSelect2(read_data__2), .WriteSelect(reg_write), 
    .WriteData(write_data), .WriteEnable(mem_write), .ReadData1(A), .ReadData2(B));
    
    ALU alu(.opcode(alu_opcode), .A(A), .B(B), .out(alu_output), .zero(zero_flag));
    
    Data_Mem memory_file(.clk(clk), .rst(rst), .Address(alu_output), .WriteData(B), .WriteEnable(mem_write),
                         .ReadEnable(mem_read), .ReadData(mem_out));
    
    MUX mux(.data(mem_out), .immediate(read_data_2), .flag(mem2reg), .out(write_data));
    
    
endmodule
