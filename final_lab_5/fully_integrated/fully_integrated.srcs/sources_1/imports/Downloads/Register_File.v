module Register_File(ReadSelect1, ReadSelect2, WriteSelect, WriteData, WriteEnable, ReadData1, ReadData2, clk, rst);

    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    input [$clog2(REGSIZE)-1:0] ReadSelect1, ReadSelect2, WriteSelect;
    input [BITSIZE-1:0] WriteData;
    input WriteEnable;
    output reg [BITSIZE-1:0] ReadData1, ReadData2;
    input clk, rst;

    reg [BITSIZE-1:0] reg_file [REGSIZE-1:0];   // Entire list of registers

    integer i;                                  // Used below to rst all registers

    // Asyncronous read of register file.
    always @(ReadSelect1, reg_file[ReadSelect1])
        begin
            ReadData1 = reg_file[ReadSelect1];
        end

    // Asyncronous read of register file.
    always @(ReadSelect2, reg_file[ReadSelect2])
        begin
            ReadData2 = reg_file[ReadSelect2];
        end

    // Write back to register file on clk edge.
    always @(posedge clk)
        begin
            if (rst)
                for (i=0; i<REGSIZE; i=i+1) reg_file[i] <= 'b0; // rst all registers
            else
            begin
                if (WriteEnable && WriteSelect != 31)
                    reg_file[WriteSelect] <= WriteData; //If writeback is enabled and not 0 register.
            end
        end
endmodule



// Populate registers
/*`timescale 1ns / 1ns
module Register_Data(Address, RegisterData); 

	input [4:0] RegisterAddress;
	output reg [63:0] RegisterData;
    reg [4:0] reg_file [0:63];

	// Asyncronous read of memory. Was not specified.
	always @(Address, reg_file[Address]) begin
		RegisterData = reg_file[Address];
	end

	integer i;
	//MY method of filling the memory instead of through a test bench
	initial begin
	   for(i = 0; i < 64; i=i+1) begin
           reg_file[i] <= 64'h6EDCBA9876543000 + 100 + i; 
       end
    end

endmodule
*/