module DataMemory( dataout, addr, datain, memRead, memWrite); //module for data memory
	
	reg [15:0] memAddr[16:0];
	
	input [16:0] addr;
	input [15:0] datain;
	input memRead, memWrite;
	output [15:0] dataout;
	reg [15:0] dataout;

	always @*
	begin
	
		if(memRead)
			memAddr[addr] = datain;
		else if(memWrite)
			assign dataout = memAddr[addr];
	end
endmodule
