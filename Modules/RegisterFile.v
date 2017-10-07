
module RegisterFile(A, B, Aaddr, Baddr, Caddr, C, load, clk, clrbar); //16*16 register file
	
	input load, clk, clrbar;
	input [3:0] Aaddr, Baddr, Caddr;
	output [15:0] A, B;
	output [15:0] C;
	
	reg[15:0] REG16BIT[15:0];
	
	wire wrenable;
	integer i;
	reg [15:0] A, B;
	reg[3:0] num;
	
	reg[3:0] Cadder;
	
	always @*
	
	begin
	num = C;
	
	assign A = REG16BIT[Aaddr];
	assign B = REG16BIT[Baddr];

	if(clk & load) REG16BIT[num] = C;
		
	if(~clrbar)
		begin
		for(i = 0 ; i < 16 ; i = i + 1)
			REG16BIT[i] = 0;
		end
	end
endmodule