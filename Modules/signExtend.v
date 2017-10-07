module signExtend(inp,out); //module for sign Extender
	input [11:0] inp;
	output [15:0] out;
	reg [15:0] intr;
	
	initial
		begin
		intr = inp;
		intr = intr << 1;
		end
	
	always @*
	begin
	if(inp < 0)
	begin
		intr[13] = 1'b1;
		intr[14] = 1'b1;
		intr[15] = 1'b1;
	end
	else
	begin
		intr[13] = 1'b0;
		intr[14] = 1'b0;
		intr[15] = 1'b0;
	end
	end
	
	assign out = intr;
endmodule
