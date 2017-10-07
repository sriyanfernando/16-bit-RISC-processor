include "ALU.v";
include "DataMemory.v";
include "InstructionMemory.v";
include "MUX4_1.v";
include "REG4BIT.v";
include "REG16BIT.v";
include "RegisterFile.v";
include "signExtend.v";
include "CU.v";
include "Clock.v";
include "ADDER.v";

module Datapath();
	
	reg [15:0] ins, insAddr, A, B, C, pc, ext, jmpAddr;
	reg [3:0] opcode;
	reg [3:0] reg1, reg2, res;
	reg [11:0] offset;
	reg jump, branch, memRead, memToReg, ALUOp, memWrite, ALUSrc,regWrite, zero;
	InstructionMemory inMem(ins, insAddr);
	
	mux_2X1Addr mreg(regDest, reg2, res, regFinal);
	mux_2X1 malu(ALUSrc, B, ext, jmpAddr);
	mux_2X1 mdata(select, a, b, q);
	mux_2X1 mpc(select, a, b, q);
	
	ADDER adpc(a,b,sum);
	ADDER adjmp(a,b,sum);
	
	CU cu(opcode, regDest, jump, branch, memRead, memToReg, ALUOp, memWrite, ALUSrc,regWrite);
	
	signExtend siex(offset,ext);
	
	ALU(C,zero,A,B,ALUOp); 
	
	Clock c(clk);
	
	RegisterFile(A, B, reg1, reg2, res, C, load, clk, clrbar);
	
	DataMemory( dataout, C, B, memRead, memWrite);
	always @(posedge clk) begin
		pc = pc + 2;
	end
		
	always @*
	
	begin	
		opcode = ins[15:12];
		reg1 = ins[11:8];
		reg2 = ins[7:4];
		res = ins[3:0];
		offset = ins[7:0];
	end	
	
	
	
	
	
	
	
endmodule
