`timescale 1ns / 1ps

module ALU(
    input clk,
    input rst,
    input [10:0] opcode,
    input [63:0] A,
    input [63:0] B,
    output reg [63:0] out,
    output reg zero
    );
    
    always@(posedge clk,rst) begin
        if(rst) begin
            out <= 11'h000;
            zero <= 1'b0;
        end
     
        else begin
            case (opcode)
                11'h0A0: out <= A;
                11'h450: out <= A & B;
                11'h458: out <= A + B;
                11'h550: out <= A | B;
                11'h5A0: out <= CBNZ;
                11'h658: out <= A - B;
                11'h794: out <= MOVK;
                11'h7C0: out <= STUR;
                11'h7C2: out <= LDUR;
                default: out <= 11'h000;
            endcase     
            
            if(out == 64'b0) begin
                zero <= 1'b1;
                $display("zero but flag may not be read: %", opcode);
            end
            else begin
                zero <= 1'b0;
            end
        end     
    end
    
    
endmodule
