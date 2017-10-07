// module for control unit

module CU(opcode, regDest, jump, branch, memRead, memToReg, ALUOp, memWrite, ALUSrc,regWrite);
	input [3:0] opcode;
	output regDest, jump, branch, memRead, memToReg, memWrite, ALUSrc, regWrite;
	output [2:0]  ALUOp;
	
	wire [3:0] opcode;
	reg regDest, jump, branch, memRead, memToReg, memWrite, ALUSrc, regWrite;
	reg [2:0]  ALUOp;
	
	// regDest, jump, branch, memToReg, ALUSrc used as mux signal selectors
	//  memRead, memWrite, regWrite used as signals to data memory, data memory
	// and register file respectively
	
	always @*
	
	if(opcode == 4'b0010)  // add
	begin
		ALUOp = 3'b000;
		regWrite = 1'b1;
		regDest = 1'b0;
		memToReg = 1'b0;
	end
	else if(opcode == 4'b0110)  //  sub
	begin
		ALUOp = 3'b001;
		regWrite = 1'b1;
		regDest = 1'b0;
		memToReg = 1'b0;
	end
	else if(opcode == 4'b0000)  // and 
	begin
		ALUOp = 3'b010;
		regWrite = 1'b1;
		regDest = 1'b0;
		memToReg = 1'b0;
	end
	else if(opcode == 4'b0001)  // or
	begin
		ALUOp = 3'b100;
		regWrite = 1'b1;
		regDest = 1'b0;
		memToReg = 1'b0;
	end
	else if(opcode == 4'b0111)  // slt
	begin
		ALUOp = 3'b001;
		regWrite = 1'b1;
		regDest = 1'b0;
	end
	else if(opcode == 4'b1000)  // lw
	begin
		ALUOp = 3'b000;
		memRead = 1'b1;
		regWrite = 1'b1;
		regDest = 1'b1;
		memToReg = 1'b1;
	end
	else if(opcode == 4'b1010)  // sw
	begin
		ALUOp = 3'b000;
		memWrite = 1'b1;
		regDest = 1'b1;
		memToReg = 1'b0;
	end
	else if(opcode == 4'b1110)  // bne
	begin
		ALUOp = 3'b001;
		branch = 1'b1;
		regDest = 1'b1;
	end
	else if(opcode == 4'b1111)  // jmp
	begin
		ALUOp = 3'b000;
		jump = 1'b1;
		regDest = 1'b1;
	end
endmodule
