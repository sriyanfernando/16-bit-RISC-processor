module InstructionMemory(out, insAddr); //model for instruction memory

	input [15:0] insAddr;
	output [15:0] out;
	
	reg [15:0] out;
	reg[15:0] ins[15:0];
	
	always @*
	assign out = ins[insAddr];
	
endmodule