module REG16BIT;

// This creates an array of four 16 bit registers
reg [15:0] REG4BIT[3:0];

integer i;

initial
begin
	//write to each register
	for(i=0;i<4;i=i+1)
	begin
		#5 REG4BIT[i] = i[15:0];
		$display(REG4BIT[i]);
	end
end

endmodule