module ALU(out,zero,a,b,op); //module for the ALU
	input[15:0] a, b;
	input[2:0] op;
	output[15:0] out;
	output zero;
	reg[15:0] out;
	reg zero;
	
	always @*
	begin
	if(op == 3'b000) 
		out = a + b;
	else if(op == 3'b001) 
		begin
		out = a - b;
		if(out == 0)
			zero = 1'b1;
		end
	else if(op == 3'b010) 
		out = a & b;
	else if(op == 3'b011) 
		out = a | b;
	else if(op == 3'b100) 
		out = a << 1;
	end
endmodule
