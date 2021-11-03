`timescale 1ns / 1ps

module ALU(
    input [3:0] opcode,
    input [63:0] A,
    input [63:0] B,
    output reg [63:0] out,
    output reg zero
    );
    
    always@(A, B, opcode) begin
        case (opcode)
            4'b0001: out <= A & B;
            4'b0010: out <= A | B;
            4'b0011: out <= ~out;
            4'b0100: out <= A;
            4'b0101: out <= B;
            4'b0110: out <= A + B;
            4'b0111: out <= A - B;
            4'b1000: out <= A ^ B;
            default: out <= 4'b0000;
        endcase     
        
        if(out == 64'b0) begin
            zero <= 1'b1;
            $display("here: %", opcode);
        end
        else begin
            zero <= 1'b0;
        end
    end
    
    
endmodule
